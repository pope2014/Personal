# Sprint: Buyer Dashboard Improvements 1

**Dates:** 2025-07-30 → 2025-08-12
**Items:** 53 total (3 stories, 3 bugs, 47 tasks)

**Completion:** 53 / 53 done

---

## Stories (Product Backlog Items)

### [24386] Refactor logic to show new catalog view in DMH 

**State:** Done | **Priority:** 1 | **Tags:** visualize packages

**Description:**

Given that TM divisions may often have both canvas and dc catalogs (both estimated + non-estimated options), a simple flag on the builder level to show the new UI in DMH is not going to work.  
We will need to refine that logic somehow to either only show when the session has no estimated items or is based on a more specific tenant plan list (undefined as of now).

**Acceptance Criteria:**

Given that an organization has both catalog only (like canvas) and catalog + estimated (dc) we need a way to determine whether for a given tenant plan the new Full Catalog view appears in DMH.  

 
Given that the flag is on for Full Catalog View for an organization  
And the tenant plan is in a list of tenant plans that should use this new view  
Then, the new catalog view appears instead of the usual DMH tabs (room/products)  

 
Some additional UI notes:  
the user must choose a value for the setting (required) in order to create the tenant plan  
the user has some way to edit the configuration for a single tenant plan  
we need a way to audit the changes   (Likely to defer;  Look at time impact of adding an EventLog entry in the interim)

**Child Tasks (25):**

- [24696] (Done) @WalterMartinez Write QA Tests
- [24697] (Done) @WalterMartinez Execute QA Tests
- [24699] (Done) @RobertHobbs PO Review
- [24705] (Done) DMH: Honor config. to display Full Catalog or Room Options / Gen. OPtions Selector
- [24706] (Done) @DanielArwe PR Review
- [24707] (Done) @DanielArwe Pre-Story (if needed)
- [24708] (Done) @DanielArwe Dev. Testing
- [24712] (Done) @DanielArwe Data Service changes to call backend
- [24738] (Done) @DanielArwe Update Postman collection with new endpoints
- [25102] (Done) @DanielArwe Update CreateTenantPlans use case to include creating configs
- [25103] (Done) @DanielArwe New use case (UpdateTenantPlanConfigs)
- [25104] (Done) @DanielArwe Update DeleteTenantPlan use case to delete config.
- [25105] (Done) @DanielArwe Update GetTenantPlans use case to include configs
- [25106] (Done) @DanielArwe New endpoint for UpdateTenantPlanConfigs
- [25107] (Done) @DanielArwe Update endpoint (CreateTenantPlans)
- [25108] (Done) @DanielArwe Update endpoint (DeleteTenantPlan)
- [25110] (Done) @DanielArwe Unit test updates for CreateTenantPlans use case changes
- [25111] (Done) @DanielArwe Unit test updates for DeleteTenantPlan use case changes
- [25112] (Done) @DanielArwe Unit tests creation for UpdateTenantPlanConfigs use case
- [25113] (Done) @DanielArwe New Dialog for Tenant Plan Configuration
- [25114] (Done) @DanielArwe Rework TenantPlanList UI and VM to support mandatory config. on TP creation
- [25115] (Done) @DanielArwe Rework TenantPlanList UI and VM to support updating existing configs.
- [25116] (Done) @DanielArwe Updates/New frontend DTO updates to support new functionality
- [25333] (Done) @DanielArwe Defect: Plans show as 'Not Configured' after creating them.
- [25335] (Done) @WalterMartinez Execute QA Tests 2

**Comments (6):**

> **Robert Hobbs** _
> 
> @Daniel Arwe including a link to your mockup recording for reference: 
> https://screenrec.com/share/4K79vbX0pY

> **Robert Hobbs** _
> 
> Summary of the meeting: 
> for a full tenant plan solution, the stakeholders feel it needs to be in / adjacent to plan mapping where the data is generated 
> if we can design and implement in 1 sprint then this may be fine
> 
> a temp solution may be a list of series matches to check if the flag is on, potentially in a DB table or app settings 
> this would suffice for TM divisions and complete the TM-centric MVP. It would not be sufficient for other customers (most likely) and a more robust solution would need to replace it
> we should discuss whether we want to implement both in parallel or the series s...

> **Robert Hobbs** _
> 
> @Justin Pope I am not certain checking for estimated builds is sufficient because sometimes a spec is not found because of configuration reasons in Echelon. If we can switch back and forth between these two experiences then it may still be feasible, though disjointed potentially for a user. 
> 
> I have a separate work item for rendering single (non package) catalog items in the new visualizer. We need to be able to do that I just don't know the timing.

> **Justin Pope** _
> 
> @Robert Hobbs 
> 
> I am liking the idea for the Use Catalog View toggle within DMH more than making users configure tenant plans to show the Catalog View. DMH can read in the options for the plan and see that no builds are returning and toggle the Use Catalog View based off that read.
> 
> Regradless, with the situation of a builder having estimated and non-estimated options, we are going to need to figure out how to show catalog items in a room that do not have the matching area subarea for the room.
> 
> so, the Applicances & Fixtures above would need to pull in catalog items that maybe also don't have...

> **Daniel Arwe** _
> 
> @, it seems like the 2nd option below is a decent approach, in my mind.

> **Robert Hobbs** _
> 
> some ideas on the "list" of tenant plans for this  
> create a custom UI based on a feature flag configuration layer  
> meaning the user can expand the feature flag for the builder and sees a settings UI and in that UI for this flag they create a list of tenant plans for the builder 
> this is generally useful if we can create a pattern that works  
> 
>  
> another approach is to edit "tenant plan" settings from plan mapping in the tenant plan combinations grid. So here maybe a button and new dialog that has various settings specific to the tenant plan.  
> 
>  
> This could have a Use Catalog View in DMH tog...

---

### [25101] Regression Test: Wishlist - Review wishlist

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
Move Wishlist tests from .net conversion test suite to regression test suite (links above) 
Separate tests into atomic test cases (each test case focuses on testing 1 thing, but consider not duplicating efforts within the suite) 
Update test cases to add specific UI info relevant to front end framework switch 
Add Summary to each test case 
Update documentation for the view 
VDS Regression Testing list.docx 
add API calls 
flags that effect view 
???

**Child Tasks (1):**

- [25097] (Done) @WalterMartinez Write Test Cases

**Comments (1):**

> **Walter Martinez** _
> 
> Copied with all attachments and links from #24686

---

### [25124] Deployable RC release ready for 4/8

**State:** Done | **Priority:** 3

**Child Tasks (9):**

- [25118] (Done) @WalterMartinez Test RC in staging
- [25119] (Done) @WalterMartinez Run e2e automated test in staging
- [25120] (Done) @ReidWilson Create & Deploy RC
- [25122] (Done) @ReidWilson Deployment Planning Mtg. & Doc.
- [25180] (Done) @JustinPope Create & Deploy RC 2
- [25181] (Done) @WalterMartinez Test RC 2
- [25182] (Done) @WalterMartinez Run e2e automated test in staging
- [25217] (Done) @WalterMartinez Test RC 3
- [25218] (Done) @WalterMartinez Run e2e automated test in staging

**Comments (1):**

> **Walter Martinez** _
> 
> Copied with all attachments and links from #24660

---

## Bugs

### [25165] Bad GUIDs in Vis Programs

**State:** Done | **Assignee:** Justin Pope | **Priority:** 2 | **Tags:** added; deployed

**Repro Steps:**

Aaron came by reporting a bug in Vis Programs. Reported that going into any vis program resulted in the following error:
 

I, Justin Pope, started to do preliminary debugging and found that Aareas endpoint for visualizable options are returning bad GUIDs.
Attached response object from Aareas endpoint attached to story.

**Child Tasks (7):**

- [25166] (Done) @JustinPope Dev Debug
- [25167] (Done) @JustinPope Dev Fix
- [25168] (Done) @JustinPope Set up Mock Server for Testing
- [25169] (Done) @JustinPope Communication with Aaron
- [25170] (Done) @WalterMartinez Confirmation Testing
- [25171] (Done) @JustinPope PR
- [25173] (Done) @RobertHobbs PO Review

**Comments (2):**

> **Walter Martinez** _
> 
> I was able to identify some steps that reproduce the error. 
> 
> Navigate to 'Visualization > Visualization Program'. 
> Select an active Visualization Program. 
> In the 'Options' panel, paste a bad GUID. 
> Click 'Add'. 
> Click '< Back to Programs'. 
> Select an inactive Visualization Program. 
> In the 'Options' panel, paste a GUID. 
> 
> Click 'Add'
> 
> See BadGUID.webm video for the steps 
> See fixedGUID.webm video for the fix. 
> 
> To test the fix, run the script to change the 'GetAllPackagesUrl' and 'RenderableProductUrl' values. 
> And repeat the steps above.

> **Justin Pope** _
> 
> @[VeoDesignStudio]\VeoDesignStudio Team
> Script added to this work item to have endpoints point to mock responses served by POSTMAN.

---

### [25197] Bad (or empty) GUIDs from us breaks Aareas

**State:** Done | **Priority:** 2 | **Tags:** added; deployed

**Repro Steps:**

When testing the new endpoints with Aareas pushing the RC to their PROD environment, it is possible for us to send a catalog item with a blank gpc within the package parameter of there get image endpoint. This results in a 500 from there side.

**Child Tasks (5):**

- [25199] (Done) @RobertHobbs PO Review
- [25200] (Done) @WalterMartinez Confirmation Testing
- [25201] (Done) @JustinPope Dev Debugging
- [25202] (Done) @JustinPope Fixing
- [25203] (Done) @JustinPope Dev Testing

---

### [25358] Visualizer Borked the Unborkening

**State:** Done | **Priority:** 2 | **Tags:** added; deployed; No QA; visualizer

**Repro Steps:**

Visualizer developed some weird issues  
wouldn't change rooms  
wouldn't visualizer selected items (all white room) in whole house visualizer or elsewhere 
iframe throwing errors in console 
Uncaught TypeError: message.includes is not a function

    at appListenHandler (app.js?v=2025.06.09.3:2187:14)
 
 camera starts at odd location in bordeaux kitchen

**Comments (2):**

> **Robert Hobbs** _
> 
> @Joe Ebeling we have a test plan indicated above, so 1 hour of testing against STAGING with the vis api pointing to their RC and then if it passes we have jason update prod API and then we retest STAGING 1 hour approximately to see if that also passes. If it does, we would then update prod to Areas production URLs v2 to make sure that works there and I would notify key stakeholders. Timing is probably somewhere around 2pm if things go smoothly.

> **Robert Hobbs** _
> 
> Bork not Bjork

---

