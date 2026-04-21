# Sprint: 3rd Party Authorization 1

**Dates:** 2025-10-22 → 2025-11-04
**Items:** 47 total (6 stories, 4 bugs, 37 tasks)

**Completion:** 43 / 47 done

---

## Stories (Product Backlog Items)

### [26412] Assigned Communities - show archived

**State:** Done | **Priority:** 3 | **Tags:** assigned communities

**Description:**

One problem we have is that if ALL tenant plans are archived after assignment they do not appear in the VEO Admin assigned communities dialog even though the assignment is still there and being used to limit data in VDS.  

 
If support archives the community itself, that's fine but if they archive ALL tenant plan combinations then we would have a problem. The sales user would not see any communities and the VEO Admin user has no way to remove that assignment without unarchiving the tenant plan (at least 1).  

 
Update assigned communities count to include any communities assigned even if tenant plans are archived

**Acceptance Criteria:**

Given a user has an assigned community,  
and all tenant plan combinations with that community are archived:  

 
the assigned community appears in the count label in the organizations grid of edit user  
the assigned community appears in the list of communities to be assigned in the dialog,  
and has an Archived indicator

**Child Tasks (6):**

- [28378] (Done) @ReidWilson Refine Query
- [28379] (Done) @ReidWilson Update UI
- [28382] (Done) @WalterMartinez Write QA Tests
- [28383] (Done) @WalterMartinez Execute QA Tests
- [28384] (Done) @RobertHobbs PO Review
- [28389] (Done) PR

**Comments (1):**

> **Walter Martinez** _
> 
> 

---

### [28239] Spike: VDS & 3rd Party Auth

**State:** Done | **Priority:** 1 | **Tags:** 3rd party auth; No QA

**Description:**

This work item describes a tech spike we want to perform in order to learn about how we might do 3rd party auth in VDS as quickly and cheaply as is possible.  

 
In this work item we want to perform a tech spike on a branch that helps us learn the following:  
how a refactored sign-in to support both VDS + SSO from 3rd party providers affects the system and what other work is required to retain existing functionality  
learn the domain around OIDC implementations and various workflows  
the configuration required to support 3rd party auth providers  
how to process JWT returned to validate user 
  
 

 
High level notes:  
abstract configuration we might need, later to be placed in the DB with a VEO Admin front end  
may want to mock some kind of end point calls to simulate behavior in the system as if this layer really exists  
we probably want to test out a few scenarios:  
Standard Sales Counselor:  
a standard user who is using VDS auth  
 3rd Party Sales Counselor:  
a builder employee (SC) who is using okta to auth  
 DC Designer  
a designer who is part of both one org using okta and another that is not 
   separate the sign-in sequence into two steps 
is this necessary? i ...

**Acceptance Criteria:**

High Level Goals:  
We can demonstrate sign-in using okta/3rd party authentication and gain a fundamental understanding of the workflow.  

 
Nice to haves?  
We have an idea of the work necessary to modify the sign-in process for production level experience.  
We have an initial (if crude) OIDC auth code module with PKCE. This can be refined when we do the real work.  
The PO can demo and discuss this functionality to stakeholders.  
We can estimate delivery of a production system (in terms or effort or sprints)  
  
Sign-In  
As a tech spike be able to demonstrate sign-in process for a user in a 3rd party system.  
 
be able to sign in using 3rd party provider and validate the response, validate also that the user exists in VDS and sign in that user  
given a user that only exists in the 3rd party system, they cannot authenticate using VDS  
given a user that exists in VDS (with a password) and the 3rd party system, the user can authenticate using VDS or SSO  
Interesting, but struck...

**Child Tasks (12):**

- [28362] (Done) Research Task - Ockta
- [28363] (Done) Research Task - OIDC and Standardization of 3rd party Authentication
- [28364] (Done) Meet with Shelby and/or Andy to confirm implementation strategies and other things to account for
- [28366] (Done) Archetecture : User to 3rd party Auth
- [28368] (Done) "Minimal UI"
- [28369] (Done) UX for redirection
- [28370] (Done) Documentation of Findings
- [28371] (Done) Documentation of Implementation
- [28372] (Done) Deploy to a Developer Environment
- [28373] (Done) Developer Testing on deployed environment
- [28381] (Done) @RobertHobbs PO Review
- [28388] (Done) "informal" PR

**Comments (5):**

> **Robert Hobbs** _
> 
> 

> **Robert Hobbs** _
> 
> Review Commentary ahead of team meeting: 
> Hosted at: https://roger.veodesignstudio.com/

> **Robert Hobbs** _
> 
> https://www.figma.com/board/rUYVPvTSEe2YQ6u7XIEQhq/VDS-Dev-Design-Workspace?node-id=35-2&p=f&t=H3rtED7IxxLMlMix-0

> **Robert Hobbs** _
> 
> 

> **Andrew Fry** _
> 
> Here are a few useful links provided during the discussions with me and Shelby:
> https://learn.microsoft.com/en-us/entra/msal/dotnet/ - Microsoft's Authentication Library
> 
> https://openid.net/developers/how-connect-works/ - Shows how OpenId Connect works
> 
> https://github.com/Soluto/oidc-server-mock - A way to fake the OpenId Connect Provider
> 
> https://www.jwt.io/ - Lets you look at the claims inside of an auth token

---

### [28320] RC for 10/27 deployment

**State:** Done | **Priority:** 3

**Child Tasks (4):**

- [28316] (Done) @JustinPope Create and Deploy RC
- [28317] (Done) @WalterMartinez Test RC in Staging
- [28318] (Done) @WalterMartinez Run e2e automated Test in Staging
- [28319] (Done) @JustinPope Deployment Planning Meeting

**Comments (3):**

> **Justin Pope** _
> 
> build vds.main.2025_10_27.2025.1

> **Justin Pope** _
> 
> created release/2025_10_17

> **Justin Pope** _
> 
> Copied from #26421

---

### [28361] Regression Test: Builder Catalog

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
 Move Builder Catalog tests from .net conversion test suite to regression test suite (links above) 
Separate tests into atomic test cases (each test case focuses on testing 1 thing, but consider not duplicating efforts within the suite) 
Update test cases to add specific UI info relevant to front end framework switch 
Add Summary to each test case 
Update documentation for the view 
VDS Regression Testing list.docx 
add API calls 
flags that effect view 
???

**Child Tasks (1):**

- [28360] (Done) @WalterMartinez Write Test Cases

**Comments (1):**

> **Walter Martinez** _
> 
> Copied with all attachments and links from #27933

---

### [28374] Interfacelift Training "3rd Party Authorization 1"

**State:** Done | **Priority:** 3 | **Tags:** No QA

**Child Tasks (3):**

- [28375] (Done) @JustinPope Justin Training
- [28376] (Done) @DanielArwe Daniel Training
- [28377] (Done) @ReidWilson Reid Training

---

### [28393] Add 10" option to accents

**State:** Done | **Assignee:** Robert Hobbs | **Priority:** 3 | **Tags:** Data; No QA

**Description:**

I am including this work item for posterity and knowledge sharing only.  

 
BoT support asked if we can add 10"x10" Deco / accent options.  

 
They are selected here:

**Comments (1):**

> **Robert Hobbs** _
> 
> use veosolutions 
> go 
>  
> 
>  
> INSERT INTO accent_sqft_conversions
>  
> (source_uom, user_prompt, per_sqft) 
>  
> VALUES 
>  
> ('Deco', '10"x10"', 1.00)
>  
> 
>  
> 
>  
> INSERT INTO accent_sqft_conversions
>  
> (source_uom, user_prompt, per_sqft) 
>  
> VALUES 
>  
> ('LinFt', '10" Ht/Wd', 1.00)
>  
> 
>  
> select * from accent_sqft_conversions

---

## Bugs

### [28395] Production Issue: Integration API does not forward the correct API Key to VCMS

**State:** Done | **Priority:** 2 | **Tags:** added

**Repro Steps:**

Currently, the VDS Integration API acts as a gateway to the VCMS Integration API for customers like Taylor Morrison. This is specifically for the catalog modification API, and TM is the only customer currently using it. 
Prior to this PR, the VDS Integration API was using its API Key to pass catalog option changes to the VCMS integration API. The VDS API Key is much more permissive than TM's own API key, so this is bad behavior. Instead, the VDS Integration API needs to forward the API Key that it received in the initial request on to the VCMS. 
Note that some of the changes made in this PR were a result of Visual Studio recommendations as well, such as making one of the methods static. 

 
----------------------------------------------------------- 
While this is currently not extremely urgent, it is moderately urgent and puts us in a compromised state.  Therefore, we need to get this addressed as soon as reasonably possible.  This will require some effort on our part to: 
 
Understan...

**Child Tasks (1):**

- [28431] (Done) @WalterMartinez Confirmation Testing

**Comments (3):**

> **Walter Martinez** _
> 
> ✅QA Validation Completed! 
> Just in case you don't have that at the top of your mind, this is the Integration API value: http://qa-integration.veodesignstudio.rest
> 
> Positive Scenario
> 
> Negative Scenario

> **Daniel Arwe** _
> 
> **HOW TO SET UP THE TEST CASES AND EXECUTE USING POSTMAN.... **(See video link below)****
> 
> [Recap: Meeting in VDS War Room - 28395 - Production Issue - Integration API Forwarding Incorrect API Key to VCMS Friday, October 24 | Meeting | Microsoft Teams](https://teams.microsoft.com/l/meetingrecap?driveId=b%21V6typZdEAUytvmBaWVvSLpGtkUJ5ROdBsHOyU_9TtxIJOHuYE0qXQJgGVnMDgQZy&driveItemId=01ZXBZ33CG2K6VMGCC2NBJF6QPUR5LLXQZ&sitePath=https%3A%2f%2fbuildontechnologies-my.sharepoint.com%2f%3Av%3A%2fp%2fdaniela%2fEUbSvVYYQtNCkvoPpHq13hkBYXHLVW8Dv035THrwDu_rdA&fileUrl=https%3A%2f%2fbuildontechnologies-my.s...

> **Daniel Arwe** _
> 
> Testing:
> 
> Signature that controller is expecting;  Test in Postman
> Verify that Postman request gets back 200; Look in DB for ImportModificationRecord
> 
> Can trigger hangfire process manually via....
> https://dev-api.veocatalog.com/hangfire/recurring

---

### [28401] Odd behavior with Buyer Experience

**State:** Done | **Priority:** 1 | **Tags:** added

**Repro Steps:**

Log in as a Sys Admin. 
Impersonate a Homebuyer 
Turn ON 'Buyer Experience' 
Log out  
Log in as a Sys Admin. 
Impersonate a Homebuyer

**Child Tasks (3):**

- [28406] (Done) Fix the bug
- [28407] (Done) PR
- [28408] (Done) @WalterMartinez Confirmation Testing

---

### [28468] ISSUE: null community id is causing exception in userManager.ts

**State:** Done | **Assignee:** Justin Pope | **Priority:** 2 | **Tags:** added; hotfix

**Repro Steps:**

Setup: Given a user with profile plans, delete the associated tenant plan so that the profile plan is now orphaned. For the specific issue, the user needs to be a builder sales counselor so that the option pricing widget can be tested.
 
1 - Sign in as the given user 
2 - Once loaded, open the Communities drop down 
3 - if opening the console log, you can notice a null issue error in the logs

email attached from Tammy reporting the issue

**Child Tasks (2):**

- [28476] (Done) @WalterMartinez Confirmation Testing
- [28477] (Done) @RobertHobbs PO Review

**Comments (2):**

> **Walter Martinez** _
> 
> ✅QA Validation Completed! 
> 
> Before: 
> 
> After:

> **Justin Pope** _
> 
> From Teams @[VeoDesignStudio]\VeoDesignStudio Team
> 
> Okay, so what I have found is that there is a bug (or serveral bugs, depending on how you want to count it) within our userManager.ts file.
> When considering a CommunityId/CommunityGuid off of a profile plan, it is not guaranteed to come back. So not all of the filtering methods off the userManager is null checking them before trying to evaluate them.
> Locally I have made changes to the following methods:
> filterProfilePlansByUserAssignedCommunities
> setVisibilityOfProfilePlansBasedOnAssignedCommunities
> filterCommunitiesByUserAssignedCommunities
> ...

---

### [28513] ISSUE: Edit User loads incorrect data

**State:** Done | **Priority:** 3 | **Tags:** added; hotfix

**Repro Steps:**

Navigate to user impersonation 
Search for a user  
In the results click Edit User button on the row  

 
RESULT: The edit user profile screen loads with the logged in user info in the left panel rather than the impersonated user's

**Child Tasks (1):**

- [28732] (Done) @WalterMartinez Confirmation Testing

**Comments (1):**

> **Walter Martinez** _
> 
> 🎃QA Validation Completed! 
>  
> PFA a quick spooky video of this fix.

---

## Orphan Tasks (no parent in this sprint)

- [28947] (To Do) @JustinPope Create and Deploy RC
- [28948] (To Do) @WalterMartinez Test RC in Staging
- [28949] (To Do) @WalterMartinez Run e2e automated Test in Staging
- [28950] (To Do) @JustinPope Deployment Planning Meeting

