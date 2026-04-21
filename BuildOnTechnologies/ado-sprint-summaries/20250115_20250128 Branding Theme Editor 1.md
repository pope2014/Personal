# Sprint: Branding Theme Editor 1

**Dates:** 2025-01-15 → 2025-01-28
**Items:** 48 total (7 stories, 4 bugs, 37 tasks)

**Completion:** 47 / 48 done

---

## Stories (Product Backlog Items)

### [20032] Update VDS IIS Settings to display Server Name in Network Header

**State:** Done | **Assignee:** Daniel Arwe | **Priority:** 2 | **Tags:** Tech

**Description:**

Given as a VDS admin or Developer I am looking into a latency issue or random bug 
And I need to know which IIS server that my session is connected to, 
Then I should be able to view in Network Response Header the x-Server-Name 

 
Currently, it is not possible through developer tools to determine which IIS server a user is connected to. 
There are times, when one or a few users are experiencing an issue with the application or random latency issues, it might be necessary to see which server the user it connected to. 

 
Currently VEOINDAGO IIS settings provide an 'X-Server-Name:' with the Web Server the instance is connected to.  This setting is currently not enabled on the VEODESIGNSTUDIO IIS servers, so it is not possible for an admin or someone from BuildOn support to determine the server the user's session is connected to, hampering troubling shooting possible web server issues or outages.    

 
The setting on the IIS servers needs to be updated to allow for the server name to be displayed, and to be more in line with the current settings of VEOINDAGO web servers where this setting is enabled.

**Acceptance Criteria:**

Given that a request is made of the VDS application (content or api) 
When the response is delivered 
Then a header named 'X-Server-Name' should be present 
And the header value should be the name of the server (i.e. BLD-VDSWEBDEV01) 
 
Given that a request is made of the Integration API 
When the response is delivered 
Then a header named 'X-Server-Name' should be present 
And the header value should be the name of the server (i.e. BLD-VDSWEBDEV01) 
 
 
Given that a request is made of the Scheduler application (content or api) 
When the response is delivered 
Then a header named 'X-Server-Name' should be present 
And the header value should be the name of the server (i.e. BLD-VDSWEBDEV01) 
 
 
 
 
 
ideally, this would be handled by the application middleware itself, although it's also possible to do it in IIS.  My preference is middleware, because it reduces the provisioning requirements when creating a new host/server. 

 

 
Added:  
We want to do this on every VDS server. DEV/QA/P...

**Child Tasks (10):**

- [21172] (Done) @DanielArwe Clarify instructions (if needed)
- [21175] (Done) @JenniferHickey Write QA Test
- [21176] (Done) @JenniferHickey Execute QA Test
- [21177] (Done) @RobertHobbs PO Review
- [21178] (Done) @DanielArwe Add server name to response & validate (WEBDEV01)
- [21180] (Done) @DanielArwe Add server name to response & validate (BLD-VDSWEBSTG02)
- [21188] (Done) @DanielArwe Add server name to response & validate (BLD-VDSWEBSTG01)
- [21189] (Done) @DanielArwe Add server name to response & validate (BLD-VDSWEB01)
- [21190] (Done) @DanielArwe Add server name to response & validate (BLD-VDSWEB02)
- [21191] (Done) @DanielArwe Add server name to response & validate (BLD-VDSWEB03)

**Comments (8):**

> **Jennifer Hickey** _
> 
> BLD-VDSWEBSTG01✅❤🚲 
>  BLD-VDSWEBSTG02 ✅❤🚲 
>  BLD-VDSWEBDEV01✅❤🚲 
>  BLD-VDSWEB01✅❤🚲 
>  BLD-VDSWEB02✅❤🚲 
>  BLD-VDSWEB03✅❤🚲

> **Eric Hickey** _
> 
> @ Cole responded that VDS is set up as a round robin load balancer, with no weighting (all servers are equal in 'weight').  Traefik's documenation is very light as to what it means by vanilla 'round robin', so I asked my friend ChatGPT.  It confirmed (as best as ChatGPT will ever confirm), that each individual request is evaluated and sent to the next node in the list.  No other information is used to direct that request.  So, two users access VDS at the same time will have their requests interspersed, and one by one they will be directed to the next node (from the previous request).

> **Robert Hobbs** _
> 
> @Eric Hickey can we track down exactly how the load balancing is working so we know how to handle support cases?

> **Eric Hickey** _
> 
> @ @ done.  let me know when you expect this to show up in refinement, and I'll try my best to attend so I can speak to it.

> **Robert Hobbs** _
> 
> @Joe Ebeling @Eric Hickey Reminder that to score this we need some AC - let me know if you need me to write it.

> **Joe Ebeling** _
> 
> @Robert Hobbs @Eric Hickey ; Robert, sorry about that.  Thanks for letting me know so in the future I get Work Items added to the correct location.

> **Robert Hobbs** _
> 
> @Joe Ebeling @Eric Hickey New work items of this nature should go into the product team, ideally near the scoring demarcation area. I have moved it. Also, the work item needs AC.

> **Joe Ebeling** _
> 
> @Eric Hickey: Please review the above description and let me know if any changes need to be made. cc:  @Robert Hobbs

---

### [20286] Test Automation: resolve nightly run errors

**State:** Done | **Assignee:** Jennifer Hickey | **Priority:** 3 | **Tags:** automation; QA only

**Description:**

The nightly runs of the automated test suite have random errors. These need resolved so we can trust that an automated test failure is due to an actual failure of the application.

**Acceptance Criteria:**

Resolve nightly run errors for Chrome in QA to get 100% passing rate.

**Comments (1):**

> **Jennifer Hickey** _
> 
> @Robert Hobbs@Joe Ebeling I'd like this story brough into the sprint today.

---

### [20308] Branding Theme Configuration: variable simplification - Architecture

**State:** Done | **Priority:** 3 | **Tags:** No QA

**Description:**

We have a concept for UI work on the variable simplification for theme configuration. That is referenced in: https://dev.azure.com/BuildOnTechnologies/VeoDesignStudio/_workitems/edit/19238 

 
We need consensus from the team on how to architect a solution for this.

**Acceptance Criteria:**

In general we want a solution that embodies:  
a simplification of the variables a user must maintain in the editor (20-25 variables total)  
they can apply values to those variables and implement a new theme and the themes we have now  
the solution handles some exception scenarios  
the solution handles reorganizing the UI elements affected when one of the 20-25 variables is modified  
that is, Primary Color 1 may affect some element like button background today, but tomorrow we may want a new variable called Button Color that affects that instead  
   The team documents their proposed solution sufficient to update the implementation solution.  

 
If the architecture solution modifies the proposed UI mockups in some meaningful way, the UI mockup is updated.

**Comments (1):**

> **Robert Hobbs** _
> 
> https://www.figma.com/board/pGHYF0cUVNWWVQKLcnj9hV/VDS-Branding-Features?node-id=0-1&t=6ablJzsYbVhYSizb-1

---

### [20349] Release 1/21 (Tue)

**State:** Done | **Priority:** 3 | **Tags:** No QA

---

### [21139] Add Completed Date to XML export proc

**State:** Done | **Assignee:** Justin Pope | **Priority:** 1 | **Tags:** deploy 1/21; hotfix; mufasa report

**Description:**

Echelon is interested in getting the "selections date" of a design session when imported into Echelon.

**Acceptance Criteria:**

verify the proc being used to generate XML output for WBS import (document)  
add the completed date field to the XML output header  
provide SQL to demonstrate that it is functional or steps to import a session into the WBS_Staging version of Echelon  
 NOTE: once complete, let's have a conversation about deployment (assuming it is proc only). We also need to inform Cindy/Echelon once it is available.

**Child Tasks (7):**

- [21169] (Done) @JenniferHickey Write QA Test
- [21170] (Done) @JenniferHickey Execute QA Test
- [21171] (Done) @RobertHobbs PO Review
- [21186] (Done) @JustinPope Research / Document import/export process from VDS to WBS
- [21192] (Done) @JustinPope Development
- [21193] (Done) @JustinPope Dev Testing
- [21208] (Done) @JustinPope PR Review

**Comments (6):**

> **Robert Hobbs** _
> 
> @Jennifer Hickey wanted to say thanks for the screen cap below - made writing release notes easier. 😊

> **Jennifer Hickey** _
> 
> QA Confirmation

> **Justin Pope** _
> 
> added sql scripts for deployment and testing efforts.
> The test script queries 5 sessions that have a completed date greater that 1/1/2024 and then grabs the xml doc from the procedure, the out put shows the session id, completed date, and first completed date.

> **Justin Pope** _
> 
> Cindy stated that including both completed_date and first_completed_date is fine. I am moving forward with both.

> **Justin Pope** _
> 
> Meeting with Cindy and crew confirmed that the procedure that they used on their end is [vds_sessionSelectionsXMLExport]. I will be making changes to this procedure.
> The question of what they wanted exactly was raised due to the fact that CompletionDate changes and we store FirstCompletetionDate as well. Cindy will get back with me with confirmation on that.
> Since vds_sessionSelectionsXMLExport is used, there seems that there is needed code clean up with the fact that vds_sessionSelectionsXMLExport is a rewrite of vs_selVeoSolutionsSelectionSetDataExport.

> **Robert Hobbs** _
> 
> DECLARE @xml XML
> EXEC vs_selVeoSolutionsSelectionSetDataExport @session_id_orig = '2F1255FD-1257-4F5A-846B-05D6C8127DE7', @xml = @xml OUT
>  
> SELECT @xml

---

### [21162] Test "Last 2024-First2025" in Staging (x3)

**State:** Done | **Assignee:** Walter Martinez | **Priority:** 3

**Child Tasks (6):**

- [21163] (Done) @WalterMartinez Execute Tests Test in Staging RC 1
- [21164] (Done) @JenniferHickey Run Automated Happy Path RC1
- [21252] (Done) @JenniferHickey Automated Happy Path RC 2
- [21253] (Done) @JenniferHickey automated happy path RC 3
- [21254] (Done) @WalterMartinez Execute Tests test in staging rc 2
- [21255] (Done) @WalterMartinez Execute Tests test in staging rc 3

---

### [21375] Test in Staging: Sprint - Theme Editor Ver1

**State:** Done | **Assignee:** Walter Martinez | **Priority:** 3

**Child Tasks (2):**

- [21376] (Done) @JenniferHickey run automated happy_path
- [21377] (Done) @WalterMartinez Execute Tests

---

## Bugs

### [18939] Scheduler: can not move appointment

**State:** Done | **Assignee:** Reid Wilson | **Priority:** 2 | **Tags:** replicate?

**Repro Steps:**

There are 3 bug cases to fix as part of this bug story. 1 code change fixes all 3 cases. The first cases is described here: 

 
Noticed this happeng when looking into scheduler work. This is happening when the logged in user is apart of multiple organizations.
 

1) In Scheduler, I am trying to move an appointment on 11-15 to 11-18

2) I get the Move Appointment popup msessage

 

 
3) appointment still at 11-15 

I'm seeing in the console log an error:
 

 

 

 
Here is a more concise way to reproduce Case #1. 
Case #1:  
Log in. 
Set your builder to a specific builder, call it Builder A. 
Find an appointment associated with a builder other than A. This is possible because while the designer list is filtered down to only include those in the selected builder, designers can still work for multiple builders, and as such, the system will show appointments for those other builders. 
Move the appointment anywhere else. 
 Expected Result: You should still be able to move the appointment. 
...

**Child Tasks (5):**

- [21165] (Done) @WalterMartinez Execute Tests
- [21166] (Done) @RobertHobbs PO Review
- [21181] (Done) @ReidWilson Attempt to reproduce the issue
- [21184] (Done) @ReidWilson Fix the issue if reproduceable
- [21185] (Done) @ReidWilson PR Review

**Comments (16):**

> **Walter Martinez** _
> 
> ✅QA Validation Completed! 
> 
> Tested all three scenarios and no longer getting the silent failure. 
> See 3 videos attached one per each scenario. (The videos are named after each scenario, i.e.: S1S is Scenario 1, success!)

> **Jennifer Hickey** _
> 
> @Reid Wilson @Walter Martinez @Robert Hobbs @Joe Ebeling
> Bug on hold to determine if it is valuable enough to continue work on. PR done. Will wait in QA for confirmation of its wanted in sprint before investing additional QA time on this bug. Once determined, QA will move forward.

> **Jennifer Hickey** _
> 
> @Reid Wilson @Robert Hobbs @Joe Ebeling @Walter Martinez Thanks for the video. We'll watch and if Walter can't reproduce in QA by tomorrow morning then you guys can pair. We'll chat about it tomorrow in Daily Scrum.

> **Reid Wilson** _
> 
> @Jennifer Hickey @Robert Hobbs @Joe Ebeling @Walter Martinez 
> 
> Thank you for your comments, Jennifer. I agree with your scope creep comment. I will be holding the code changes in PR not only until approved by a developer but also until the team agrees we still want to move this bug fix forward considering all of the new information.
> 
> Regarding Walter not being able to reproduce the scenarios on new appointments (while being successful with old appointments), that is not the same experience I had in development. New appointments should fail just the same. In fact, I am attaching a video to this...

> **Jennifer Hickey** _
> 
> @Reid Wilson @Robert Hobbs @Joe Ebeling @Walter Martinez 
> Walter is attempting to reproduce the scenarios above and is not able to reprroduce on newly created appointments. He is able to reproduce on older appts - for example, ones from December. @Reid Wilson was this the same experience you had when dev testing? What is the parameter for appointments to experience this issue (meaning it shoudl always happen, should only happen when past a certain age, etc). While QA is currently attempting to reproduce consistently, having this information will streamline our discovery process, especially if ...

> **Jennifer Hickey** _
> 
> @Reid Wilson @Robert Hobbs @Joe Ebeling @Walter Martinez I tagged this scope creeep because the story was scored by QA based on testing for the single described reproduction steps. We have added 2 additional scenarios that we want included within this bug so we now have 3 scenarios to test instead of 1. We often use scope creep to only describe additional work for devs, but QA also has work within each story/bug and the scope of our work has increased 3 fold here. For bugs, the "AC" = that the repro steps do not produce the same result.. With the additional work found and done, QA now has 3 sc...

> **Reid Wilson** _
> 
> @Robert Hobbs @Jennifer Hickey @Joe Ebeling @Walter Martinez 
> 
> I have updated the repro steps to include all 3 cases. Please get in touch if you have any questions or concerns.
> 
> All 3 cases fall under a more general category of not being able to move appointments when the corresponding homebuyer card is not present. The code was trying to apply an update to the corresponding homebuyer card whenever the move takes place, but it fails to account for the fact that the homebuyer card may not be present. Updating the UI of a non-present homebuyer card is entirely unnecessary, so I only tell the sys...

> **Robert Hobbs** _
> 
> @Jennifer Hickey @Reid Wilson @Joe Ebeling @Walter Martinez We have identified this is an issue in production. I have an email out to scheduling coordinator to gather a bit more intel on how they process moves so that it can help me prioritize this. 
> 
> I am a bit confused about the term "scope creep" being applied here for a bug without AC. We have a bug, it takes a certain amount of effort to fix it. @Reid Wilson can you post your notes about the fix here so we can determine if your fix affects other use cases that might need to be regression tested?

> **Jennifer Hickey** _
> 
> @Robert Hobbs @Reid Wilson @Joe Ebeling @Walter Martinez Please adjust AC for additional scope to ensure QA covers all dev work that was done.

> **Reid Wilson** _
> 
> @Robert Hobbs
> 
> Thank you for that response. I think I understand now (at least mostly). I will allow this move operation to complete successfully.

> **Robert Hobbs** _
> 
> @Reid Wilson @Walter Martinez @Jennifer Hickey  
> 
>  
> This stuff is a bit complicated so bear with me here.  
> 
>  
> In terms of the scheduler, when moving an appointment the user cannot opt to change the builder.  
> 
>  
> They can move the appointment to any valid Designer meaning:  
> a designer they can see in the scheduler based on their own settings 
> a designer that has the buyer's builder associated with the appointment they are trying to move 
> a designer that doesn't have an existing appointment in that time slot where there would be an overlap.  
>  There may also be a check on working location - I ...

> **Reid Wilson** _
> 
> @Walter Martinez @Jennifer Hickey @Robert Hobbs 
> 
> Good news / bad news. Or maybe I will just say interesting news. After a good bit of effort, I was successful in reproducing the issue. Here is what I figured out.
> 
> The app does not let you move an appointment associated with Builder A if the selected organization of the logged in user is set to a builder other than A, call it B. The reason that a user can view an appointment associated with Builder A is that designers can work for multiple builders. If Designer A works for Builder B, he/she will show up in the list. But if Designer A also work...

> **Robert Hobbs** _
> 
> Testing Note: Justin says that the buyer card for this buyer was not loaded/displayed in the buyers list on the left hand panel.

> **Walter Martinez** _
> 
> Unable to replicate it, either.
> Added a video from QA env.

> **Jennifer Hickey** _
> 
> @Robert Hobbs @Walter Martinez I wasn't able to reproduce on QA. Justin was getting the issue in his local environment, but knew from the code what the issue was related to. Would it be helpful is @Justin Pope added a video?

> **Robert Hobbs** _
> 
> @Jennifer Hickey @Walter Martinez I attempted to reproduce this but could not. Can you all try?

---

### [20323] Selections Report/Catalog Documents: Documents are not automatically selected with flag ON

**State:** Done | **Assignee:** Daniel Arwe | **Priority:** 2 | **Tags:** NOT .net

**Repro Steps:**

Log into VDS and impersonate a contracted HB 
Go to Design Selections and make sure the buyer has at least 1 non-estimated item selected that has Catalog Documents associated with the item 
Make sure no Catalog Documents are checked/selected for inclusion in the selections report

 
Log into VEO Admin and turn this flag ON

 
Back in VDS, log out, back in, re-impersonate same buyer, and navigate to HB Summary and click "Selection Report" to open the Selection Report Options dialog.

Note that there are no Catalog Documents selected, when they should ALL be selected.  Click "Catalog Documents", to show the Catalog Documents pane, and drill down to confirm that there are NO Catalog Documents selected.  They should ALL be selected.

**Child Tasks (3):**

- [21167] (Done) @WalterMartinez Execute Tests
- [21168] (Done) @RobertHobbs PO Review
- [21203] (Done) @DanielArwe Investigate

**Comments (2):**

> **Daniel Arwe** _
> 
> 

> **Daniel Arwe** _
> 
> @Robert Hobbs , @Walter Martinez , @Jennifer Hickey   False alarm on this bug.  Upon further review of what the expected behavior is, both for the Selections Report Options dialog and the catalog item card, the system is behaving exactly as it should.  
> 
> Move to 'DONE', I presume? Please advise.

---

### [21230] .NET 9: Fix slowdown from TenantRepository

**State:** Done | **Assignee:** Justin Pope | **Priority:** 2 | **Tags:** added

**Repro Steps:**

There are 4 locations identified from the Staging environment which exhibit massive slowdowns. These slowdowns are a result of the .NET 9 conversion. The 4 locations are defined here (all in Veo Admin): 

 
1) Add Tenant Dialog 
2) Organization Documents 
3) Tile Pattern Report 
4) Plan Mapping 

 
Entering these dialogs/views before the bug fix would be exceedingly slow. After the change, the speed should be significantly faster. The Staging environment can be used as a benchmark for comparison. The API call that can explicitly be inspected in the Network tab of DevTools is "tenants".

**Child Tasks (2):**

- [21250] (Done) @WalterMartinez Execute Tests
- [21251] (Done) @RobertHobbs PO Review

**Comments (1):**

> **Walter Martinez** _
> 
> ✅QA Validation Completed! 
> 
> All four scenarios above were tested and the response time was way less than when we reported this bug. 
> See attached video

---

### [21279] .Net 9: Session creation timeout

**State:** Done | **Assignee:** Justin Pope | **Priority:** 2 | **Tags:** added; deploy 1/21; hotfix

**Repro Steps:**

David Oliver made me aware of a help desk ticket related to session creation and timeouts.  

 

 
Thank you for all your help. @Support at Veo Design Studio I am still having issues with creating a session. After I select the structural options and try to create the session I get a loading message which then times out to an error message. See the clips below. I have tried 3 times to create a new session. Please advise.
 

 

 

 

 

 

 

 

 
Rob's repro steps:  

 
Search for the user or session: 291d3751-e43d-421b-bca8-3d6fbf3d0f95 
Navigate to homebuyer summary  
Click Create Session  
I did not change structural options from default  
Click Create Session  
I received a timeout error

**Child Tasks (2):**

- [21288] (Done) @WalterMartinez Execute Tests
- [21289] (To Do) @RobertHobbs PO Review

**Comments (5):**

> **Walter Martinez** _
> 
> ✅QA validation completed! 
> 
> Executed manual happy path and also performed a new session creation and interacted with the OP menu. All working as expected. 
> 
> SEE ATTACHED VIDEO FOR SESSION CREATION

> **Justin Pope** _
> 
> Similar issues of time out and slow reponse time was experienced in the Intergration API as well as for viewing Option Pricing in production. The fix that was implemented was refining the way EF Core was building the query.
> 
> Points of noticed bottle necks were:
> 1) Session Creation (as described in the bug)
> 2) Navigating through Option Pricing (the menu was not building)

> **Robert Hobbs** _
> 
> I tested this in preview and did not get a timeout

> **Robert Hobbs** _
> 
> session id: 291d3751-e43d-421b-bca8-3d6fbf3d0f95

> **Robert Hobbs** _
> 
> 

---

