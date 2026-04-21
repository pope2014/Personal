# Sprint: Assigned Communities 2

**Dates:** 2025-10-08 → 2025-10-21
**Items:** 89 total (11 stories, 2 bugs, 76 tasks)

**Completion:** 89 / 89 done

---

## Stories (Product Backlog Items)

### [26021] Assigned Communities: Sales Counselor Dashboard

**State:** Done | **Assignee:** Daniel Arwe | **Priority:** 2 | **Tags:** assigned communities

**Description:**

Some customers want to assign communities to specific users (mostly Sales Counselors). In this model the user should only be able to register and see data for their assigned communities.

**Acceptance Criteria:**

Assuming the flag described above is ON, and the user has at least one community associated   
the communities drop down is limited to associated communities for the currently selected organization  
on org change, we update the communities list: If the user has more than one org, and they switch to an organization that does not have the flag on, OR they have no associated communities for that org, the list contains all communities for that organization.  
 
 
Implementation note: the effort related to storing community / tenant plan data for the assigned communities for the user is done in this story, hopefully to be used elsewhere in the app.

**Child Tasks (8):**

- [26468] (Done) @WalterMartinez Write QA Tests
- [26469] (Done) @WalterMartinez Execute QA Tests
- [26470] (Done) @RobertHobbs PO Review
- [26476] (Done) @DanielArwe Determine best location to filter
- [26477] (Done) @DanielArwe Review research on 26020
- [26478] (Done) @DanielArwe Implement filtering (front/backend TBD)
- [26480] (Done) @DanielArwe Backend support for filtering (select best method for all Assigned Communities stories)
- [26481] (Done) @JustinPope Postman updates, if needed (only if endpoints added/changed)

**Comments (1):**

> **Daniel Arwe** _
> 
> **Sales Counselor Dashboard:**
> 
> ![==image_0==.jpeg](https://dev.azure.com/BuildOnTechnologies/ddde192e-e31e-4e51-af4b-3b7b4221266a/_apis/wit/attachments/fe4e1055-3f0b-4269-a921-5ae0a2a7b913?fileName===image_0==.jpeg) 
> 
> NOT impersonating a homebuyer....
> ![==image_1==.jpeg](https://dev.azure.com/BuildOnTechnologies/ddde192e-e31e-4e51-af4b-3b7b4221266a/_apis/wit/attachments/8b49661c-401a-4183-a112-7f4910f9943a?fileName===image_1==.jpeg) 
> 
> Impersonating a Homebuyer...
> 
> ![==image_2==.jpeg](https://dev.azure.com/BuildOnTechnologies/ddde192e-e31e-4e51-af4b-3b7b4221266a/_apis/wit/attachments/7bd6f859-...

---

### [26022] Assigned Communities: User Registration

**State:** Done | **Assignee:** Daniel Arwe | **Priority:** 3 | **Tags:** assigned communities

**Description:**

Some customers want to assign communities to specific users (mostly Sales Counselors). In this model the user should only be able to register and see data for their assigned communities.

**Acceptance Criteria:**

Given a builder with the feature flag: Restrict Users to Assigned Communities is ON  
and a sales user with at least one assigned community:  
the communities list for the plan selector is limited to the user's allowed communities  
the user can register a new user 
the user can associate an existing user with one of their allowed communities  
 Additionally:  
Verify that if logged in as a sys-admin there are NO limits on communities available for user registration for a selected account / organization

**Child Tasks (6):**

- [27958] (Done) @WalterMartinez Write QA Tests
- [27959] (Done) @WalterMartinez Execute QA Tests
- [27960] (Done) @RobertHobbs PO Review
- [27971] (Done) @DanielArwe Filter dropdown communities according to user assigned communities
- [27975] (Done) @DanielArwe Logic to retrieve and respect feature flag
- [27976] (Done) @DanielArwe PR

**Comments (1):**

> **Robert Hobbs** _
> 
> PO Review Notes  
> 
>  
> flag off/ no assigned: 11 communities 
> 
>  2. flag off / 2 assigned communities 
> 
> 3.flag on / 2 assigned communities 
> 
> 4. flag on / NO assigned communities 
> 
> 5. flag on / 1 assigned community that is ARCHIVED 
> 
> 6. flag on / 1 assigned community is ARCHIVED, another is not 
> 
> 7. Can register a new buyer using an assigned community

---

### [26023] Assigned Communities: Edit User Profile -plans list and add new plan

**State:** Done | **Assignee:** Justin Pope | **Priority:** 2 | **Tags:** assigned communities

**Description:**

Some customers want to assign communities to specific users (mostly Sales Counselors). In this model the user should only be able to register and see data for their assigned communities.

**Acceptance Criteria:**

Assuming the flag Restrict Users by Assigned Communities is ON for the currently selected org  
and the user has 1 or more communities allowed  
 The plans list is filtered to those plans that share your assigned communities  
 
 When the user clicks Add Plan and views the edit plan dialog  
the communities list is limited to allowed communities for the user

**Child Tasks (12):**

- [27952] (Done) @WalterMartinez Write QA Tests
- [27953] (Done) @WalterMartinez Execute QA Tests
- [27954] (Done) @RobertHobbs PO Review
- [27964] (Done) @JustinPope Review fetching Communities
- [27966] (Done) @JustinPope Implement filtering of Communities
- [27967] (Done) @JustinPope Dev Testing
- [27987] (Done) @JustinPope refactor: editUserProfileService.js to a typescript file
- [27989] (Done) @JustinPope refactor GetProfilePlans use case and ProfilePlanDTO to return communityId
- [28030] (Done) @JustinPope PR
- [28212] (Done) @JustinPope Defect: A user can potential contract a plan even if there is already a contracted plan
- [28213] (Done) @JustinPope PR 2
- [28214] (Done) @WalterMartinez Execute QA Tests 2

**Comments (3):**

> **Robert Hobbs** _
> 
> Pushing back to In Dev because of issues around plan contracting - by not having the other plans the logic is showing the register contract button when it should not.

> **Robert Hobbs** _
> 
> REVIEW notes: assigned communities are loaded on sign-in and so would not be refreshed by exiting / entering various views if there are changes. 
> 
> Archived checkbox in add/edit plan - probably should not

> **Robert Hobbs** _
> 
> PO Review Checklist:  
> user: sales0914@mailinator.com 
> 
>  
> Flag off: 
> view all existing plans, create at least one plan with a community we intend to exclude 
> 
> IMPORTANT: the communities list does not contain any Archived communities or a community where ALL tenant plans have been archived. 
>  Flag on / no assigned communities 
> verify list of plans and available communities to add same as scenario 1 
>  Flag on / 1 assigned community  
> verify list of plans is filtered to 1 community  
> 
> verify available to add is only that community 👍 
> added Lakes of Pine Forest, NONE, Bandera
>  Flag on / 1 assigne...

---

### [26024] Assigned Communities: User Impersonation

**State:** Done | **Assignee:** Daniel Arwe | **Priority:** 2 | **Tags:** assigned communities

**Description:**

Some customers want to assign communities to specific users (mostly Sales Counselors). In this model the user should only be able to register and see data for their assigned communities.

**Acceptance Criteria:**

Assuming the flag Restrict Users by Assigned Communities is ON for the currently selected org  
and the user has 1 or more communities allowed  
 When searching for users to impersonate, the system will only return users who have a tenant plan assigned that shares a community with the current user's allowed communities for that builder

**Child Tasks (9):**

- [27955] (Done) @WalterMartinez Write QA Tests
- [27956] (Done) @WalterMartinez Execute QA Tests
- [27957] (Done) @RobertHobbs PO Review
- [27968] (Done) @DanielArwe Implement filtering returned users by tenant plans cross-ref. with user assigned communities
- [27969] (Done) @DanielArwe PR
- [27973] (Done) @DanielArwe Check and respect feature flag logic
- [28199] (Done) @JustinPope Defect: Address on the user shows addresses that a user shouldn't see
- [28200] (Done) @JustinPope PR 2
- [28201] (Done) @WalterMartinez Execute QA Test 2

**Comments (4):**

> **Robert Hobbs** _
> 
> PO REVIEW NOTES:
> 
> flag off / no assigned communities 
> 
> flag off / 1+ assigned communities 
> same 
> 
> flag on / 1+ assigned communities 
> with lakes of pine forest 
> 
> without lakes of pine forest assigned 
> 
> flag on / no assigned communities 
> flag on / 1 assigned archived community 
> flag on / 1 + 1 assigned archived community 
> 
> impersonation regression testing - all works

> **Daniel Arwe** _
> 
> @ , @ , @ , @ 
> 
> Based on my research below, assuming a client-centric (frontend) approach to filtering, here are the big-picture changes as I see them....
> 
> Backend Changes:
> - Modify DTO to return additional info. on the communties for each user's list of profile plans
> - Leave the parameters for the endpoint, concerning current page and page size, the same.  This will allow other callers of this endpoint to continue calling it without modification.
> 
> Frontend Changes:
> - Modify frontend mirroring DTO to receive the additional community info. passed from the backend.
> - Implement client-side pagina...

> **Daniel Arwe** _
> 
> @ , @ , @ , @ Bear with my long explanation here.  I've uncovered some things that will inform our decision-making moving forward with this story.
> 
> Upon doing some additional research leading up to this story, I uncovered some interesting wrinkles that give us a few more things to think about in how we want to approach filtering the list of users returned from the search endpoint....
> 
> _HomeBuyerController.cs  => GetHomebuyerSearchResults method._
> 
> First of all, the frontend call to the endpoint takes the same amount of time with a page size of 8 as it does with a page size of 0 (in other words...

> **Daniel Arwe** _
> 
> @ , I was poking around on this story and saw this widget on the SC dashboard.  Should this be handled in this story?  I'm assuming that, since we didn't include this piece in the scoring, that it should likely live in its own future story.  Please advise.
> (CC: @ , @ , @ , @ )
> 
> ![image.png](https://dev.azure.com/BuildOnTechnologies/ddde192e-e31e-4e51-af4b-3b7b4221266a/_apis/wit/attachments/adea5550-c08b-4981-92d6-aed259a47d5c?fileName=image.png)

---

### [26025] Assigned Communities: Buyer Experience

**State:** Done | **Priority:** 2 | **Tags:** added; assigned communities; May Carry

**Description:**

Some customers want to assign communities to specific users (mostly Sales Counselors). In this model the user should only be able to register and see data for their assigned communities.

**Acceptance Criteria:**

Given that the assigned communities flag is OFF OR the user has no assigned communities,  
the behavior of buyer experience is normal as it is in production today.  
 
 

 
Given the flag Restrict Users by Assigned Communities is ON for the currently selected org 
and the user has 1 or more communities allowed  
and the user impersonates a buyer that has at least 1 plan with the assigned communities for the user:  

 
Assumptions:  
There is an algorithm that calculates a "score" for each plan for the buyer and chooses the highest score plan to show when buyer experience is enabled.  
Q: does plan expiration weight into the algorithm ?  

 
For an explanation of whether profile plans are shown for a buyer signed in, see the following screen shot with logic of how profile plans get filtered based on the presence/absence of a contracted plan and/or the use prospective feature flag. 

 

 

 
To elaborate on the rules around plan selection and buyer experience 
When a buyer is signed in, ...

**Child Tasks (6):**

- [28187] (Done) @DanielArwe Review code for Filtering implementation
- [28188] (Done) @DanielArwe Implement Filtering
- [28189] (Done) Dev Filtering testing
- [28190] (Done) @WalterMartinez Write Test Cases
- [28191] (Done) @WalterMartinez Execute QA Tests
- [28192] (Done) @RobertHobbs PO Review

---

### [26059] Assigned Communities: Option Pricing 

**State:** Done | **Assignee:** Reid Wilson | **Priority:** 2 | **Tags:** assigned communities

**Acceptance Criteria:**

when signed in as a user, navigating to option pricing the user cannot see communities to which they are not assigned  
when impersonating a buyer with buyer experience on navigating to option pricing the user cannot see communities to which they are not assigned

**Child Tasks (6):**

- [27961] (Done) @WalterMartinez Write QA Tests
- [27962] (Done) @WalterMartinez Execute QA Tests
- [27963] (Done) @RobertHobbs PO Review
- [27970] (Done) @ReidWilson Review fetching Communities
- [27972] (Done) @ReidWilson Implement filtering of Communities
- [27974] (Done) @ReidWilson Dev Testing

**Comments (1):**

> **Robert Hobbs** _
> 
> PO REVIEW NOTES:  
> flag off / no assigned communities  
> 
>  
> 
>  
>  
>  
>  
>  
>  
>  
> flag off / 1+ assigned communities  
> same 
> 
> flag on / 1+ assigned communities 
> with lakes of pine forest  
>  
>  
> without lakes of pine forest assigned  
> 
>  
> flag on / no assigned communities 
> flag on / 1 assigned archived community 
> flag on / 1 + 1 assigned archived community

---

### [27836] Rename "Design Center" to "Design Studio" in lifestyle survey

**State:** Done | **Assignee:** Justin Pope | **Priority:** 1 | **Tags:** TM Work

**Description:**

TM has asked for a change to the lifestyle survey question text. I am wondering if we can accommodate this change without a full implementation of customization?

**Acceptance Criteria:**

In the lifestyle survey for the question/answer step 1, rename the response for "Design Center" to "Design Studio"

**Child Tasks (5):**

- [27934] (Done) @JustinPope Edit String of the Questionnaire
- [27935] (Done) @JustinPope PR
- [27946] (Done) @WalterMartinez Write QA Tests
- [27947] (Done) @WalterMartinez Execute QA Tests
- [27948] (Done) @RobertHobbs PO Review

**Comments (2):**

> **Walter Martinez** _
> 
> ✅QA Validation Completed! 
> 
> PFA some screenshots.
> 
> Homebuyers that answered the Lifestyle Snapshot before. 
> 
>  
> Impersonating Homebuyers that answered the Lifestyle Snapshot before. 
> 
> Editing values as a HB that answered Lifestyle Snapshot before. 
> 
> Brand new Homebuyers. 
> 
> Impersonating brand new Homebuyers
> 
> Homebuyers that did not answer the Lifestyle Snapshot before. 
> 
> Impersonating Homebuyers that did not answer the Lifestyle Snapshot before.

> **Robert Hobbs** _
> 
> Previous users will still see "Design Center". All new users will see the new wording.

---

### [27837] Remove / Update training section from Welcome to VDS module

**State:** Done | **Assignee:** Reid Wilson | **Priority:** 1

**Description:**

Recently, we developed some issue with our public training site. I can't say for sure the reason. I have heard that it is because the content is not quite appropriate for some customers. There may be other reasons.  

 
In any case, it came to my attention that part of the "Welcome to VEO" interactive module was not appropriate if the training link isn't functional.

**Acceptance Criteria:**

Make training link dynamic / hide the bottom section 
Give that in the training links for the Homebuyer legacy role there exists a URL defined for the current builder,  
the module behaves as normal EXCEPT  
the link to training resources uses the URL defined in the homebuyer legacy role for the current builder  

 
Given there is NO training link defined for the homebuyer legacy role for the current builder then the box containing "Looking for additional information?" is hidden.  

 
Note: after a lively discussion, we decided to keep the module completion the same - it completes on module load. We owe Daniel 20m of life. Actually, the "Complete this step" button already exists, so we will be keeping it that way.

**Child Tasks (7):**

- [27938] (Done) @ReidWilson PR
- [27943] (Done) @ReidWilson Fetch possible training link
- [27944] (Done) @ReidWilson Change the link to respect the training link
- [27945] (Done) @ReidWilson Conditional rendering to respect existence of training link
- [27949] (Done) @WalterMartinez Write QA Tests
- [27950] (Done) @WalterMartinez Execute QA Tests
- [27951] (Done) @RobertHobbs PO Review

---

### [27852] RC for 10/13 deployment

**State:** Done | **Priority:** 3 | **Tags:** Carried

**Child Tasks (4):**

- [27853] (Done) @DanielArwe Create and Deploy RC
- [27854] (Done) @WalterMartinez Test RC in Staging
- [27855] (Done) @WalterMartinez Run e2e automated Test in Staging
- [27856] (Done) @DanielArwe Deployment Planning

---

### [27933] Regression Test: Help/Support

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
 Move Help/Support tests from .net conversion test suite to regression test suite (links above) 
Separate tests into atomic test cases (each test case focuses on testing 1 thing, but consider not duplicating efforts within the suite) 
Update test cases to add specific UI info relevant to front end framework switch 
Add Summary to each test case 
Update documentation for the view 
VDS Regression Testing list.docx 
add API calls 
flags that effect view 
???

**Child Tasks (1):**

- [27932] (Done) @WalterMartinez Write Test Cases

**Comments (1):**

> **Walter Martinez** _
> 
> Copied with all attachments and links from #26483

---

### [27939] Interfacelift Training " Assigned Communities 3"

**State:** Done | **Priority:** 3

**Child Tasks (3):**

- [27940] (Done) @DanielArwe Daniel Training Time
- [27941] (Done) @JustinPope Justin Training Time
- [27942] (Done) @ReidWilson Reid Training Time

---

## Bugs

### [28084] New User causes 400 error on getting Assigned Communities

**State:** Done | **Priority:** 2 | **Tags:** added; hotfix

**Repro Steps:**

When creating a new user we see taht organizations are not getting populated:

Console logs reveal that the request to get assigned communities is blowing up:

We need to not try and fetch assigned communities when it is a new user.

**Child Tasks (5):**

- [28088] (Done) Fix the bug
- [28089] (Done) PR
- [28090] (Done) Hotfix
- [28092] (Done) @WalterMartinez Confirmation Testing
- [28093] (Done) @RobertHobbs PO Review

**Comments (1):**

> **Walter Martinez** _
> 
> ✅QA Validation Completed!
> 
> PFA a quick screenshare of one of the tests.

---

### [28218] VCMS Api Value Not Getting Picked Up

**State:** Done | **Priority:** 2 | **Tags:** added; hotfix; Integration API; No QA

**Repro Steps:**

The Key-Value token replacement for this value is not getting picked up correctly in the build pipeline, because the appsettings.json file for the Integration API has a sytax error, which needs to be corrected as follows....

 

 

 
This value should be pulling in from here, but is not due to the above omission of the hash symbol in appsettings.

**Child Tasks (4):**

- [28227] (Done) Diagnose
- [28228] (Done) Fix code
- [28229] (Done) PR Review
- [28230] (Done) Update appsettings.json on 3 servers, 4 stacks and restart Integration sites

**Comments (1):**

> **Robert Hobbs** _
> 
> 

---

