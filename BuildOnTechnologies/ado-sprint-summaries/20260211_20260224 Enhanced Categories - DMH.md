# Sprint: Enhanced Categories - DMH

**Dates:** 2026-02-11 → 2026-02-24
**Items:** 63 total (6 stories, 1 bugs, 56 tasks)

**Completion:** 57 / 63 done

---

## Stories (Product Backlog Items)

### [3217] Elevation Required to Contract

**State:** Done | **Priority:** 2 | **Tags:** Jim; scripts; Tammy; TM Work

**Description:**

Recently some of our customers are having difficulty because their employees can't seem to select an elevation. It's not required, so I suppose that's on us. They have expressed that they want their users forced to select it.  

 
We should make this configurable by builder.

**Acceptance Criteria:**

New Feature Flag:  
Create a new feature flag with the following values:  
name: "Elevation Required to Contract"  
description: ""When ON Elevation is
required to contract a buyer, assuming elevations exist for this builder."  

 
Edit Profile Plan / Register Contract  
Given that a user is attempting to register a profile plan as contracted (using the button from edit user profile) or selects the "Contracted" status in edit profile plan dialog 
Elevation is required appears in the list of required fields in the left hand panel  
The user must choose an elevation from the list in the Job Information tab  
 Edge Cases:  
 
if a builder has no elevations defined, then this requirement is not enforced even if the flag is on  
 Regression Testing:  
test with flag off to ensure we can still contract plans  
test with flag on with a builder with no elevations; in this case the user should not be prompted to choose one

**Child Tasks (7):**

- [30708] (Done) @SamuelKlepper Create new feature flag
- [30709] (Done) Enforce the flag
- [30710] (Done) Check edge case of no elevations
- [30711] (Done) PR
- [30768] (Done) @WalterMartinez Write QA Tests
- [30769] (Done) @WalterMartinez Execute QA Tests
- [30770] (Done) @RobertHobbs PO Review

**Comments (3):**

> **Samuel Klepper** _
> 
> Completing Pull Request 10861 and the associated work items.

> **Samuel Klepper** _
> 
> Mentioned in !10861

> **Robert Hobbs** _
> 
> Note I am striking through the AC regarding exposure of elevations in register home buyer view

---

### [17922] Enhanced Categories: Design My Home (classic) sort order and category names

**State:** Done | **Priority:** 3 | **Tags:** enhanced categories

**Description:**

We want to add enhanced category support for VCMS customers in design my home  
 
Intent: this work item is intended to capture all functionality of supporting enhanced categories as well as existing design my home functionality.

**Acceptance Criteria:**

Given a builder setup with catalog in VCMS, both estimated and non-estimated items,  
some estimated items renamed from the Echelon category names,  
a sort order defined for most but not all items 
and the feature flag for "Support enhanced product categories" is ON  

 
the following areas support display of renamed categories and the defined sort order:  

 
room selections category navigation on left panel including estimated and non estimated items  
product category navigation  
 Properly display selection totals where appropriate in DMH navigational categories.  
 
 

 
Does not include Full Catalog View (different work item) 
Does not include all DMH dialogs that display product categories (different work item) 
Does not include DMH spending summary (different work item)

**Child Tasks (10):**

- [30719] (Done) Backend changes for respecting EC when loading nav menu
- [30720] (Done) Frontend changes for respecting EC when loading nav menu
- [30721] (Done) Respect EC when fetching items for room option selector
- [30722] (Done) Respect EC when fetching items for general option selector
- [30724] (Done) Verify selections and deselections can be made in room option selector
- [30725] (Done) Verify selections and deselections can be made in general option selector
- [30726] (Done) PR
- [30806] (Done) @WalterMartinez Write QA Tests
- [30807] (Done) @WalterMartinez Execute QA Tests
- [30808] (Done) @RobertHobbs PO Review

---

### [22071] Enhanced Categories: Design My Home spending summary

**State:** Done | **Priority:** 3 | **Tags:** enhanced categories

**Acceptance Criteria:**

Given that the feature flag that governs this feature is ON,  
and the builder has data configured in VCMS such that  
a sort order is defined for categories both estimated and non estimated  
and at least one category / subcategory is renamed...  
and some of these options are selected in design my home...  

 
Reid mentioned that the sort appears to be just price descending and not Rooms followed by Catalog etc.  

 
In the DMH spending summary: 
the sort order is preserved as total price by room or category descending  
categories are displayed renamed as in VCMS

**Child Tasks (6):**

- [30727] (Done) Do stuff to make category renames appear
- [30728] (Done) Do stuff to make sorting work
- [30729] (Done) PR
- [30809] (Done) @WalterMartinez Write QA Tests
- [30810] (Done) @WalterMartinez Execute QA Tests
- [30811] (Done) @RobertHobbs PO Review

---

### [26579] Enhanced Categories: Full Catalog View (DMH)

**State:** Done | **Priority:** 3 | **Tags:** enhanced categories; scripts

**Description:**

Many customers have requested improvements to our category navigation in VEO Design Studio.  
 
 
Generally they have asked for the following features:  
controlling the sort order of the categories without relying on numerals/ordinals  
renaming of categories from general terms used in catalogs to specific terms for the builder  
nested categories deeper than 2 levels  
show / hide prices optionally  
group by area vs group by categories  
  
For this work item we want to focus on the full catalog view of DMH  
sort order and category names in the navigation

**Acceptance Criteria:**

Given that the flag governing this feature is ON,  
and the builder is setup in VCMS  
with categories that are sorted  
and some categories which have been renamed...  (estimated stub)  
and is missing a definition in VCMS for at least one estimated category from echelon  
 
and the feature flag for "Support enhanced product categories" is ON 
 
the nav menu in the Full Catalog View of DMH supports features associated with enhanced categories such as:  
sort order defined for categories with default behavior for data that vds finds with no sort order defined  
renaming of categories such as estimated categories which map to Echelon data  
the display of pricing associated with selected categories 
as with other locations for this feature, if an estimated category exists but is not defined in VCMS then it appears in an alpha sort after the normal sorting of categories (products)  
  Regression Testing notes:  
existing functionality is supported such as (but not limited to)  
in the ca...

**Child Tasks (8):**

- [30712] (Done) Frontend changes for respecting EC when loading nav menu
- [30713] (Done) Respect EC when fetching items
- [30714] (Done) Verify selections and deselections can be made
- [30715] (Done) Backend changes for respecting EC when loading nav menu
- [30717] (Done) PR
- [30803] (Done) @WalterMartinez Write QA Tests
- [30804] (Done) @WalterMartinez Execute QA Tests
- [30805] (Done) @RobertHobbs PO Review

**Comments (1):**

> **Daniel Arwe** _
> 
> Script attached for backfilling columns with appropriate values:
> [SetHasNonEstimatedOptionsAndHasEstimatedOptionsFlags.sql](https://dev.azure.com/BuildOnTechnologies/ddde192e-e31e-4e51-af4b-3b7b4221266a/_apis/wit/attachments/1e072ff3-f337-4574-b931-9ca87b1a0826?fileName=SetHasNonEstimatedOptionsAndHasEstimatedOptionsFlags.sql&download=true)

---

### [30303] Misc PO Activities

**State:** In Dev | **Assignee:** Robert Hobbs | **Priority:** 3

**Description:**

This work item is a holding place for misc work from production so that the PO can surface a portion of the activities that distract from new feature development.

**Child Tasks (16):**

- [30316] (In Progress) @RobertHobbs draft work item for hangfire and other SQL connection improvements
- [30345] (To Do) @RobertHobbs Examine legacy selections report usage and current appearance
- [30436] (Done) @RobertHobbs draft work item for wonky buyer experience behavior
- [30451] (Done) @RobertHobbs draft work item for VCMS data issue for address specific plan
- [30478] (Done) @RobertHobbs Track down feature flag use
- [30527] (Done) @RobertHobbs product review meeting - january
- [30528] (Done) @RobertHobbs compile questions related to lot designation TM integration
- [30529] (To Do) @RobertHobbs sketch out attributes work items (epics, features etc)
- [30579] (Done) @RobertHobbs sketch out VEO intelligence integration
- [30596] (Done) @RobertHobbs draft communication to biorev about image size
- [30598] (Done) @RobertHobbs Write a SQL report for Tammy auditing WBS users in VEO with their roles and access info
- [30603] (To Do) @RobertHobbs Get search across categories estimated
- [30604] (Done) @RobertHobbs update Taylor Morrison project status spreadsheet
- [30670] (To Do) Verify nav category totals issue
- [30676] (Done) @RobertHobbs Newmark issue in Teams from jim
- [30677] (Done) @RobertHobbs Catch up on Andy's lot designation email

---

### [30690] RC for 02/16

**State:** Done | **Assignee:** Reid Wilson | **Priority:** 3

**Child Tasks (6):**

- [30685] (Done) @ReidWilson Create and deploy RC
- [30686] (Done) @ReidWilson Deployment Planning Meeting
- [30687] (Done) Run e2e automated test in Staging
- [30688] (Done) Test RC in Staging
- [30737] (Done) @DanielArwe Bug: Selecting Category Twice Clears Sub-Cat. Dropdown
- [30738] (Done) @DanielArwe PR

**Comments (1):**

> **Justin Pope** _
> 
> Copied with all attachments and links from #30446

---

## Bugs

### [30693] Research: Newmark duplicate subcategory

**State:** Done | **Priority:** 2 | **Tags:** Find the bug; No Code Change; No QA

**Repro Steps:**

here is a video of what is going on in DMH and the Main Bath area.  All my data looks right although I am sure there is something we cannot see. 
This is for Newmark Homes  EPP Stack 
a3369d16-aa03-418d-b536-feaeb279a17e 
 20260203-1422-03.7463053.mp4

**Child Tasks (3):**

- [30702] (Done) Check Data
- [30703] (Done) Tell Jim to fix
- [30704] (Done) Document findings

**Comments (1):**

> **Justin Pope** _
> 
> @[VeoDesignStudio]\VeoDesignStudio Team
> 
> This issue has happened now twice. The plan area for the particular builds (Floor Wood, Floor Vinyl Plank, Floor Tile in this example) did not match on sub_area_id. In VDS, this can be releaved on our end within the GetRoomOptions useCase:
> lines 110-137
>             _roomOptions = builds
>                 .Where(b => !b.IsCredit && !b.IsAllStandardAreaBuild && b.RoomId != null)
> 
>                 .GroupBy(b => new { b.RoomName, b.RoomId, b.IconId, b.ApplicationId, b.Application, b.ProductId, b.Product, b.AreaId, b.SubAreaId })
> 
>                 .Select(g => n...

---

