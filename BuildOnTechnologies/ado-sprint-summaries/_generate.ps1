param([string]$OutDir = "C:\github\botdevjustinpope\ado-sprint-summaries")

function Strip-Html {
    param([string]$html)
    if (-not $html) { return "" }
    $t = $html -replace '<br\s*/?>', "`n" -replace '</p>', "`n" -replace '</div>', "`n" -replace '</li>', "`n"
    $t = $t -replace '<[^>]+>', ''
    $t = [System.Net.WebUtility]::HtmlDecode($t)
    $t = $t -replace '\r\n', "`n" -replace '\n{3,}', "`n`n"
    return $t.Trim()
}

function Truncate {
    param([string]$s, [int]$n = 800)
    if (-not $s) { return "" }
    if ($s.Length -le $n) { return $s }
    return $s.Substring(0, $n) + "..."
}

function Safe-Filename {
    param([string]$s)
    $s = $s -replace '[\\/:*?"<>|]', '-'
    return $s.Trim()
}

Write-Host "Loading data..."
$iters = Get-Content "$OutDir\_iterations.json" -Raw | ConvertFrom-Json
$iterWorkItems = Get-Content "$OutDir\_iteration_workitems.json" -Raw | ConvertFrom-Json
$allItems = Get-Content "$OutDir\_workitems_full.json" -Raw | ConvertFrom-Json
$comments = Get-Content "$OutDir\_comments.json" -Raw | ConvertFrom-Json

$byId = @{}
foreach ($w in $allItems) { $byId["$($w.id)"] = $w }

$indexLines = @("# VeoDesignStudio Team - Sprint Summaries", "", "**Scope:** September 2024 onwards ($($iters.Count) sprints, $($allItems.Count) work items)", "", "_Generated $(Get-Date -Format 'yyyy-MM-dd')_", "", "## Sprints", "")

foreach ($it in ($iters | Sort-Object { $_.start })) {
    $sprintName = $it.name
    $ids = $iterWorkItems.$sprintName.workItemIds
    if (-not $ids) { continue }
    $items = $ids | ForEach-Object { $byId["$_"] } | Where-Object { $_ }
    if ($items.Count -eq 0) { continue }

    $stories = @($items | Where-Object { $_.fields.'System.WorkItemType' -eq 'Product Backlog Item' })
    $bugs = @($items | Where-Object { $_.fields.'System.WorkItemType' -eq 'Bug' })
    $tasks = @($items | Where-Object { $_.fields.'System.WorkItemType' -eq 'Task' })

    $tasksByParent = @{}
    foreach ($t in $tasks) {
        $p = $t.fields.'System.Parent'
        if ($p) { if (-not $tasksByParent["$p"]) { $tasksByParent["$p"] = @() }; $tasksByParent["$p"] += $t }
    }

    $safeName = Safe-Filename $sprintName
    $startCompactFn = ($it.start -is [datetime] ? $it.start.ToString('yyyyMMdd') : ($it.start.Substring(0,10) -replace '-',''))
    $finishCompactFn = ($it.finish -is [datetime] ? $it.finish.ToString('yyyyMMdd') : ($it.finish.Substring(0,10) -replace '-',''))
    $fname = "${startCompactFn}_${finishCompactFn} $safeName.md"
    $path = "$OutDir\$fname"

    $startStr = if ($it.start -is [datetime]) { $it.start.ToString('yyyy-MM-dd') } else { $it.start.Substring(0,10) }
    $finishStr = if ($it.finish -is [datetime]) { $it.finish.ToString('yyyy-MM-dd') } else { $it.finish.Substring(0,10) }
    $md = @()
    $md += "# Sprint: $sprintName"
    $md += ""
    $md += "**Dates:** $startStr → $finishStr"
    $md += "**Items:** $($items.Count) total ($($stories.Count) stories, $($bugs.Count) bugs, $($tasks.Count) tasks)"
    $md += ""
    $doneCount = @($items | Where-Object { $_.fields.'System.State' -eq 'Done' }).Count
    $md += "**Completion:** $doneCount / $($items.Count) done"
    $md += ""
    $md += "---"
    $md += ""

    if ($stories.Count -gt 0) {
        $md += "## Stories (Product Backlog Items)"
        $md += ""
        foreach ($s in ($stories | Sort-Object { $_.id })) {
            $f = $s.fields
            $md += "### [$($s.id)] $($f.'System.Title')"
            $md += ""
            $attrs = @()
            $attrs += "**State:** $($f.'System.State')"
            if ($f.'System.AssignedTo') { $attrs += "**Assignee:** $($f.'System.AssignedTo'.displayName)" }
            if ($f.'Microsoft.VSTS.Scheduling.StoryPoints') { $attrs += "**Points:** $($f.'Microsoft.VSTS.Scheduling.StoryPoints')" }
            if ($f.'Microsoft.VSTS.Common.Priority') { $attrs += "**Priority:** $($f.'Microsoft.VSTS.Common.Priority')" }
            if ($f.'System.Tags') { $attrs += "**Tags:** $($f.'System.Tags')" }
            $md += ($attrs -join " | ")
            $md += ""
            $desc = Strip-Html $f.'System.Description'
            if ($desc) { $md += "**Description:**"; $md += ""; $md += (Truncate $desc 1200); $md += "" }
            $ac = Strip-Html $f.'Microsoft.VSTS.Common.AcceptanceCriteria'
            if ($ac) { $md += "**Acceptance Criteria:**"; $md += ""; $md += (Truncate $ac 1000); $md += "" }

            $children = $tasksByParent["$($s.id)"]
            if ($children) {
                $md += "**Child Tasks ($($children.Count)):**"
                $md += ""
                foreach ($c in ($children | Sort-Object { $_.id })) {
                    $asg = if ($c.fields.'System.AssignedTo') { " @$($c.fields.'System.AssignedTo'.displayName -replace ' ','')" } else { "" }
                    $md += "- [$($c.id)] ($($c.fields.'System.State'))$asg $($c.fields.'System.Title')"
                }
                $md += ""
            }

            $cList = $comments."$($s.id)"
            if ($cList -and $cList.Count -gt 0) {
                $md += "**Comments ($($cList.Count)):**"
                $md += ""
                foreach ($cm in $cList) {
                    $txt = Truncate (Strip-Html $cm.text) 600
                    $date = if ($cm.createdDate) { ([datetime]$cm.createdDate).ToString('yyyy-MM-dd') } else { '' }
                    $md += "> **$($cm.createdBy)** _$date_"
                    $md += "> "
                    $md += (($txt -split "`n") | ForEach-Object { "> $_" }) -join "`n"
                    $md += ""
                }
            }
            $md += "---"
            $md += ""
        }
    }

    if ($bugs.Count -gt 0) {
        $md += "## Bugs"
        $md += ""
        foreach ($b in ($bugs | Sort-Object { $_.id })) {
            $f = $b.fields
            $md += "### [$($b.id)] $($f.'System.Title')"
            $md += ""
            $attrs = @()
            $attrs += "**State:** $($f.'System.State')"
            if ($f.'System.AssignedTo') { $attrs += "**Assignee:** $($f.'System.AssignedTo'.displayName)" }
            if ($f.'Microsoft.VSTS.Common.Priority') { $attrs += "**Priority:** $($f.'Microsoft.VSTS.Common.Priority')" }
            if ($f.'System.Tags') { $attrs += "**Tags:** $($f.'System.Tags')" }
            $md += ($attrs -join " | ")
            $md += ""
            $repro = Strip-Html $f.'Microsoft.VSTS.TCM.ReproSteps'
            $desc = Strip-Html $f.'System.Description'
            if ($repro) { $md += "**Repro Steps:**"; $md += ""; $md += (Truncate $repro 1000); $md += "" }
            elseif ($desc) { $md += "**Description:**"; $md += ""; $md += (Truncate $desc 1000); $md += "" }

            $children = $tasksByParent["$($b.id)"]
            if ($children) {
                $md += "**Child Tasks ($($children.Count)):**"
                $md += ""
                foreach ($c in ($children | Sort-Object { $_.id })) {
                    $asg = if ($c.fields.'System.AssignedTo') { " @$($c.fields.'System.AssignedTo'.displayName -replace ' ','')" } else { "" }
                    $md += "- [$($c.id)] ($($c.fields.'System.State'))$asg $($c.fields.'System.Title')"
                }
                $md += ""
            }

            $cList = $comments."$($b.id)"
            if ($cList -and $cList.Count -gt 0) {
                $md += "**Comments ($($cList.Count)):**"
                $md += ""
                foreach ($cm in $cList) {
                    $txt = Truncate (Strip-Html $cm.text) 600
                    $date = if ($cm.createdDate) { ([datetime]$cm.createdDate).ToString('yyyy-MM-dd') } else { '' }
                    $md += "> **$($cm.createdBy)** _$date_"
                    $md += "> "
                    $md += (($txt -split "`n") | ForEach-Object { "> $_" }) -join "`n"
                    $md += ""
                }
            }
            $md += "---"
            $md += ""
        }
    }

    $orphanTasks = @($tasks | Where-Object {
        $p = $_.fields.'System.Parent'
        (-not $p) -or (-not ($ids -contains [int]$p))
    })
    if ($orphanTasks.Count -gt 0) {
        $md += "## Orphan Tasks (no parent in this sprint)"
        $md += ""
        foreach ($t in ($orphanTasks | Sort-Object { $_.id })) {
            $asg = if ($t.fields.'System.AssignedTo') { " @$($t.fields.'System.AssignedTo'.displayName -replace ' ','')" } else { "" }
            $md += "- [$($t.id)] ($($t.fields.'System.State'))$asg $($t.fields.'System.Title')"
        }
        $md += ""
    }

    $md -join "`n" | Out-File -FilePath $path -Encoding utf8
    Write-Host "  Wrote $fname ($($items.Count) items)"

    $indexLines += "- [$sprintName]($fname) — $startStr to $finishStr ($($items.Count) items: $($stories.Count)S / $($bugs.Count)B / $($tasks.Count)T)"
}

$indexLines -join "`n" | Out-File -FilePath "$OutDir\README.md" -Encoding utf8
Write-Host "Wrote index: README.md"
