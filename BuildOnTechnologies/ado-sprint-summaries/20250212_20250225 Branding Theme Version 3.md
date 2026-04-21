# Sprint: Branding Theme Version 3

**Dates:** 2025-02-12 → 2025-02-25
**Items:** 21 total (7 stories, 2 bugs, 12 tasks)

**Completion:** 21 / 21 done

---

## Stories (Product Backlog Items)

### [21391] Regression Test: New User Registration

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
Move New User Registration tests from .net conversion test suite to regression test suite (links above) 
Separate tests into atomic test cases (each test case focuses on testing 1 thing, but concider not duplicating efforts within the suite) 
Update test cases to add specific UI info relevant to front end framework switch 
Add Summary to each test case 
Update documentation for the view 
VDS Regression Testing list.docx 
add API calls 
flags that effect view 
???

**Comments (1):**

> **Jennifer Hickey** _
> 
> Copied from #21390

---

### [21407] Regression Testing in staging

**State:** Done | **Assignee:** Walter Martinez | **Priority:** 3

**Child Tasks (2):**

- [21408] (Done) @WalterMartinez Execute Tests Run Test Suite in Staging
- [21411] (Done) @JenniferHickey Run Automated Happy Path

---

### [21546] Research: Option Codes: Error in output

**State:** Done | **Assignee:** Justin Pope | **Priority:** 3 | **Tags:** No QA; option codes; TM

**Description:**

Jim was trying to run the selections detail report for option codes in the EPLAN stack and was getting "error" in the columns for option codes.  

 

 

 

 

 

 

 
The true cause is not known / researched by a developer. We would expect that if the end point returns no option codes, the cells in the report would be empty (not error). If there is an error, then it's worth understanding what it is and where it is logged.  

 
Adrian surmised that the cause of the issue is some kind of JWT token that we are not sending. This may be the case, but Roger disputed that.  

 
Here are the notes for that original assumption:  

 
The initial implementation of the end point to retrieve option codes was anonymous. Apparently a change was made such that on a per stack basis it now requires a token.  

 
Jim's email:  
We are currently being asked by TM to be able to send
selections over to Sales Force from Veo Design Studio.  We are testing the
system with TM Denver in the Eplan Stack. 
  
Session ID - 493f749e-e736-408d-97a5-3be9c5c4f59f 
  
I have entered option codes for several items in Echelon
for spec 10149.   
  
I have made selections in the above spec id.  When
looking at the selec...

**Acceptance Criteria:**

identify the cause of the "error" output in the scenario that Jim was trying to run in EPLAN  
verify if Adrian's theory about the JWT being required is the cause of that error  
if so: refactor the call to fetch option codes such that in configuration somewhere we store and use the appropriate stack-aware token  
document in this work item where they are stored and how they are updated  
validate that this structure works in the dev environments somehow as well (if feasible)  
 if there is no error but we are writing "error" to the excel spreadsheet when option codes are missing, then fix this by leaving those empty instead.  
 research whether when an error occurs we are logging it somewhere

**Comments (3):**

> **Justin Pope** _
> 
> @Robert Hobbs @Reid Wilson @Daniel Arwe @Eric Hickey 
> 
> Stories created for appsettings updates and logging refinement:
> 
> Logging refinement: #21801 
> Appsettings updates: #21802

> **Robert Hobbs** _
> 
> @Justin Pope @Reid Wilson @Daniel Arwe @Eric Hickey 
> 
> Hey Justin, thanks for looking into this. Ok a few things from your commentary: 
> 
> we need a work item to refactor our error handling here. Given that customers will be depending on the output for their integration processes (either by processing the excel file or calling our integration API end point), I am not certain writing "error" is a good idea. One option is to not write anything in the output. As option codes are missing the customer would then inquire as to why. This may or may not be better than them calling us to ask why they say ...

> **Justin Pope** _
> 
> @Robert Hobbs @Reid Wilson @Daniel Arwe 
> 
> I have spent today looking through the code to get critical mass of running the excel report to get the option codes from echelon and then duplicate the issue that Jim is experiencing here. So the following is my findings so far:
> 
> To try a hit the AC:
> 1) indentify the cause of the "error" output in the scenario that Jim was trying to run in EPLAN:
> So debugging from my local environment and pointing to the EPLAN stack, I am hitting the endpoint ReportsController.GetSessionSelectionsAsExcelWithBuilderPrice with SessionID : 493f749e-e736-408d-97a5-3be9c5c...

---

### [21637] Branding: Plan Approach to Theming System Rework/Redesign

**State:** Done | **Assignee:** Robert Hobbs | **Priority:** 1 | **Tags:** branding; No QA

**Description:**

The goal is to produce a list of stories outlining implementation of a theming system redesign and integration of that new approach with the current approach in production.  This should also determine reasonable deployable "chunks" or increments of work.

**Acceptance Criteria:**

Create a list of user stories that outline the plan to implement a redesign of the theming system. 
 Work with the Product Owner to build out story details 
 Produce relevant sketches, diagrams, wireframes, etc. to communicate the implementation to the rest of the team. 
Estimate all stories and define the delivery time frame for the feature  
Define a release plan for the work and how it impacts existing theme functionality  
Be sure to include in the timeline consideration for business needs regarding upcoming themes

**Child Tasks (2):**

- [21683] (Done) Team can estimate a delivery date
- [21684] (Done) PO can update road map for feature

---

### [21680] Research: Installation Photos

**State:** Done | **Assignee:** Daniel Arwe | **Priority:** 3 | **Tags:** No QA; support

**Description:**

Content needs guidance on how to create installation photos so they can document the workflow. They need help identifying which attributes need to be set to get those photos to appear in VDS.

**Acceptance Criteria:**

working with BoT Content, research the requirements for marking up an installation photo in Echelon so that it appears in VDS

**Child Tasks (2):**

- [21681] (Done) @DanielArwe Research how photos get pulled in
- [21682] (Done) @DanielArwe Communicate with appropriate parties

**Comments (5):**

> **Daniel Arwe** _
> 
> @Robert Hobbs I've shared with Dorliza the content of the email I sent her.  I CCed you on it.  That is all I have shared as of now.

> **Robert Hobbs** _
> 
> @Daniel Arwe very thorough thank you. Have you shared this research with Dorliza as of yet? I do not know the nature of the request to make photos "global" I will need to understand that better before I suggest we do anything else.

> **Daniel Arwe** _
> 
> Location in Echelon:
> 
> Double click image to open editor:

> **Daniel Arwe** _
> 
> @Reid Wilson @Robert Hobbs 
> 
> After looking at the stored procedure that fetches the photos to be displayed, the following (which Chat helped with) lays out the conditions that detemine whether or not a photo_id is returned for a given photo, for display in the Installation Photos module:
> 
> Boiling the logic down to specifically photo_attributes and photo_attributes_values, and discounting the obvious requirements for things like valid security token and valid customer, the 'Part Number' and 'Area' attributes need to have values.  The Part Number attribute value is used to determine, via the col...

> **Reid Wilson** _
> 
> @Daniel Arwe @Robert Hobbs 
> 
> Here is the relevant part of the message I received from Dorliza earlier today. It may be helpful. I am telling her to reach out to Daniel for future comments about this story.
> 
> "We are trying to figure out what are the parameters for installation photos that allow it to be shown in VDS, ie what infomation is required, and is there a way to make an install photo "global" or visible to all builders? Rob says that's never been documented what attributes are needed"

---

### [21688] Release 2/17

**State:** Done | **Priority:** 3 | **Tags:** No QA

---

### [21802] Option Codes: Appsetting Changes for Echelon API

**State:** Done | **Assignee:** Justin Pope | **Priority:** 1 | **Tags:** added; hotfix 2/24; No QA; option codes

**Description:**

Discussion with Adrian has revealed that there is only one Echelon API and not a stack level methodology. Because of this we need to update are stacks appsettings as the following:
 

EchelonAPIBaseUrl : https://echelonapi.wisenbaker.com/
 

 
Reference:  
https://dev.azure.com/BuildOnTechnologies/VeoDesignStudio/_workitems/edit/14463 

 
3 2 2 5 3

**Acceptance Criteria:**

update app settings to point to the proper location for both dev environments and in production for the proper base URL  
validate that the selections detail report retrieves option codes and the integration API retrieves option codes

**Comments (7):**

> **Justin Pope** _
> 
> @Robert Hobbs @Jennifer Hickey @Walter Martinez 
> Testing in dev suggests that updating the appsettings, refreshing the app pool and site does not kick someone out.

> **Robert Hobbs** _
> 
> @Justin Pope @Jennifer Hickey @Walter Martinez just a reminder that for the deployment plan it would be good to know if it kicks out users when we update the appsettings

> **Justin Pope** _
> 
> @Robert Hobbs @Jennifer Hickey @Walter Martinez 
> I just went through a testing effort on DEV to comfirm that the changes to the appsettings would resolve the issue that Jim is reporting. I got Walter as a witness.
> 1) Confirmed that dev works
> Note: Adrain informed me that the company code that we are using in dev needs to be different so I will be updating that in azure
> 2) Confirmed that EPLAN results in the error that was reported
> 3) updated the app settings in dev to be that of what would be the EPLAN stack, and then reran the same report and was able to get the option codes that we are askin...

> **Justin Pope** _
> 
> @Robert Hobbs when testing in dev, I have to manually refresh the site and app pool for the appsettings to get refreshed.
> I would just recomend a hot fix situation to get the appsettings to be repushed out.

> **Robert Hobbs** _
> 
> @Justin Pope we need to know if updating app settings refreshes the app pools (test in dev pls)

> **Robert Hobbs** _
> 
> testing strategy: Justin updates the appsettings for the EPLAN servers and together with walter validates that both the selections report and integration API produces the correct result

> **Robert Hobbs** _
> 
> @Justin Pope we also need a URL (if it exists) for their dev service so we can test it in our dev environments before deployment

---

## Bugs

### [21836] Swagger Documentation is broken

**State:** Done | **Assignee:** Daniel Arwe | **Priority:** 2 | **Tags:** added

**Repro Steps:**

Description: Swagger documentation for VDS was working around Thanksgiving 2024 and then broken mid-Jan. 

 
https://dev.veodesignstudio.com/swagger/index.html
 

 
Daniel said: Chat is suggesting that this could be .NET version related, which seems likely since this endpoint hasn't changed since 2021.

**Child Tasks (5):**

- [21870] (Done) @DanielArwe Find the issue
- [21871] (Done) @DanielArwe Fix the issue
- [21872] (Done) @DanielArwe PR Review
- [21873] (Done) @DanielArwe PO Review
- [21874] (Done) @WalterMartinez Execute Tests

**Comments (2):**

> **Walter Martinez** _
> 
> ✅QA Validation Completed!

> **Daniel Arwe** _
> 
> @Jennifer Hickey, @Walter Martinez This endpoint is only called in one place in the UI.  Here's how to reproduce the call to verify that my code change to fix the Swagger UI error didn't break the endpoint's functioning:
> 
>  Impersonate contracted buyer
> Design Selections
> Click Add Custom Item button shown here
> Click Choose File....select a file....then click Save.
> Confirm item now has image.....

---

### [21928] Cannot create organization

**State:** Done | **Assignee:** Justin Pope | **Priority:** 1 | **Tags:** added; hotfix 2/24

**Repro Steps:**

Jim is reporting that in VEO Admin he cannot create a new organization.  

 
From QA (Jennifer):

**Child Tasks (1):**

- [22517] (Done) Execute Tests

**Comments (1):**

> **Walter Martinez** _
> 
> ✅QA Validation Completed! 
>  
> 
>  
> A SysAdmin is able to create a new Organization with no issues. 
> Also editing / accessing to an existing Organizations is possible with no impediments. 
> 
>  
> See attached video.

---

