# Sprint: 3rd Party Authorization 3

**Dates:** 2025-11-19 → 2025-12-02
**Items:** 55 total (6 stories, 3 bugs, 46 tasks)

**Completion:** 55 / 55 done

---

## Stories (Product Backlog Items)

### [21505] Enhanced Categories: catalog data setup

**State:** Done | **Priority:** 2 | **Tags:** enhanced categories; removed to backlog

**Description:**

We have several enhanced category features we would like to support. They are implemented across various modules: Design Selections, DMH, Option Pricing. This includes reporting changes.  

 
As such we need to setup catalog data for this Epic in such a way that it makes testing easier and consistent.

**Acceptance Criteria:**

collaborate with stakeholders (Jim, Shelby, Jacob, Aaron) to create a punch list of catalog scenarios to setup for use in validation for enhanced categories feature set  
A short meeting 30m on this topic may be sufficient  
Given that we have a customer who wants this feature now (TM) it may be ideal to setup their ideal categories structure and also a few other scenarios such as Canvas and then a full DC catalog.  
 Some initial scenarios to consider:  
A few estimated stubs linked to applications in Echelon where they are renamed. For example: flooring -> Floor Products, or Walls-> Backsplashes 
Similarly a few estimated stubs links to products in Echelon renamed such as: LVP -> Revwood  
At least one package item  
A sort order defined that is different from alpha ascending categories  
At least one estimated category (from Echelon) is NOT defined in VCMS so that we can see the behavior of the sorting for those items as well  
A few catalog items that are specified for specific com...

**Child Tasks (6):**

- [28385] (Done) @WalterMartinez Write QA Tests
- [28386] (Done) @WalterMartinez Execute QA Tests
- [28387] (Done) @RobertHobbs PO Review
- [28390] (Done) Meet with Stake Holders (Jim, Aaron, Jacob, Shelby)
- [28391] (Done) Meet with Boss about copying data
- [28392] (Done) @ReidWilson Data entry in VCMS

**Comments (1):**

> **Robert Hobbs** _
> 
> https://dev.veocatalog.com/
>  
> Customer: BuildOn Technologies > Division: Staggered-QA

---

### [28322] Assigned Communities: Plan Selector 

**State:** Done | **Assignee:** Daniel Arwe | **Priority:** 2 | **Tags:** assigned communities

**Description:**

There are a few scenarios where VDS prompts the user to choose from a list of plans. I neglected to include this in the scope for the project.

**Acceptance Criteria:**

Given that the feature flag is on  
and a user has assigned communities,  
and a buyer is being impersonated,  
and a buyer has more than one plan,  
at least one of which is not in the assigned communities list  

 
When the plan selector dialog is displayed, those plans not in the user's assigned communities list are hidden  
 Note:  
this dialog appears when you click Register Homebuyer from the sales dashboard and one other place (which eludes me)  
incomplete sessions ? 
design session search ?

**Child Tasks (8):**

- [29005] (Done) @DanielArwe Update userManager if needed, to filter on Assigned Comms.
- [29006] (Done) @DanielArwe Update PlanSelector Dialog to hide/filter accordingly
- [29007] (Done) @DanielArwe PR
- [29010] (Done) @DanielArwe DEV testing
- [29011] (Done) @WalterMartinez Write QA Tests
- [29012] (Done) @WalterMartinez Execute QA Tests
- [29013] (Done) @RobertHobbs PO Review
- [29053] (Done) @DanielArwe Update Design Session Search and Incomplete Sessions to respect assigned communities

**Comments (4):**

> **Robert Hobbs** _
> 
> Walter Martinez, Robert Hobbs, filtering sessions for Design Session Search and Incomplete Sessions will be a different beast than filtering Profile Plans in the Plan Selector, I suspect much like how we are handling filtering search results for User Impersonation, since those are also paginated results.  In User Impersonation, we therefore, filter those results on the backend, so that the page or results still returned (and thus the UI still displays) the correct number of results per page.  Given this additional piece of information, like I alluded to above, the changes to those two views, t...

> **Robert Hobbs** _
> 
> [vds_selDesignSessions]
>  [vds_selIncompleteHomebuyersWithPagingAndSorting]

> **Walter Martinez** _
> 
> ✅QA Validation Completed! 
>  
> PFA some videos of this feature plus, see below some screenshots of the implementation for Incomplete Sessions and Design Session Search 
> 
>  
> This also applies for incomplete sessions and design session search

> **Daniel Arwe** _
> 
> Please document how we are fetching incomplete sessions (proc. vs other) for @

---

### [28818] Auth: Patch VDS Auth use cases for 3rd party Auth users

**State:** Done | **Priority:** 1 | **Tags:** Auth

**Description:**

Suggestion for quick fix: add a boolean field to the users table that indicates no VDS password is required and bypass some of these UI elements.  
probably: 2-3 

 
Better fix: identify linkages for each auth provider, so if there isn't a VDS auth record there we don't show reset password workflows, or generate temp password.  
probable: 8  

 
We would also not send welcome emails to users provisioned by a third party, though it may just have the URL for the site.

**Acceptance Criteria:**

Database:   
add a boolean to the users table that indicates we don't want this user participating in VDS user auth workflows.  
Suggested names: OIDC_ONLY, NO_VDS_AUTH 
  
 
VEO ADMIN: Manage Users  
Expose this field in VEO Admin on the user. For a new user it will default to FALSE. Add a tooltip that reads: : "if TRUE, this user must use 3rd party authentication and cannot sign-in using VDS credentials " 
when true, don't allow generate temp password in VEO Admin 
 
 New User Creation:  
when creating the user, they are created  WITHOUT a temp password filled in  
 Editing an Existing User:  
when they mark the NO_VDS_AUTH toggle to true, display a confirmation dialog that reads: "The temp password or real password for this user will be cleared, and they will not be able to sign-in to VDS using normal VDS authentication. Do you wish to proceed?"  
Yes = mark it true  
No = clear the value to false  
 when they mark the NO_VDS_AUTH toggle to false, display a confirmation dialog that ...

**Child Tasks (17):**

- [28986] (Done) @JustinPope Update Users table (legacy code) to add NO_VDS_AUTH field
- [28988] (Done) @JustinPope Update stored procedures touching users
- [28989] (Done) @JustinPope Update repo. code touching users
- [28990] (Done) @JustinPope Update use cases (all CRUD operations with User)
- [28991] (Done) @JustinPope New Endpoint
- [28992] (Done) @DanielArwe VEO Admin UI updates to support NO_VDS_AUTH field updates
- [28993] (Done) @DanielArwe VEO Admin: User messaging to handle changes to NO_VDS_AUTH field
- [28994] (Done) @JustinPope Use Case for returning VDS identity for login
- [28995] (Done) @DanielArwe VDS: Sign-In page UI changes
- [29002] (Done) @DanielArwe UserManager changes to support NO_VDS_AUTH
- [29003] (Done) @JustinPope Additional backend changes to authentication flow
- [29004] (Done) @JustinPope Unit Tests for new use case
- [29008] (Done) Dev. Testing
- [29009] (Done) PR
- [29019] (Done) @WalterMartinez Write QA Tests
- [29020] (Done) Execute QA Tests
- [29021] (Done) @RobertHobbs PO Review

**Comments (2):**

> **Robert Hobbs** _
> 
> email
> password
> testsueuser2@mailinator.com
> TESTsue@2
> testbobuser1@mailinator.com
> TESTbob@1

> **Robert Hobbs** _
> 
> PO Review Notes:

---

### [28955] RC for 11/24

**State:** Done | **Assignee:** Daniel Arwe | **Priority:** 3

**Child Tasks (1):**

- [28954] (Done) @DanielArwe Deployment Planning Meeting

**Comments (1):**

> **Justin Pope** _
> 
> Copied with all attachments and links from #28652

---

### [29065] Auth: Support Sign-in from Okta application tile

**State:** Done | **Assignee:** Justin Pope | **Priority:** 2 | **Tags:** added; Auth

**Description:**

Toll users relay on a "tile" from a Okta dashboard that directs to myveodesignstudio.com.  

 
Currently, when they land on that page, currently they must enter their email in order to see the okta sign in option and afterward they must click on the Okta button to auth / gain access to VDS.  

 

 
Ideally, once they have authenticated once (and this has not expired?) their email would:   
bring the user directly into the VDS app assuming they are provisioned and signed into okta   
or, if their sign-in has expired or they are not currently signed in their email would still auto-fill  
 
 
Edge cases:   
we have to resolve support users not automatically signing in if we implement MSFT entra.   
possible idea: auto_sign_in true false on provider   
or vds specific cookie that has different behavior

**Acceptance Criteria:**

Some sketched AC (review @Justin Pope)  

 
from an okta tile, a user can nav to VDS and sign in directly  
with the bookmarked URL with issuer, NOT signed in to okta, the app takes them to okta to authenticate  
if the bookmarked URL is used by a user who is not an okta user, it does not allow login  
configuration can be altered in the database and effect the usage of the providers without app pool recycling  
submitting a URL with an issuer that does not match one of our configured providers is ignored (shows normal sign in page)

**Comments (4):**

> **Robert Hobbs** _
> 
> DEV - 
> Nick Rick
> dev-nick@okta.com
> D3Vn1ck!
> 
> QA - 
> Greg Tester
> qa-greg@okta.com
> Q4_gr3g!
> 
> Preview - 
> Charles Smith
> preview-charles@okta.com
> PR3Vch4l3s!
> 
> Staging - 
> Bobby Tables
> staging-bobby@okta.com
> ST4G1NGb0b!

> **Justin Pope** _
> 
> @[VeoDesignStudio]\VeoDesignStudio Team
> 
> I have attached a text file and a sql file for the updates needed to test this out fully.
> Users defined in the test users.txt document have been setup in okta as well as the environments for testing.
> use email and password for login in okta. Go to url: https://integrator-5980701.okta.com/ to see their dashboard.
> 
> I have modified OIDC configuration and domain mapping to set the 'dev okta' instance to map to the domain okta.com.

> **Justin Pope** _
> 
> @[VeoDesignStudio]\VeoDesignStudio Team
> 
> Discovery of this happen while tinkering around with our DEV setup of okta.
> This is a standaridized approach for OIDC.

> **Justin Pope** _
> 
> A brief look into this is that modern web apps do not use 3rd party cookies anymore.
> What we would want to do is have a revamped "Remember Me" feature. We can store Authentication requests on the server and have a token stored on the client that matches to the authentication request. Upon revisting, the app can see the token and match to the authentication, at that point it is just a matter of refreshing and get into the app.
> 
> Service and Support has issues because they login to different users
> We can account for this to not automatically sign them in but give them an option to sign in as that...

---

### [29084] RC for 12/08

**State:** Done | **Assignee:** Justin Pope | **Priority:** 3

**Child Tasks (1):**

- [29080] (Done) @JustinPope Create and deploy RC

**Comments (1):**

> **Justin Pope** _
> 
> Copied with all attachments and links from #28955

---

## Bugs

### [28083] Reproduce: Theming turned off for buyer

**State:** Done | **Assignee:** Walter Martinez | **Priority:** 3 | **Tags:** branding; QA only

**Repro Steps:**

Tammy reported:  

 
Hi Rob, 

 
We received a service ticket from a TM Austin homebuyer over the weekend.  Their screen shot is below...it is not showing the TM theming. 

 
That is not what their ticket was for, but I wanted to let you know.  We need to look into this. 

 
Thanks! 

 

 

 
Login as sys admin 
impersonate a TM SC or Buyer 
Go to another tab, sign in as the TM SC or Buyer 
Sign into another tab, maybe TM maybe just anyone 

 
After a short period of time, one of the other browser tabs reverts to default theme 

 
Related our 60s refresh timer - related to local storage

**Child Tasks (2):**

- [28987] (Done) @WalterMartinez Confirmation Testing
- [29044] (Done) Provide info in the ADO discusion for future references

**Comments (1):**

> **Justin Pope** _
> 
> @[VeoDesignStudio]\VeoDesignStudio Team
> Message made on Teams War Room:
> I jumped on a call with  Walter Martinez to try and wrap my head around what is going on. The console errors were peculiar so something I wanted to look into. Another thing is that either "correlation/causation" the them gets "Turned Off" because the class on the html tag was blank, so:
> Running Theory: 
> 1) App gets error
> 2) due to error, we assume the theme is bad
> 3) clear the class
>  
> We do this as a stop gap to remove the theme if the theme was vanished.
>  
> So, back to the error on the API endpoint,
> TLDR, the network "goes...

---

### [28970] Issue: Profile Plan problems

**State:** Done | **Assignee:** Daniel Arwe | **Priority:** 1

**Repro Steps:**

ID: 762b0c0a-a67d-42e9-a393-861f5ef67fb7

**Child Tasks (5):**

- [28980] (Done) @DanielArwe Diagnose da bug
- [28981] (Done) @DanielArwe Fix da bug
- [28983] (Done) @DanielArwe Dev Testing
- [28984] (Done) @WalterMartinez Confirmation Testing
- [28985] (Done) @RobertHobbs PO Review

**Comments (3):**

> **Daniel Arwe** _
> 
> @ **Here are the relevant details you requested on the cause of the issue.  Long story short, there was a plan plan in Veo_plan_mstr DB table that was not marked address specific and thus was getting filtered out of the list returned to populate the dropdown.  This caused the first plan, rather than the correct plan, to be selected in the dropdown and, when the SAVE action was executed the backend saw it as a plan change (due to the plan name on the profile plan saved and the plan in the Veo_plan_mstr table not matching) and kicked it back due to the validation checking whether or not there we...

> **Robert Hobbs** _
> 
> @Daniel Arwe can you update this work item with the cause of the issue for my review notes?

> **Daniel Arwe** _
> 
> **Session ID: 762b0c0a-a67d-42e9-a393-861f5ef67fb7
> Community: Artavia 70
> Series: Classic
> Plan: 15711 Dandelion Dreams**
> 
> ![image.png](https://dev.azure.com/BuildOnTechnologies/ddde192e-e31e-4e51-af4b-3b7b4221266a/_apis/wit/attachments/3203f2d5-1498-4416-af30-c904aab9e71e?fileName=image.png)

---

### [29028] Elevation truncation

**State:** Done | **Assignee:** Justin Pope | **Priority:** 2

**Repro Steps:**

[ add example from Jim for elevation]  

 
There is a mismatch in field size between organization elevations (50) and account org profile plan elevations, causing truncation. This causes some lookups to fail down stream like in refresh session.

**Child Tasks (6):**

- [29036] (Done) @JustinPope SQL Updates for Schema Changes
- [29037] (Done) @JustinPope SQL Updates for Data Changes
- [29038] (Done) @JustinPope Dev Testing
- [29039] (Done) @JustinPope PR
- [29050] (Done) @WalterMartinez Confirmation Testing
- [29051] (Done) @RobertHobbs PO Review

**Comments (2):**

> **Walter Martinez** _
> 
> Created a new 50 char long elevation. 
> 
> Created a plan using that elevation. 
> 
> Registered Homebuyer and then refreshed the session. 
> 
> Using the script to determine which elevations were failing. 
> 
> Using the scrip to fix it. 
> 
> Attempting to refresh the session.
> 
> Using the  NEW  50 CHAR elevation in another plan and processing with no issues.

> **Justin Pope** _
> 
> @[VeoDesignStudio]\VeoDesignStudio Team
> I just added a script to help with this work item. Please review the read me and know what it does before execution.

---

