# Sprint: Branding Theme Editor 6

**Dates:** 2025-03-26 → 2025-04-08
**Items:** 16 total (4 stories, 0 bugs, 12 tasks)

**Completion:** 14 / 16 done

---

## Stories (Product Backlog Items)

### [21393] Regression Test: Signin/Forgot Password

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
Move Signin/Forgot Password tests from .net conversion test suite to regression test suite (links above) 
Work includes: 
Signin view 
Forgot Password 
Welcome Email link 
Reset password link 
additional signin/password functionality I missed in the above list 
 Separate tests into atomic test cases (each test case focuses on testing 1 thing, but concider not duplicating efforts within the suite) 
Update test cases to add specific UI info relevant to front end framework switch 
Add Summary to each test case 
Update documentation for the view 
VDS Regression Testing list.docx 
add API calls 
flags that effect view 
???

**Child Tasks (1):**

- [22581] (Done) @WalterMartinez Write QA tests

**Comments (1):**

> **Jennifer Hickey** _
> 
> Copied from #21390

---

### [22248] Deployable RC ready for 3/31

**State:** Done | **Priority:** 3

**Child Tasks (3):**

- [22269] (Done) @JustinPope create RC
- [22270] (Done) @WalterMartinez Test RC In Staging
- [22271] (Done) @JenniferHickey run e2e automated test in staging

---

### [22562] Visualizer: Research and document current limitations and propose improvements

**State:** Done | **Assignee:** Justin Pope | **Priority:** 2 | **Tags:** No QA; research

**Description:**

Aaron is having some trouble with the way Areas interactive has organized some room scenes for Flintrock Homes. They have created a single whole house model that generally works for the customer, but then there is one primary bath that is only used for one plan. The visualizer does not work properly in this scenario.  

 
Roger did some work to support vignettes with our single instance visualizer, but from memory it doesn't support both vignettes and whole house in our configuration layer. It may be that we need to rethink our visualization layer to make this more manageable and to support the visualizer.  

 
Ideas:  
review the previous body of work and identify precise limitations in the visualizer and document them  
consider: direct plan mapping to room scenes. Builder->plan->scenes list  
 
 
Some possible work items to review:  
https://dev.azure.com/BuildOnTechnologies/VeoDesignStudio/_workitems/edit/18264
 

 
 
Questions:

**Acceptance Criteria:**

review the previous work done on the visualizer to support vignettes  
understand why Aaron's current Flintrock situation is not working  
update documentation (in this work item or wiki) that describe the current limitations with an explanation as to why they exist  
brainstorm improvements to the visualizer in these general areas:  
scene management / configuration  
loading or handling mixed case scene configuration (whole house + vignette(s))  
troubleshooting or support situations (there's a problem - is it us, is it the vendor? etc)  
 meet with the whole team to share knowledge  
 review the docs and the code with the PO so that we can draft work items to improve the system

**Child Tasks (7):**

- [22574] (To Do) @RobertHobbs PO Review
- [22592] (Done) @JustinPope Pour Over Code
- [22593] (Done) @JustinPope Review Previous Work
- [22594] (Done) @JustinPope Get With Aaron on Flintrock Issue
- [22595] (Done) @JustinPope Document Limations/Solutions
- [22596] (Done) @JustinPope Meeting With Stakeholders
- [22718] (To Do) @RobertHobbs PO Writes new work items

**Comments (3):**

> **Robert Hobbs** _
> 
> Suggestions for work: 
> fix: Problem with feature flag “Visualize All Selections in Home” 
> fix the flag so that when on, it sends all selections for the home across all surfaces, across all scene ids
> when off, it only sends the selections for the room + scene ID you are in 
> also, it properly switches the stream URL to the room that we intend to navigate instead of staying in the room 
> When we send them a room change event, we should probably specify scene ID + room name 
> Multiple URL Streams: 
> when we load DMH identify all unique streams by scene ID
> will their backend support this based on the ...

> **Jennifer Hickey** _
> 
> Notes from Jennifer:
> 
> Right now the visualizer works when there is one scene id for a whole house scene or different scene ids for each room as vignettes.
>  Aareas is wanting to send us vignette scenes, but with the same scene id which currently doesn't work with our system.
>  Whole Home
> one room scene with multiple rooms and you can move between the rooms without changings areas
> scene 9876 has 5 rooms as part of the "scene"
> 
>  Vignettes
> can't move between rooms in the visualizer
> could be a scene id with just one room
> scene 1234 with kitchen
> 
>  What we will likely add support for:
> could be a scene...

> **Justin Pope** _
> 
> Research Document:
> 22562 - Research Document.docx

---

### [22637] Automated testing: Create automated tests for HB Dashboard

**State:** Done | **Assignee:** Jennifer Hickey | **Priority:** 3 | **Tags:** added; automation; QA only

**Acceptance Criteria:**

create environment_data for each environment 
add dev to setup of automated tests 
tests for: 
hb no modules complete (landing page) 
hb with modules complete (next step and completed pills) 
prospective hb dashboard 
contracted hb dashboard 
expired hb dashboard 
completed hb dashboard

**Child Tasks (1):**

- [22648] (Done) @JenniferHickey code

---

