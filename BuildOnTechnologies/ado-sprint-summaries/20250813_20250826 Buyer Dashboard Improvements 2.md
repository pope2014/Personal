# Sprint: Buyer Dashboard Improvements 2

**Dates:** 2025-08-13 → 2025-08-26
**Items:** 128 total (10 stories, 4 bugs, 114 tasks)

**Completion:** 127 / 128 done

---

## Stories (Product Backlog Items)

### [22634] VEO Admin: Customize Buyer Dashboard Modules - Part 1

**State:** Done | **Priority:** 1 | **Tags:** Carried; TM Work

**Description:**

Taylor Morrison is wanting to change which modules appear in the ordering of the dashboard.  

 
Having ONLY the Lifestyle Snapshot, Monthly Payment Calculator and
Design My Home on the first page of the homebuyer's dashboard. 

 

 

 

 

 

 

 

 

 

 

 
Prepare for your Design Appointment 
 Lifestyle Questionnaire 
  Monthly Payment Calculator 
  Design My Home 
  Design Resources 
 Videos 
 Understand your budget 
  Design your home 
  Model Home Viewer 
  Get Ready 
 Product Performance and Care (Lee to work with warranty) 
Pattern Viewer 
 (see attachment) 
  Review Wish List 
Appointment Details NOTE: this is a rename of the welcome to the design center module - NOT a new module  
 Appointment Guide (unique per division) 
Appointment Flow (see attachment)

**Acceptance Criteria:**

Given that a user has access to manage buyer dashboard in VEO Admin (Can Manage Buyers) 
 
 
the user can:  
For each dashboard step be able to edit:  
name of the step [30]  
test with widest theme font we have {stylecraft/montserrat]  
tool tip associated the step [250] 
note: the number of steps may be configurable in the future - but we aren't implementing that this sprint  
 For each dashboard step:  
be able to determine the modules that exist within that step and  
the ordering of those modules within the step  
limit the modules per step to 4 for this work  
  For each Module:  
edit the name of the module [35]  
edit the module description [250]  
toggle a module on or off  
[future? be able to designate the background image on the module]  
   
 
 automated tests are updated to accommodate the new flexible structure   to be moved to stand alone automated test and not part of this AC. per Team and Rob (30-Jul)

**Child Tasks (21):**

- [25125] (Done) PR
- [25126] (Done) @RobertHobbs PO Review
- [25127] (Done) @WalterMartinez Write QA Tests
- [25128] (Done) @WalterMartinez Execute QA Tests
- [25129] (Done) Decide on entities and their relationships
- [25130] (Done) @ReidWilson Create entities
- [25131] (Done) @ReidWilson Create entity maps
- [25132] (Done) @ReidWilson Create use cases
- [25133] (Done) @ReidWilson Create endpoints
- [25134] (Done) @DanielArwe Update Postman collection
- [25135] (Done) @JustinPope Create new route
- [25136] (Done) @JustinPope Create service calls
- [25137] (Done) @JustinPope Create frontend models
- [25138] (Done) @JustinPope Create UI template
- [25139] (Done) @JustinPope Create view model
- [25142] (Done) @ReidWilson Create migration
- [25143] (Done) @ReidWilson Create unit tests for all use cases
- [25555] (Done) Defect: Selecting 'Choosee...' from the dropdown is not
- [25556] (Done) Execute QA Tests 2
- [25557] (Done) Defect: Error when saving the module description to its max character length.
- [25559] (Done) Execute QA Test 3

**Comments (8):**

> **Robert Hobbs** _
> 
> Character limits:

> **Walter Martinez** _
> 
> ✅QA Validation Completed! 
>  
> 
>  
> PFA a quick screenshare of one of my tests.  
> 
>  
> Some scenarios covered:  
> Saving empty steps.  
> Saving all modules in one step.  
> Modifying step name to the max characters' length. 
> Modifying step description to the max characters' length. 
> Revert step name to default.  
> Revert step description to default. 
> Modifying a module name to its max character length.  
> Modifying a module description to its max character length.  
> Modifying a module name to empty.  
> Modifying a module description to empty.

> **Robert Hobbs** _
> 
> @Justin Pope just one comment I wanted to make before I forget. The option pricing and DMH modules are mutually exclusive, and so that dashboard step might actually need to show 5 modules and not 4. 😊

> **Robert Hobbs** _
> 
> UI Discussion 
> tabs with modules within them 
> edit tab name / tooltip 
> move them around 
> add module (from list) 
> remove module (same as disabled really) 
> edit module name / description

> **Robert Hobbs** _
> 
> When logged into VEO design studio as a buyer or as a user impersonating a buyer with buyer experience on: 
> Veo Design Studio respects the organization, ordering and enabled flag for each module and renders the homebuyer dashboard accordingly. 
> The completed step logic and advancement widget continues to work, including the next step indicator based on last completed module 
> 
> automated tests are updated to accommodate the new flexible structure   to be moved to stand alone automated test and not part of this AC. per Team and Rob (30-Jul)

> **Robert Hobbs** _
> 
> Split into 3 and 5
> 3: update VEO Admin UI and allow editing the modules, moving them etc but VDS would only use enabled/disable value as it does now 
> 5: update VDS to respect the new ordering system, build out the tabs and update all automated tests

> **Robert Hobbs** _
> 
> example: 
> Tab 1: Profile Setup 
> Lifestyle Snapshot, Welcome to VEO, Understanding your budget, Monthly payment calculator 
> 
> Tab 2: Profile Setup 
> Lifestyle Snapshot, Monthly Payment Calculator, Option Pricing, Design My Home
> 
> Tab 3: Explore Options 
> Understanding your Budget

> **Robert Hobbs** _
> 
> refactor the landing page for a buyer that currently shows lifestyle snapshot, especially if it's not the first module in the sequence.  
> edit the tab names 
> support more than 4 modules per tab

---

### [24233] Design: Search across categories in option pricing

**State:** Done | **Assignee:** Charlie Bradley | **Priority:** 1 | **Tags:** Carried; design; No QA; TM Work; UI/UX

**Description:**

Our national customer Taylor Morrison has requested that we implement a cross-category search for options  

 
Some key qualities of this request:  
we have a search or filter in various forms while within a specific application / product area like this:  

 
 They want to instead be able to search options across all categories. I have a few ideas for this:  
 
(really wishing we had a common nav component rn....)  
a search near the top of the navigation panel  
when a search happens the user enters text and we either filter live or require that press <enter>  
when the filter / search happens we add a label that reads: "filtered results" and a [clear] button / link next to it  
the list of categories is filtered to those that have a match on the search text  
the first result is selected, thereby showing the options  
the options for the selected category / subcategory are also filtered and that is labeled  
 
 
Examine the fig jam board for inspiration: https://www.figma.com/board/ibjLoxR8TqRNXCuwy1j7cp/Product-Owner-Design-Boards?node-id=709-10&p=f&t=8fPgSAzpho5ERWu5-0

**Acceptance Criteria:**

produce a set of low fidelity wireframes that capture the following usage scenarios:  
a buyer can enter search string from the navigational panel  
the navigation panel is filtered based on the search value 
partial matches are "hits"  
note: we may want a gear icon for search to customize behavior, but this could come later perhaps  
 categories for hits are displayed and those without hits are removed from the view  
the navigation very clearly conveys that results are filtered 
 the buyer can select a category from the filtered results and show the filtered options associated with their search  
the options count is updated to reflect search hits just as with search inside a category 
 the buyer can clear the filter which reverts the navigation to normal showing all categories and options when one is selected

**Child Tasks (12):**

- [25140] (Done) @CharlieBradley Research and Planning
- [25141] (Done) @CharlieBradley Prestory Meeting
- [25144] (Done) @CharlieBradley Set up Low-Fi Wireframe
- [25145] (Done) @CharlieBradley Wireframe: a buyer can enter search string from the navigational panel
- [25146] (Done) @CharlieBradley Wireframe: the navigation panel is filtered based on the search value
- [25148] (Done) @CharlieBradley Wireframe: partial matches are "hits"  note: we may want a gear icon for search to customize behavior, but this could come later perhaps
- [25149] (Done) @CharlieBradley Wireframe:  categories for hits are displayed and those without hits are removed from the view
- [25150] (Done) @CharlieBradley Wireframe: the navigation very clearly conveys that results are filtered
- [25151] (Done) @CharlieBradley Wireframe: the buyer can select a category from the filtered results and show the filtered options associated with their search
- [25152] (Done) @CharlieBradley Wireframe: the options count is updated to reflect search hits just as with search inside a category
- [25153] (Done) @CharlieBradley Wireframe: the buyer can clear the filter which reverts the navigation to normal showing all categories and options when one is selected
- [25154] (Done) @RobertHobbs PO Review

**Comments (4):**

> **Charlie Bradley** _
> 
> @Robert Hobbs Here is the link to the updated prototype: https://www.figma.com/proto/GcykC2KO2twyL14sZJyoMY/Search-across-categories?node-id=102-3&t=CeBX09gyMY2Zk0pI-1&scaling=contain&content-scaling=fixed&page-id=102%3A2&starting-point-node-id=102%3A3

> **Robert Hobbs** _
> 
> https://www.figma.com/proto/GcykC2KO2twyL14sZJyoMY/Search-across-categories?node-id=67-393&t=KpkNYR1YutwqT8iJ-1&scaling=contain&content-scaling=fixed&page-id=67%3A2&starting-point-node-id=67%3A393

> **Charlie Bradley** _
> 
> There is also a video attached to this story.
> Video Project 5.mp4

> **Charlie Bradley** _
> 
> Figma link: https://www.figma.com/proto/GcykC2KO2twyL14sZJyoMY/Search-across-categories?node-id=1-2&t=wtwyppnREfTuG1LN-1&scaling=contain&content-scaling=fixed&page-id=0%3A1&starting-point-node-id=1%3A2&show-proto-sidebar=1

---

### [24369] Update welcome message to use Welcome Builder Name for organization

**State:** Done | **Assignee:** Daniel Arwe | **Priority:** 2 | **Tags:** Story Time; TM Work

**Description:**

Our national customer Taylor Morrison has request a change to the text on the welcome screen that buyers see. We think this change may be suitable for all customers.  

 

 

 
Link to story time topic: Planner - Welcome to Veo and who it is from

**Acceptance Criteria:**

Given that a user has access to manage organizations in VEO Admin,  
and is editing organizational values:  

 
a new field called: "Homebuyer  Congratulations Message" exists and the user can edit it with any text  
there  is a placeholder text that has the VDS default text:  
Congratulations on your new home! 
    
if the user types something and clears it it reverts to VDS default  
[character limit 100]  
 a new field called:  "Homebuyer Welcome Message"  exists and the user can edit it with any text  
there  is a placeholder text that has the VDS default text:  
"We want to welcome you into the Design Center journey, which starts with this brief questionnaire to help us get to know you and help make the most of your Design Center visit." 
    
if the user types something and clears it it reverts to VDS default  
 [character limit 300]  
  On the buyer welcome screen (landing page)  
if the new fields have no value defined for a builder, then the current message used in VDS is disp...

**Child Tasks (14):**

- [25461] (Done) @WalterMartinez Write QA Tests
- [25462] (Done) @WalterMartinez Execute QA Tests
- [25463] (Done) @RobertHobbs PO Review
- [25464] (Done) @DanielArwe Prestory TBDs
- [25465] (Done) @DanielArwe Add DB fields
- [25466] (Done) @DanielArwe Update create org. use case
- [25467] (Done) @DanielArwe Update edit org. use case
- [25468] (Done) @DanielArwe Update create org. UI and VM
- [25469] (Done) @DanielArwe Update edit org. UI and VM
- [25470] (Done) @DanielArwe Dev. testing
- [25471] (Done) @DanielArwe PR Review
- [25476] (Done) @DanielArwe Fix any broken unit test resulting from changing use cases
- [25481] (Done) @DanielArwe Update VDS UI to use new values, overriding hard-coded values where applicable
- [25505] (Done) @DanielArwe update fetch org. use case to retrieve new fields

**Comments (4):**

> **Walter Martinez** _
> 
> ✅QA Validation Completed! 
> 
> PFA a quick screenshare.

> **Daniel Arwe** _
> 
> @ , @ Posting here to show final agreed upon state of the edit and update org. views in VEO Admin....
> ![==image_0==.png](https://dev.azure.com/BuildOnTechnologies/ddde192e-e31e-4e51-af4b-3b7b4221266a/_apis/wit/attachments/65654b07-e4fc-4937-a26b-6ea498136a25?fileName===image_0==.png)

> **Daniel Arwe** _
> 
> @ @ ![image.png](https://dev.azure.com/BuildOnTechnologies/ddde192e-e31e-4e51-af4b-3b7b4221266a/_apis/wit/attachments/e28decbe-fe8c-40f7-8b1d-4b8d4b860f5b?fileName=image.png)

> **Daniel Arwe** _
> 
> @ , @ Posting this here for visibility...
> 
> ![image.png](https://dev.azure.com/BuildOnTechnologies/ddde192e-e31e-4e51-af4b-3b7b4221266a/_apis/wit/attachments/5a4046b0-aac8-4468-aef9-961781f43702?fileName=image.png) 
> 
> ![image.png](https://dev.azure.com/BuildOnTechnologies/ddde192e-e31e-4e51-af4b-3b7b4221266a/_apis/wit/attachments/0c5636e4-48cf-40e9-9fce-16ba321fd615?fileName=image.png) 
> 
> Added char. limits to AC and field name verbiage.

---

### [25100] VEO Admin: Support custom dashboard modules in VDS - Part 2

**State:** Done | **Priority:** 1

**Description:**

In a previous story we created a way to customize the dashboard steps and modules. This work item covers the work to support it in buyer dashboards.  

 
Intent: based on a custom configuration of the buyer dashboard for a given builder, the buyer dashboard is dynamically created

**Acceptance Criteria:**

When logged into VEO design studio as a buyer or as a user impersonating a buyer with buyer experience on:  
Veo Design Studio respects the organization, ordering and enabled flag for each module and renders the homebuyer dashboard accordingly.  
Verify that step name and tooltip match the customized values for the organization  
Verify that the modules belong to the correct steps  
Verify that the modules appear in the order expected  
Verify that the module names and descriptions match the customized values  
Based on the feature flag settings and plan status the option pricing, product catalog and/or DMH modules appear correctly  
 The completed step logic and advancement (gamification) widget continues to work, including the next step indicator based on last completed module  
 
 
Edge Cases  
if we customize a dashboard and do not include option pricing, product catalog / dmh in any of the steps 
we would expect that these modules do not appear  
 If a step has no modules, the ste...

**Child Tasks (15):**

- [25458] (Done) @WalterMartinez Write QA Tests
- [25459] (Done) @WalterMartinez Execute QA Tests
- [25460] (Done) @RobertHobbs PO Review
- [25472] (Done) @JustinPope Update Postman collection
- [25473] (Done) @JustinPope Create GET endpoint for VDS to use
- [25474] (Done) @JustinPope Create GET use case
- [25475] (Done) @JustinPope Write unit tests for GET use case
- [25477] (Done) @ReidWilson Create frontend models
- [25478] (Done) @ReidWilson Refactor logic for creating steps with their modules
- [25479] (Done) PR
- [25700] (Done) @WalterMartinez Execute QA Tests 2
- [25701] (Done) @JustinPope Defect: The menu header is overflowing the component.
- [25714] (Done) @JustinPope Defect: The step description itself is not contained on the expected area. (The tooltip box)
- [25715] (Done) @JustinPope Defect: When having all values (step/module name and step/module description) set to their max values, it adds a vertical scrollbar
- [25759] (Done) Default sizing of modules is different from prod and shows rows of 3

**Comments (1):**

> **Walter Martinez** _
> 
> ✅QA Validation Completed!

---

### [25233] Update Integration URLs for Session Completion Event

**State:** Done | **Assignee:** Daniel Arwe | **Priority:** 3 | **Tags:** added

**Description:**

The Integration team has requested that the urls to which we send session completion events be changed.   

 
To quote: 
We have new URLs for our Queueing API. Because the old implementations were on the same virtual machine, the API endpoints needed to be differentiated by port. These new URLs are better crafted and will allow us to move and change servers without impacting your teams.
 

 
The current urls are (dev and prod respectively): 
http://BLD-INTWEBDEV01.buildontechnologies.com:8088/api/messages 
http://BLD-INTWEB01.buildontechnologies.com:8088/api/messages 
  

 
The new urls are (dev and prod respectively): 
http://integration-dev.buildontechnologies.com/queue/vds/api/messages
 
http://integration.buildontechnologies.com/queue/vds/api/messages

**Acceptance Criteria:**

Given that production is the target environment (all stacks)  
And there is an active session 
When that session is completed 
And the SessionCompletedEvent is raised 
Then the event should be delivered to: 
http://integration.buildontechnologies.com/queue/vds/api/messages
 

 
Given that a non-production environment is the target environment 
And there is an active session 
When that session is completed 
And the SessionCompletedEvent is raised 
Then the event should be delivered to: 
http://integration-dev.buildontechnologies.com/queue/vds/api/messages

**Child Tasks (5):**

- [25716] (Done) @DanielArwe Change URL and test locally in DEV
- [25720] (Done) @DanielArwe Change URL in ADO library for all lower VDS environments
- [25721] (Done) @DanielArwe PR Review
- [25724] (In Progress) @DanielArwe Change URLs, in ADO library, for 4 Production Stacks (close to RC creation)
- [25776] (Done) Execute QA Tests

**Comments (5):**

> **Daniel Arwe** _
> 
> @ ![image.png](https://dev.azure.com/BuildOnTechnologies/ddde192e-e31e-4e51-af4b-3b7b4221266a/_apis/wit/attachments/e52129f1-c85d-4c8e-95d0-9b69c4766bee?fileName=image.png)

> **Daniel Arwe** _
> 
> @ I have verified that the selections report can still be generated.

> **Robert Hobbs** _
> 
> @Daniel Arwe I presume part of the developer testing for this change is that the session completed process still runs properly and generates the selections report PDF? I don't really want to dig into reviewing this work item at this level.

> **Walter Martinez** _
> 
> Tested and checking new URLs provided but Fry, Andrew via Teams chat. 
> 
> http://integration-dev.buildontechnologies.com/system/vds/messages
> http://integration.buildontechnologies.com/system/vds/messages

> **Eric Hickey** _
> 
> @
> Rob, can we try to get this into the next refinement and sprint?

---

### [25384] User Impersonation: Sort accounts alpha 

**State:** Done | **Assignee:** Daniel Arwe | **Priority:** 3 | **Tags:** added; Story Time

**Acceptance Criteria:**

sort accounts list on user impersonation view alpha asc

**Child Tasks (5):**

- [25692] (Done) @DanielArwe Identify relevant code and implement sort.
- [25693] (Done) @DanielArwe PR Review
- [25722] (Done) @WalterMartinez Write QA Tests
- [25723] (Done) @WalterMartinez Execute QA Tests
- [25725] (Done) @RobertHobbs PO Review

**Comments (2):**

> **Walter Martinez** _
> 
> ✅QA Validation Completed! 
> 
> Tested in: User Impersonation  
> 
>  
> 
>  
> Tested in: New User Registration. 
> 
>  
> 
>  
> 
>  
> Tested in: Edit User Profile.

> **Daniel Arwe** _
> 
> @ , @ 
> ![image.png](https://dev.azure.com/BuildOnTechnologies/ddde192e-e31e-4e51-af4b-3b7b4221266a/_apis/wit/attachments/daad18ef-48d2-4aae-890b-c4e934bcbe28?fileName=image.png)

---

### [25411] Plan Mapping: add filter to configured column 

**State:** Done | **Assignee:** Daniel Arwe | **Priority:** 3

**Description:**

Aaron expressed that they may want an easy way to identify tenant plans that are not configured. We can of course produce a SQL report for them, but another idea being floated is adding a filter column to the grid for tenant plans here:

**Acceptance Criteria:**

add a filter to the Status column in the tenant plan grid in plan mapping  
verify that this value also is included in an excel export of the data using the slick grid export to excel feature

**Child Tasks (5):**

- [25455] (Done) @DanielArwe Add all the things.
- [25457] (Done) @DanielArwe PR Review
- [25483] (Done) @WalterMartinez Write / Update QA Tests
- [25484] (Done) @WalterMartinez Execute QA Tests
- [25485] (Done) @RobertHobbs PO Review

**Comments (3):**

> **Walter Martinez** _
> 
> ✅QA Validation Completed! 
> 
> All three included changes were tested. 😉 
> Filtering to column based on the status: Configured - Not Configured- ALL. 
> Pagination remained the same 250 items per page even when filtering.  
> Excel File specs: name file (Tenant Plans) and content are also as expected. 
>  
>  PFA a quick screen share and a screenshot below.

> **Daniel Arwe** _
> 
> @ , @ , @ , @ PR is up for this.  
> https://dev.azure.com/BuildOnTechnologies/VeoDesignStudio/_git/VeoDesignStudio/pullrequest/9015
> 
> It includes the following changes....
> 
> 1.  Added filtering to column
> 2.  Verified excel export includes column and added custom file name "TenantPlans" (more descriptive than the default 'export' file name).
> 3.  Added additional page size options to pagination page size dropdown selector and changed default to 250 rows (which should address, in most cases, the issue with the user not seeing all of the plans in a single view;  This could be increased more if needed...

> **Robert Hobbs** _
> 
> Note: there is a button that with nothing selected allows you to configure unconfigured plans. It currently is limited to visible rows in the grid based on pagination settings

---

### [25430] Deployable RC release ready for 8/18

**State:** Done | **Priority:** 3

**Child Tasks (4):**

- [25421] (Done) @JustinPope Create & Deploy RC
- [25422] (Done) @JustinPope Deployment Planning Mtg. & Doc.
- [25423] (Done) @WalterMartinez Test RC in staging
- [25429] (Done) @WalterMartinez Run e2e automated test in staging

**Comments (1):**

> **Justin Pope** _
> 
> Copied from #25124

---

### [25447] Regression Test: Monthly Payment Calculator

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
Move Monthly Payment Calculator tests from .net conversion test suite to regression test suite (links above) 
Separate tests into atomic test cases (each test case focuses on testing 1 thing, but consider not duplicating efforts within the suite) 
Update test cases to add specific UI info relevant to front end framework switch 
Add Summary to each test case 
Update documentation for the view 
VDS Regression Testing list.docx 
add API calls 
flags that effect view 
???

**Child Tasks (1):**

- [25446] (Done) @WalterMartinez Write Test Cases

**Comments (1):**

> **Walter Martinez** _
> 
> Copied with all attachments and links from #25101

---

### [25567] Tenant Plan Configuration: Disable Visualizer in DMH

**State:** Done | **Assignee:** Daniel Arwe | **Priority:** 3 | **Tags:** added

**Description:**

Our  current method to configure the full catalog visualizer works generally well, but there is a scenario that can cause an issue:  

 
If an organization has a set of tenant plans they want to use for full package visualization but NOT the visualizer in DMH, and those tenant plans share a plan name, then it can't quite be configured with scene associations alone.  

 
We need to find a way to remedy this.

**Acceptance Criteria:**

Scenario: Admin new configuration for tenant plan
create a new configuration element for the tenant plan UI  
Title: Disable Visualizer in DMH  
Description: default OFF. When ON, the visualizer is not displayed in Design My Home, in either Full Catalog View or the classic view of Design My Home.   Changed (see discussion post) 
Description: Default: No. When Yes, the visualizer is not displayed in Design My Home, in either Full Catalog View or the classic view of Design My Home. 
what does the apply to all button do when there are more than one config? does it apply the current plan values for both to the others?  
 Scenario: Visualizer is not shown, depending on tenant plan configuration  
Given that visualization is turned ON at the builder level  
but for a tenant plan the configuration "Disable Visualizer in DMH" is ON  
the visualizer does not appear in the Full Catalog View  
the visualizer does not appear in the classic DMH view  
 Scenario: Visualizer is shown when enabled for...

**Child Tasks (16):**

- [25612] (Done) @DanielArwe EF migration
- [25613] (Done) @DanielArwe EF Entity Map
- [25614] (Done) @DanielArwe Update Postman
- [25615] (Done) @DanielArwe Update backend models
- [25616] (Done) @DanielArwe Update frontend models
- [25617] (Done) @DanielArwe Update use cases
- [25618] (Done) @DanielArwe Update unit tests
- [25619] (Done) @DanielArwe Update viewModels
- [25620] (Done) @DanielArwe Update Config. Edit dialog view
- [25621] (Done) @DanielArwe Dev Testing
- [25622] (Done) @DanielArwe PR Review
- [25623] (Done) @DanielArwe Update DMH logic to respect config.
- [25642] (Done) @DanielArwe Refactor Yes/No/Unconfigured toggle to extract to component
- [25717] (Done) @WalterMartinez Write QA Tests
- [25718] (Done) @WalterMartinez Execute QA Tests
- [25719] (Done) @RobertHobbs PO Review

**Comments (2):**

> **Walter Martinez** _
> 
> ✅QA Validation Completed! 
> 
> PFA a quick screenshare of me toggling on/off the new disable visualizer flag in the card.

> **Daniel Arwe** _
> 
> Change to wording in AC.... @ 
> 
> ![image.png](https://dev.azure.com/BuildOnTechnologies/ddde192e-e31e-4e51-af4b-3b7b4221266a/_apis/wit/attachments/2f65188a-cac0-424a-a9e0-284ad9e8b4fc?fileName=image.png)

---

## Bugs

### [24202] Branding: Proxima Nova squishes first step in option pricing selector

**State:** Done | **Assignee:** Reid Wilson | **Priority:** 2 | **Tags:** added

**Repro Steps:**

We were informed that when the font is Proxima Nova, the first step on the option pricing plan selector is "squished".

**Child Tasks (4):**

- [25698] (Done) @ReidWilson Unsquish the squished
- [25726] (Done) @WalterMartinez Confirmation Testing
- [25727] (Done) @RobertHobbs PO Review
- [25741] (Done) PR Review

**Comments (1):**

> **Walter Martinez** _
> 
> ✅QA Validation Completed! 
> 
> Tested with all fonts from the theme. 
> 
> I noted that there are fonts in which the number is not completely centered in the circle. Want me to go ahead and consolidate them into a new bug with all fonts that affect these steps? 
> @Robert Hobbs

---

### [25408] Option Pricing: Fetching Catalog Items Causes Console Error

**State:** Done | **Assignee:** Daniel Arwe | **Priority:** 2 | **Tags:** Carried; Improvements 1

**Repro Steps:**

In PREVIEW (or some other environment set up to mimic the data in Preview), change your user profile to use STAGING-Taylor Morrison Atlanta. 
Navigate to Option Pricing and select Watson Park > Canvas > Aiken for CSP. 
Open the developer tools to the Console 
Once the nav. loads, click to select Elevations 
The following console error appears.....

 
 
 
From Rob: I am not sure how helpful this will be in replicating the issue, but I created a new organization in Preview called STAGING - Taylor Morrison Atlanta. I did not enter an external Id for it (given that it is catalog only).  

 
I also created a community / series / plan and a configured tenant plan combination. Note that the same named tenant plan combo does also exist for the Denver division - that shouldn't matter I think.  

 
I made the catalog source for this builder VDS.  

 
I Uploaded a VDS catalog for this builder from an excel file I received from Aaron. It seemed to upload without errors. I have attached that file t...

**Child Tasks (5):**

- [25448] (Done) @DanielArwe Find it.
- [25449] (Done) @DanielArwe Fix it.
- [25450] (Done) @DanielArwe PR Review
- [25453] (Done) @WalterMartinez Confirmation Testing
- [25454] (Done) @RobertHobbs PO Review

**Comments (4):**

> **Walter Martinez** _
> 
> ✅QA Validation Completed! 
> 
> I recreated the same steps provided. 
> Creating an organization.  
> Created Community / Serie / Plan  
> Configured Tenant Plan 
> Made sure the catalog source was VDS.  
> And uploaded the attached file as part of the builder catalog.  
> Accessed to Option Pricing and then clicking 'Elevations'.  
>  
>  
> 
>  
> After deploying the fix to QA. this Uncaught error was not displayed in the console logs.

> **Daniel Arwe** _
> 
> @ , @ , @ , @  PR up for this bug fix:
> 
> https://dev.azure.com/BuildOnTechnologies/VeoDesignStudio/_git/VeoDesignStudio/pullrequest/9015

> **Daniel Arwe** _
> 
> @ , @ Added to current sprint at Rob's request....
> 
> ![image.png](https://dev.azure.com/BuildOnTechnologies/ddde192e-e31e-4e51-af4b-3b7b4221266a/_apis/wit/attachments/9164eb52-bd9c-4038-8877-78a6893e3fc5?fileName=image.png) 
> ![image.png](https://dev.azure.com/BuildOnTechnologies/ddde192e-e31e-4e51-af4b-3b7b4221266a/_apis/wit/attachments/715d2526-001c-4c51-a02e-937a3dcab83e?fileName=image.png)

> **Daniel Arwe** _
> 
> The root of the issue is that the OptionPricingGroup's constructor is not checking for a defined PriceLevelMasterList on the data coming in from the backend.  Since it comes in null in this case, the call to .map on the array causes the error.
> 
> ![image.png](https://dev.azure.com/BuildOnTechnologies/ddde192e-e31e-4e51-af4b-3b7b4221266a/_apis/wit/attachments/4882be86-2d11-4423-8fca-b6ce4b7de76d?fileName=image.png) 
> 
> ![image.png](https://dev.azure.com/BuildOnTechnologies/ddde192e-e31e-4e51-af4b-3b7b4221266a/_apis/wit/attachments/f55c042b-0e88-4578-97fb-88871fadee45?fileName=image.png) 
> 
> ![image.p...

---

### [25436] Echelon export not using location_id from builds

**State:** Done | **Priority:** 2 | **Tags:** No QA

**Repro Steps:**

Apparently the echelon xml export that gets generated is not using the location id associated with a build but instead hard codes that to '1'.

**Child Tasks (2):**

- [25451] (Done) PR Review
- [25452] (Done) Fixed by Roger

---

### [25570] User not seeing all orgs in impersonation and no communities in option pricing

**State:** Done | **Assignee:** Reid Wilson | **Priority:** 2 | **Tags:** added

**Repro Steps:**

Jim reported that a user vivian stauss is not able to see all the organizations to which she is assigned.  

 
We set up Vivian Stauss with access to DC Pines in VDS WBS Stack.  When she goes to impersonate a user DC Pines does not appear in her dropdown in the builder list.  When I go to option pricing DC Pines shows but it shows no community found. 
When I search under her credentials it does the same thing.  
I can see everythiing under my credentials just fine. 
her credentials are  
vivians@thedesigncenters.com

**Child Tasks (5):**

- [25607] (Done) @ReidWilson Research the bug
- [25608] (Done) @ReidWilson Fix the bug
- [25609] (Done) @ReidWilson PR
- [25625] (Done) @WalterMartinez Confirmation Testing
- [25626] (Done) @RobertHobbs PO Review

**Comments (6):**

> **Robert Hobbs** _
> 
> @Reid Wilson I evaluated this a bit differently but I still think it was a viable test. 
> I did the following: 
> created a new user and made them a designer in staggered and non staggered 
> used SQL to change the role for non staggered to DC Manager, so now they have two different roles by org 
> marked the feature flag of Disallow HB Access on non-staggered 
> verified a homebuyer for non-staggered could not sign in 
> signed in as the new dc manager user and verified I could see both builders in user impersonation and option pricing and both had communities

> **Walter Martinez** _
> 
> ✅QA Validation completed! 
> 
> PFA a quick video of one of my tests. 
> Following the steps below I can no longer replicate the issue. Communities are displayed accordingly upon Builder Selection in OP

> **Reid Wilson** _
> 
> @Robert Hobbs @Walter Martinez 
> Repro steps
> 
> 1) Configure target organization to turn ON feature flag: "Disallow Homebuyer Access"
> 2) Ensure all legacy roles of target user as seen in VeoAdmin are "Designer" only and nothing else. (other combos may work but it is non-deterministic)
> 3) Attempt to log in to the target organization with the target user. You will not be able to, or if you can, it is because the user has other eligible organizations, but in that case, you will notice that the target organization cannot be switched to from common builder dropdowns.
> 
> That was the prior functionality,...

> **Robert Hobbs** _
> 
> @Reid Wilson i updated vivian's user to designer for that inactive org in prod btw

> **Reid Wilson** _
> 
> After discussing the path forward for the best solution, Justin and I agreed that the stored procedure should not be called at all. Instead, the homebuyer guid (D79046BE-DBCF-49F4-896A-7FA7DEA5CE21) should be hard-coded into the use case. This is acceptable since the legacy role guids are written into the static data script and also the same across all stacks in production.

> **Robert Hobbs** _
> 
> disallow homebuyer access feature flag  
> vivian stauss - 7 orgs the 3 that are not showing is because of the feature flag  
> 
>  
> calling a sp to return the GUID for legacy role of homebuyer  
> returns the designer GUID when it is supposed to be returning a HB Guid  
> 
>  
> is it a recent change for the disallow flag on those builders?  
> 
>  
> ssp_search_roles

---

