# Sprint: Branding Theme Editor 2

**Dates:** 2025-01-29 → 2025-02-11
**Items:** 33 total (6 stories, 2 bugs, 25 tasks)

**Completion:** 33 / 33 done

---

## Stories (Product Backlog Items)

### [19238] Branding Theme Configuration: Simplified Theme Variables Editor

**State:** Done | **Assignee:** Justin Pope | **Priority:** 1 | **Tags:** branding; handoff mtg; scripts

**Description:**

We have over 250 theme variables that have come out of just naming things in the UI with something unique. Many of them will share values or be assigned to others. We want to simplify the set of managed variables to a low a set as possible and still style the site.  
 
One way to do this is to examine what we have so far for re-used variable values and extrapolate those into generic or themed variable names at a higher level.  
 
So for example we might have a palette of 5 colors (max) for a theme. Color1 Color2 Color3 Color4 Color5. Or, we might define a few primary colors like Color1 Color2 and then Accent1 Accent2 etc. We might also have one for selected elements: HighlightColor or DisabledColor. I would like to target a set of 20 variables to start with (less is better).  
 
Then we create a map that groups up the lower UI elements into these higher order variables.  
 
Color1 is applied to ui-variables1, 2, 5, 23 , 89 etc. We could also cull the detailed variables and replace them with this simplified set thereby reusing them if that's easier to maintain.  
 
Once we have this mapping for lack of a better word, we can modify the editor to support it.  
 
Right now I am thinkin...

**Acceptance Criteria:**

Using the output variable and element lists, as well as the UX mockup from Story 19011 (Branding Theme configuration: variable simplification - Part 1)
 
 
 
 
 
 
implement a mapping or grouping mechanism that creates relationships between the end user variables and the lower level css variables  
these relationships should be defined in the database so that they are malleable 
these relationships should match those inside the Trello board which Reid created at link:  https://trello.com/b/37jt55Ix (Reid has said to reach out to him if you do not have access) 
 update the editor to support display and editing these end user variables such that when a value is applied, it applies it to all lower level css variables related to that variable  
by default the lower level css variables are not displayed  
 the user has a mechanism to either update all variables when they change a top-level variable value (TLV) or leave overridden variables as is  
QA/Validation:  
all existing themes will n...

**Child Tasks (10):**

- [21534] (Done) @WalterMartinez write QA tests
- [21535] (Done) @WalterMartinez execute QA tests
- [21536] (Done) @JustinPope Defect: Add/Expand button same
- [21580] (Done) @JustinPope Defect: can't see icon
- [21582] (Done) @JustinPope Defect: confim save layout
- [21583] (Done) @JustinPope Defect: usable areas of screen very small
- [21584] (Done) @JustinPope Defect: row falling off right side
- [21585] (Done) @WalterMartinez execute tests 2
- [21614] (Done) @JustinPope Defect: The counter of items to be changed is not accurate.
- [21615] (Done) @JustinPope Defect: Different tag is displayed when interacting with variables that has a group value.

**Comments (15):**

> **Robert Hobbs** _
> 
> @Jennifer Hickey @Joe Ebeling @Daniel Arwe @Reid Wilson @Justin Pope @Eric Hickey @Walter Martinez 
> 
> Jennifer Wrote: Currently, for Flintock, there are very few common variables within each group. For example, a group of 8 may have 2 unique and 6 different.
> 
> Can we speculate on how best to handle Flintrock under this structure? My understanding at this point is that we will be scripting the current values but the group level (palette) level variables are not so helpful, but the site will still function as-is. Does this mean we need to refactor their values into workable groups as a defined eff...

> **Jennifer Hickey** _
> 
> Putting my thoughts in words to discuss, if needed, after @Robert Hobbs  has seen the UI/workflow.
> 
> Looking at the work for the simplified theme editor, I believe we have missed the mark meeting the intended business value. The editor itself is doing what was asked. There are groups and a value can be set for all children in that group, but using the groupings as defined on the trello board does not allow us to meet the business need outlined in the current story. It says "We have over 250 theme variables that have come out of just naming things in the UI with something unique. Many of them wi...

> **Jennifer Hickey** _
> 
> @Daniel Arwe @Robert Hobbs @Reid Wilson @Walter Martinez @Justin Pope @Joe Ebeling @Charlie Bradley III @Eric Hickey 
> Here is a NOT comprehensive list of areas QA will focus on when testing this story. We're working on test cases as normal
> 
> feature flag ON:
> group variable
> 
> - when has unique variable applied to all children (except those overridden). Confirm in VDS UI
> 
> - when new theme, uses default applied to all children. Group variable not applied. . Confirm in VDS UI
> - X clears an input, is not saved
> 
> - leave view when unsaved changes doesn't save them
> - Save changes by double confirmation ...

> **Daniel Arwe** _
> 
> @Jennifer Hickey @Robert Hobbs @Reid Wilson @Walter Martinez @Justin Pope @Joe Ebeling @Charlie Bradley III @Eric Hickey 
> Spot checking is fine with us devs and would provide an adequate level of assurance that all is behaving as expected.  We also don't want the testing effort to inflate the score on the story.  To that end, as developers, we are also testing as development continues, so we feel that the risk of breaking changes is relatively low.
> 
> Also, @Robert Hobbs, to reiterate what we discussed in standup, we have a script to migrate values from the old to the new data structures, so we ...

> **Jennifer Hickey** _
> 
> @Robert Hobbs @Reid Wilson @Walter Martinez @Daniel Arwe @Justin Pope @Joe Ebeling @Charlie Bradley III @Eric Hickey 
> 
> Test Stragegy was discussed at grooming and in a conversation below and the team wanted limited spot checking between the UI and the trello board. The plan discussed at refinement was to select 5-10 css variables and ensure they are set correctly in the UI. We also planned to change a couple of group level and a couple of lower level variables and ensure the change appeared in the UI. As Reid mentioned below, the idea was that "Checking several relationships across a couple gr...

> **Robert Hobbs** _
> 
> @Reid Wilson @Jennifer Hickey @Walter Martinez @Daniel Arwe @Justin Pope @Joe Ebeling @Charlie Bradley III @Eric Hickey 
> 
> Separate from validating that the editor works properly and the variables exist from the script in the DB I have some concerns about making sure with a release we don't break TM and Flintrock's theme, not to mention default. Maybe that's already been thought about, but if not we should probably discuss how to do that.

> **Reid Wilson** _
> 
> @Jennifer Hickey @Robert Hobbs @Walter Martinez @Daniel Arwe @Justin Pope @Joe Ebeling @Charlie Bradley III @Eric Hickey
> 
> Justin, Daniel, and I are in consensus with my following response.
> 
> We agree with your comment about the handoff meeting (live demo). We will put something on the calendar closer to when we think we are otherwise ready for PR.
> 
> Regarding your comment about the mapping relationships, I have updated the AC to indicate that the relationships in the DB should match those found in the Trello board which I created. Please reach out to me if you do not yet have access. Regarding p...

> **Jennifer Hickey** _
> 
> @Robert Hobbs  @Walter Martinez  @Reid Wilson @Daniel Arwe @Justin Pope @Joe Ebeling @Charlie Bradley III @Eric Hickey
> As this is a large story and will set the groundwork for all future theme stories, QA requests a handoff mtg - a live demo BEFORE pr where issues can be identified and addressed early (earlier than pr is better). Dev, please put a 30min mtg on the calendar with Walter and Jennifer once this story is ready for pr.

> **Jennifer Hickey** _
> 
> @Robert Hobbs  @Walter Martinez  @Reid Wilson @Daniel Arwe @Justin Pope @Joe Ebeling @Charlie Bradley III @Eric Hickey 
> I see that the AC specifies a mapping/grouping is implemented in the DB. I don't see documentation of the expected groupings as part of this user story. What testing was planned to verify that the mappings in the DB are correct/desired?

> **Robert Hobbs** _
> 
> @Jennifer Hickey Ah apologies, I introduced these acronyms in the scripting story that we scored but should have copied that here. TLV = top level variable (parent variable).

> **Jennifer Hickey** _
> 
> @Robert Hobbs  in this bullet: the user has a mechanism to either update all variables when they change a TLV or leave overridden variables as is
> TLV means what??

> **Jennifer Hickey** _
> 
> @Walter Martinez 
> My thoughts on testing:
> Test these scenarios in current themes:
> when change a low level variable in a group, it does NOT effect the whole group.
> when change an end user variable, user can choose to update only low level variables that match the group or to change all.
> If select only matching, then only matching change
> if select all, then non-matching are also changed
> when change an end user variable, If there are no overriden low level variable, is the user still asked what to change????

> **Robert Hobbs** _
> 
> Trello board with variables: https://trello.com/b/37jt55Ix
> It would be ideal to find a way to export this so that a SQL script can be generated.

> **Robert Hobbs** _
> 
> You can find a proposed UI workflow here: 
> https://www.figma.com/proto/90RvCD3SpyTiWK4IE6VnO3/Theme-editor?node-id=12-11&p=f&t=QAuo7azDuruVmWli-1&scaling=scale-down-width&content-scaling=fixed&page-id=0%3A1&starting-point-node-id=12%3A11

> **Joe Ebeling** _
> 
> @Robert Hobbs : please review and update based on discussion from Sprint Planning meeting.

---

### [20384] Refactor font to support general font attributes

**State:** Done | **Assignee:** Reid Wilson | **Priority:** 2 | **Tags:** branding; No QA

**Description:**

While working on the Stylecraft theme, the users asked me how they can designate a different font and also how to specify a font-weight attribute of bold.  

 
Right now, it appears that font-main maps only to font-family rather than being general purpose font css.

**Acceptance Criteria:**

refactor how the font variables work to support specification of more attributes related to the font in the site. Note: the ideal scenario is a single css line using font shorthand syntax like this:  
font: italic small-caps bold 1.2em/1.5 "Helvetica Neue", sans-serif; 
however, if that's not feasible and we need a few font-related categories (parent variables) with discrete properties then I suppose that's ok as long as they are well named  
 provide guidance to which font families we support as-is and speculate creatively on how we can support additional fonts for themes via the editor  
investigate whether we can support all web-safe fonts (as well as intentional downloaded fonts)

**Child Tasks (3):**

- [21431] (Done) @RobertHobbs PO Review
- [21439] (Done) @ReidWilson Refactor the font variable
- [21440] (Done) @ReidWilson PR Review

**Comments (3):**

> **Reid Wilson** _
> 
> @Robert Hobbs 
> 
> STORY DELIVERABLES
> 
> Discussion on single font property vs multiple font properties:
> Allowing the support user to set font weights gives him or her the ability to hose the site but also to fix it when it gets hosed. This is acceptable as long as their is a legitimate use case for it since there are a million other ways we allow support users to hose the site. However, we agreed there was not a legitimate use case for setting an overarching font weight. For the sake of knowledge-sharing, let's run through what Reid was thinking about if we did decide to allow setting font weight....

> **Reid Wilson** _
> 
> @Jennifer Hickey @Robert Hobbs @Walter Martinez 
> 
> This comment will serve as a summary of the output we had from the meeting on 2/10/25:
> 
> developer will comment on the discussion we had about multiple attributes for a single font variable as opposed to specifying multiple attributes separately
> product owner will give more thought to the subject of the first bullet point of the AC; also, we will consider in the future supporting multiple fonts; however, for now, we will not be making any code changes; thus, no QA responsibilities necessary
> developer will document as many web-safe fonts acceptab...

> **Jennifer Hickey** _
> 
> @Robert Hobbs @Reid Wilson @Walter Martinez 
> Documenting - question posed on how a new font can be added to the site without deployment.

---

### [21153] Branding Theme Configuration: Variable Relationship Script

**State:** Done | **Assignee:** Reid Wilson | **Priority:** 1 | **Tags:** branding; No QA

**Description:**

The primary idea for simplifying our theme variables from 250 to something more manageable for our support staff and customers is a parent->child relationship or grouping concept.  

 
The core idea is that you have some higher level variable such as: Primary Color and below it some related lower level css variables.  

 
Given the range of themes in our system it is a challenge to find a perfect simplification of these variables. With a developer working a sprint on this endeavor we still have unmapped variables and we have too many color groups that are not quite intuitive enough. As such, the groupings of these variables need to be redefined over time to produce a simpler system. This is expected.  

 
I want a script that can be run against the system to update these relationships. I do not want this defined in code and reliant upon deployments.  

 
Use cases for changing the relationships:  
renaming of top level variables  
moving lower level css variables from one group to another  
creation of a new top level variable  
moving lower level css variables from one group into this new group 
 creation of new low level css variables (in code of course)  
updating groups to incl...

**Acceptance Criteria:**

author a script based on current state of theme variable groups/parents and lower level css variables with the expectations that the relationships may be redefined based on aesthetic or theme decisions outside of deployment cadence (practically once a sprint, functionally anytime)  
the changes to the groupings, once run in an environment are reflected in the editor UI for theme variable values   
what happens when theme variables are moved from one group to another? I expect the users will give us guidance on what they need.  
These are my anticipations around it however (TLV = top level variable, CSS = lower level css variable)  
renaming of top level variables  
TLV  is renamed in editor  
 moving lower level css variables from one group to another  
if CSS variable has parent value, it takes on parent value of new TLV  
if css variable is overridden, it retains it's overridden value in new TLV 
 creation of a new top level variable  
new TLV appears in editor  
moving lower level c...

**Child Tasks (1):**

- [21183] (Done) @RobertHobbs PO Review

**Comments (2):**

> **Robert Hobbs** _
> 
> @Jennifer Hickey @Charlie Bradley III @Reid Wilson @Daniel Arwe @Joe Ebeling @Walter Martinez @Eric Hickey 
> 
> Jennifer, I think this is a good question. I will try to clarify my original intent. 
> 
> The groups and relationships should be global and for the most part a single source of truth based on our latest representation of how to theme the site. Right now it's imperfect (hence our conversations yesterday) and we want to go through a design / aesthetic effort (along with new variable creation) move to something more intuitive / simpler for everyone involved. 
> 
> So my original intent with the s...

> **Jennifer Hickey** _
> 
> @Robert Hobbs What are your plans with this script? Just you making changes to Preview? You'll be using it to make changes to Staging and Prod as well? Other people will be able to request changes anytime and they will be made?
> 
> After this script is run on any Stack in any enviornment, that stack/enviornment obviously will no longer have the same parent/child groups as current. Even within an environment, stacks can differ. QA will no longer be used as the "this is what everywhere visually looks like" test. What we expect in one environment will be different than every other environment/stack....

---

### [21283] Tech: stop/start app pools using stop/start script

**State:** Done | **Assignee:** Daniel Arwe | **Priority:** 2 | **Tags:** Tech

**Description:**

As a member of the deployment group, I need to ensure that the deployment isn't interrupted due to file locks.  In order to help mitigate this, we need to stop the services that create those file locks.

**Acceptance Criteria:**

Given that I am deploying any of the VDS sites to a production environment 
When I am stopping the sites to prepare for the deployment 
Then the AppPools for those sites should also be stopped 
i.e. Stop-WebAppPool -Name "YourAppPoolName" 

 
Given that I am deploying any of the VDS sites to a production environment 
When I am starting the sites to prepare for the conclusion of the deployment 
Then the AppPools for those sites should also be started 
i.e. Start-WebAppPool -Name "YourAppPoolName" 

 
Note: allocate effort to testing this in Staging, verify the indicated app pools are down, then come back up with the start script.   
Test a login after bringing the sites up.

**Child Tasks (7):**

- [21417] (Done) @DanielArwe Dev. discovery on current scripts
- [21418] (Done) @DanielArwe Research approach to start/stop app pools and resolve questions
- [21419] (Done) @DanielArwe Script Edits
- [21420] (Done) @DanielArwe Dev. Testing
- [21422] (Done) @DanielArwe Code review?
- [21429] (Done) @RobertHobbs PO Review
- [21430] (Done) @WalterMartinez Execute Tests

**Comments (13):**

> **Daniel Arwe** _
> 
> @Robert Hobbs, @Walter Martinez, @Jennifer Hickey The directory structure for the scripts in STAGING has been changed to match the structure in PROD, for consistency, like so...
> C:\VDS Deployment Utilities
> start_website.ps1
> stop_website.ps1
> Subscripts
> start_vds_sites.ps1
> stop_vds_sites.ps1
> start_vds_app_pools.ps1
> stop_vds_app_pools.ps1

> **Walter Martinez** _
> 
> Daniel walked me through the process, and we made sure it was all working as expected.

> **Daniel Arwe** _
> 
> @Jennifer Hickey, @Walter Martinez Story is ready for testing.  I have completed the following manual steps to get everything set up and ready to go for testing (Staging environment) and the next deployment (prod. environment).  Just to recap....
> 
> Staging
> Loaded all scripts into C:\VDS Deployment Utilities directory, overwriting old scripts (old scripts were broken and were not referencing correct sites, so they were not helpful to retain)
> Unblocked all script files using Unblock-File PowerShell command (see discussion for details)
> Ran stop_website.ps1 and start_website.ps1 scripts, via PowerS...

> **Daniel Arwe** _
> 
> @Eric Hickey, @Robert Hobbs This script has been added to the story, but does not need to be installed on the server.  It can be copy-pasted into and Admin. PowerShell terminal window and must be run prior to running the other stop and start scripts, since this script unblocks all the other script files, allowing them to be executed on the server.  I plan on running this on each production box once the the story clears testing, @Jennifer Hickey, @Walter Martinez, prior to the next deployment, as well as installing the scripts on each box, so the path is clear for running the updated stop and s...

> **Daniel Arwe** _
> 
> @Robert Hobbs, @Eric Hickey Updated scripts attached to story.  Note the comments for whether a specific script is prod. or staging, as the file names are the same.

> **Daniel Arwe** _
> 
> @Robert Hobbs, @Eric Hickey, as part of this work I also noticed this and rectified it on all production boxes as well as adding a line to the start_vds_sites.ps1 script, as discussed in this Teams chat with Eric....

> **Daniel Arwe** _
> 
> @Eric Hickey, @Robert Hobbs, @Jennifer Hickey, @Walter Martinez copying y'all on this note to get additional eyes on my thinking process here, since the setup in prod. differs slightly from Staging, to make sure I'm not missing anything.  Kind of a "you don't know what you don't know" failsafe measure, since this impacts deployments.  Thanks in advance for looking!
> 
> Scripts completed and tested for Staging.
> 
> Things learned for implementation in prod...
> 
> Check execution policy.  Unblock-file for all scripts involved in processes. I had to do this on both of the two servers running staging, so i...

> **Eric Hickey** _
> 
> @ If that's the case, then those app pool names will need to be discovered and added as well.
> 
> I don't know how to test this in lower environments, because this part of the deployment is manual and only performed on deployment night in production.

> **Robert Hobbs** _
> 
> @Eric Hickey Justin said we also have integration APIs we need to stop as well? 
> And how do we test this in lower environments?

> **Eric Hickey** _
> 
> @ We already use powershell to shut down each web site - by name.  I assumed they would add the script for each named app pool for each site.  Each site should have a unique app pool associated with it.

> **Robert Hobbs** _
> 
> @Eric Hickey Is it necessary to document which app pools on each server should be shut down or is that fairly straightforward by naming convention?

> **Eric Hickey** _
> 
> @ Done.

> **Robert Hobbs** _
> 
> @Eric Hickey do you have any notes you would like to add here?

---

### [21390] Regression Test: User Impersonation

**State:** Done | **Assignee:** Walter Martinez | **Priority:** 3 | **Tags:** QA only

**Description:**

This work is QA only and will prepare for the switch to Angular. A complete and detailed regression test will be built. Each story will be timeboxed to 4-5 hours of QA time per sprint.  

 
Additional Documentation is available here. This link will also be added in the Summary of each test case. 
VDS Regression Testing list.docx 

 
.net conversion suite: 
https://dev.azure.com/BuildOnTechnologies/VeoDesignStudio/_testPlans/define?planId=19710&suiteId=20046
 

 
regression test suite: 
https://dev.azure.com/BuildOnTechnologies/VeoDesignStudio/_testPlans/define?planId=4754&suiteId=19141

**Acceptance Criteria:**

Timebox = 4-5 hours 
Move User Impersonation tests from .net conversion test suite to regression test suite (links above) 
Separate tests into atomic test cases (each test case focuses on testing 1 thing, but concider not duplicating efforts within the suite) 
Update test cases to add specific UI info relevant to front end framework switch 
Add Summary to each test case 
Update documentation for the view 
VDS Regression Testing list.docx 
add API calls 
flags that effect view 
???

---

### [21406] Release 2/3

**State:** Done | **Priority:** 3 | **Tags:** No QA

---

## Bugs

### [21046] Track down cause of session completion error

**State:** Done | **Assignee:** Daniel Arwe | **Priority:** 2 | **Tags:** research

**Repro Steps:**

Email from Andy:  

 
A common error we see. 
  
From: operations@buildontechnologies.com
<operations@buildontechnologies.com>
Date: Friday, January 3, 2025 at 4:06 PM
To: Operations <operations@buildontechnologies.com>
Subject: Echelon-Reports Integration error 
Echelon Reports azure function encountered exception (WBS):
GenerateSessionCompletionReport(): The operation was canceled.
{"OrganizationId":"78d12721-c3d5-4067-9e89-9b4c32a8cda2","SessionId":"7d0e470c-e5bc-4344-89aa-8f985c93c66b","Stack":"wbs","StackApi":"http://integration.veodesignstudio.rest/","CreateDate":"2025-01-03T16:05:09.5773902-06:00"} 

 
See Andy about how to get to the processor for this.  

 
Session Complete (VDS)  
-> event to Domain Eventing -> stops  
-> event to azure service bus -> forwarding to vds integration API -> processing -> generates PDF

**Child Tasks (2):**

- [21425] (Done) @WalterMartinez Confirmation Testing
- [21627] (Done) @DanielArwe Investigate and determine cause

**Comments (3):**

> **Andrew Fry** _
> 
> @Daniel Arwe @Robert Hobbs @Reid Wilson @Roger Wang My team has looked into this. We believe the cause is long-running session reports. While the Azure function is listening, if the report takes too long, Azure will essentially kill the connection. On rare occasions, Azure will not kill the connection and the connection will time out. This is very similar, but gives different error message.
> 
> To combat the long runtime of the session report, we will be setting our timeout to 120 seconds. We have code to replace the Azure function in DEV and ready to be tested.

> **Daniel Arwe** _
> 
> @Robert Hobbs, @Reid Wilson  This is the dead-letter queue from Azure Service Bus.  This screenshot shows this happening fairly recently.  @Roger Wang, @Andrew Fry, are there any other sources of information that might give us more diagnostic information for tracking down the cause of this error?

> **Daniel Arwe** _
> 
> @Reid Wilson, @Robert Hobbs I did some preliminary digging into this and the code generating this email, with the sparse error information is located here:
> 
> C:\Users\daniela\source\repos\VeoDesignStudio\BuildOnTechnologies.VDS.SessionCompletionReport\Functions\HandleCompletedSessionReportGeneration.cs
> 
> The code in the catch block here seems to suggest the error is happening when the API request is made in GenerateSessionCompletionReport, in this file....
> C:\Users\daniela\source\repos\VeoDesignStudio\BuildOnTechnologies.VDS.SessionCompletionReport\Classes\VDSHelper.cs

---

### [21438] Incorrect price / odd behavior in Option Pricing

**State:** Done | **Assignee:** Reid Wilson | **Priority:** 2 | **Tags:** added; deployed 02/06/2025; hotfix; option pricing; production

**Repro Steps:**

Jim is reporting that for a Toll Brothers plan, option pricing is showing an incorrect price. Additionally I noticed that when clicking in cells more than one price level is being selected, and it's showing the incorrect price level.  

 
Here is the plan information:  

 
 

 
Here is a snapshot of pricing from Echelon - spec 7309  

 

 

 
Here is what is showing in VDS option pricing. The pricing is incorrect, and additionally when you select Granite Group 4 for the Hall Bath Vanity, it selects both that price level and Granite Group 1 (which is incorrect). The product samples view shows products for Granite Group 1.

**Child Tasks (2):**

- [21441] (Done) @ReidWilson Fix the issue OR explain why it is a data issue
- [22518] (Done) @WalterMartinez Execute Tests

**Comments (5):**

> **Walter Martinez** _
> 
> ✅QA Validation Completed! 
> 
> There is no additional column, there are no 'extra rows' selected when choosing a price = $0.00 
> PFA a short video about one of the tests covering both scenarios

> **Reid Wilson** _
> 
> @Jennifer Hickey @Walter Martinez @Robert Hobbs @Daniel Arwe 
> 
> Here is the best way I can describe the data that must be in place in order to reproduce both bugs (from History Maker and from this one at Toll Brothers). I will describe 2 cases that would cause a problem at some point in the past. These 2 cases can be tested both at once or separately - doesn't matter; they would cause a bug in the past either way.
> 
> Note: The grid is always composed of a number of areas (rows) and a number of price levels (columns). The areas are always sorted alphabetically.
> 
> Case 1 (HistoryMaker bug):
> There mu...

> **Daniel Arwe** _
> 
> @Walter Martinez, @Reid Wilson, @Jennifer Hickey, @Robert Hobbs  Repro. info. from Slack thread earlier....
> 
> For an Application > Product (Example: Countertops > Fabricated Ctops)....
> {Example: DEV > Staggered > LOPF > Series 1 > Aransas} =>
> Need 1 area that
> Has fewer price levels than the area with the most price levels
> "Bath 2 Vanity" has the most price levels (14); other areas all have 13, except "Kitchen w/Range" (12 price levels) and "Utility Countertop" (2 price levels)
> Specialty Stone - Level 1
> ************************MISSING Specialty Stone - Level 2 (which "Utility Countertop" area HA...

> **Jennifer Hickey** _
> 
> @Walter Martinez @Robert Hobbs @Reid Wilson @Justin Pope @Daniel Arwe @Joe Ebeling
> 
> This is currently reproducable in QA with Staggered > Lakes of Pine Forest > None > Aransas.
> If I select Granite Level 4 for Bath 2 Pony Wall, it is selected as expected.
> If I select Granite Level 4 for Bath 3 Vanity, then it highlights both Granite Level 4 and level 3. Granite Level 3 is listed as selected in Selections Summary even though Level 4 is selected in grid, but it shows the level 4 price. This should not expected. 
> For Bath 2 Vanity, it appears all selects show one price level to the left in the Sel...

> **Jennifer Hickey** _
> 
> @Walter Martinez @Robert Hobbs @Reid Wilson @Justin Pope @Daniel Arwe @Joe Ebeling 
> There should be a dev/QA collaboration to determine how QA will replicate this bug in the QA environment to verify the issue has been fixed. QA must be able to replicate in lower enviornments to test. Confirmation of a fix will also may require changes to Echelon data to replicate the issue, depending on the exact cause of it. This may or may not be time consuming depending on what is actually happening.

---

