# Sprint: 3rd Party Authorization 2

**Dates:** 2025-11-05 → 2025-11-18
**Items:** 85 total (9 stories, 1 bugs, 75 tasks)

**Completion:** 79 / 85 done

---

## Stories (Product Backlog Items)

### [24239] Branding: Variablize font color for categories in option pricing

**State:** Done | **Assignee:** Reid Wilson | **Priority:** 2 | **Tags:** branding; scripts

**Description:**

In creating a theme it's problematic that we can change the font color for DMH and Design Selections navigation but not option pricing...(if only it were a shared component.....death by a thousand cuts...)

**Acceptance Criteria:**

In option pricing, DMH and design selections: 
 
create a set of css variables that allow a user to edit the text color for categories in the navigation 
create a different css variable for each location, but point them all to the same palette slot such that it looks good for default + a few other themes 
and document this relationship here in the work item  
 verify the variable name appears in the css tooltip helper  
verify that it is updated via palette slot change or direct variable override

**Child Tasks (10):**

- [28675] (Done) @WalterMartinez Write QA Tests
- [28676] (Done) @RobertHobbs PO Review
- [28677] (Done) @WalterMartinez Execute QA Tests
- [28712] (Done) @ReidWilson Create new variable for option pricing menu text
- [28713] (Done) @ReidWilson Create new variable for DMH and DS if necessary
- [28714] (Done) @ReidWilson Map variables to palette slot
- [28715] (Done) @ReidWilson Document changes
- [28716] (Done) @ReidWilson PR
- [28717] (Done) @ReidWilson Developer Testing
- [28718] (Done) @ReidWilson Talk to Rob about Doofenshmirtz

**Comments (5):**

> **Reid Wilson** _
> 
> @Robert Hobbs 
> 
> Help with CSS filters for themeable variables:
> 
> If you see a themeable variable with a CSS name that starts with "filter", as in "filter-dmh-roomProductIcon", that is a strong sign that a regular hex code, as in "#0000ff" will not work. You must use what is called a CSS filter. Here is an example of converting a hex code color to CSS filter:
> 
> "#0000ff" is full blue in hex code
> "brightness(0) saturate(100%) invert(9%) sepia(79%) saturate(7467%) hue-rotate(247deg) brightness(101%) contrast(147%)" is the same color but in CSS filter format
> 
> Obviously, CSS filter format is not self...

> **Robert Hobbs** _
> 
> bg-optionPricing-leftPane
> 
> bg-ds-leftPane

> **Reid Wilson** _
> 
> @Robert Hobbs 
> 
> You requested some themeable variable location information. I have that here for you.
> 
> OP: We do have an existing variable solely for the background of the left nav panel: var(--bg-optionPricing-leftPane)
> DS: We do have an existing variable solely for the background of the left nav panel: var(--bg-ds-leftPane)
> DMH: We do have an existing variable for the background of the left nav panel regardless of general options selector, room option selector, or full catalog selector: var(--bg-dmh-leftPanel-nav)

> **Walter Martinez** _
> 
> ✅QA Validation Completed!
>  
> 
>  
> For customer made theme.  
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
> And for VDS Default theme

> **Reid Wilson** _
> 
> Implementation Notes
> 
> Analysis of current app state for text variablization of different nav menus:
> DS: no variable at all
> DMH
> var(--color-dmh-leftNav-listItemText) in general option selector; this variable is used nowhere else
> var(--color-dmh-icons-light-on-darkBg) in room option selector; this variable is used elsewhere
> var(--color-dmh-icons-light-on-darkBg) in full catalog selector; this variable is used elsewhere
> OP: no variable at all
> Technical changes made:
> DS: new variable: var(--color-ds-navList-text); points by default at palette slot var(--semantic-positive) which is locked in as #ff...

---

### [28613] Auth: Migrate Spike code to development branch

**State:** Done | **Priority:** 1 | **Tags:** Auth; scripts

**Description:**

The objective of this work item is to move any relevant code from the spike to a normal development branch. We expect that the original code may or may not be production ready and require some cleanup or modification. 
 
move auth provider configuration to DB 
don’t port the automatic fetch of providers without a discriminator 
 
 
PO Figjam Board: https://www.figma.com/board/ibjLoxR8TqRNXCuwy1j7cp/Product-Owner-Design-Boards?node-id=1251-951&t=WnkHGNJNOmwxe6zI-4

**Acceptance Criteria:**

PO Note: the specifics of this work item should be driven by the development team in consideration of the other work we have defined for iteration 1 of this feature.  

 
A few points were made during discussions of this work:  
the auth provider end point and use case should be pulling from the database rather than a JSON file  
a basic auth provider for our test okta should probably be scripted and attached to this work item  
don't port the automatic fetch of providers without a discriminator as the workflow will be slightly different going forward (i.e., triggered from email entry)  
 
 
Developer notes:  
From a discovery URL we get a auth url, token url, and a JWT Uri to confirm the JWT token is issued from the 3rd party. 
The use case will be refactored to fetch all 3rd party data related to the provider from the discovery URL rather than from what is defined in the JSON  
Additionally we will validate the JWT token is authentic  
draft unit tests (if feasible) to validate this ...

**Child Tasks (15):**

- [28658] (Done) @WalterMartinez Write QA Tests
- [28659] (Done) @WalterMartinez Execute QA Tests
- [28660] (Done) @RobertHobbs PO Review
- [28667] (Done) @JustinPope Entity creation
- [28670] (Done) @JustinPope Run migration
- [28673] (Done) @DanielArwe Update GetAuthProviders use case
- [28679] (Done) @JustinPope Validate JWTs
- [28680] (Done) @JustinPope Update the authenticate use case
- [28681] (Done) @DanielArwe Script auth providers
- [28682] (Done) @DanielArwe In the frontend, remove call to fetch all auth providers
- [28683] (Done) PR
- [28684] (Done) @DanielArwe Update Postman collection for POST endpoint
- [28685] (Done) @JustinPope Write unit tests
- [28686] (Done) Developer Testing
- [28736] (Done) @DanielArwe Update Postman Collection for GET endpoint

**Comments (8):**

> **Reid Wilson** _
> 
> Note about Design My Home using sub-optimal routing techniques:
> 
> We discovered a bug during this story which logged the user out and re-routed them to the sign-in page just after clicking "Accept" on the DMH disclaimer to enter DMH, but only when the logged in user logged in using the Microsoft 3rd party authentication provider. After some debugging, we discovered a query parameter was not being cleared when Microsoft redirects the user back to our site. Clearing that extra unnecessary query parameter fixed the issue.
> 
> The reason why that change fixes the issue is because DMH currently attempt...

> **Robert Hobbs** _
> 
> From postman execute fetch for 3rd party providers and then grab the AuthorizatioURI (note that there is a 10m timeout on the generated URI) 
> email
> password
> testsueuser2@mailinator.com
> TESTsue@2
> testbobuser1@mailinator.com
> TESTbob@1

> **Justin Pope** _
> 
> @Robert Hobbs
> Repos -> Files
> VeoDesignStudio\Postman\VDS.postman_collection.json
> 
> I have also attached it to this work item.

> **Daniel Arwe** _
> 
> ![image.png](https://dev.azure.com/BuildOnTechnologies/ddde192e-e31e-4e51-af4b-3b7b4221266a/_apis/wit/attachments/2f414368-77bf-445b-95e7-ac9c41eecd25?fileName=image.png)  @ 
> https://www.figma.com/board/rUYVPvTSEe2YQ6u7XIEQhq/VDS-Dev-Design-Workspace?node-id=190-2&p=f&t=Y75777s14kzJGY6V-0

> **Robert Hobbs** _
> 
> @Walter Martinez can you attach for me your postman test collection for this work item?

> **Robert Hobbs** _
> 
> @Justin Pope @Daniel Arwe can one of you give me a layout of all database structures created as part of this work to store auth providers and their configurations?

> **Walter Martinez** _
> 
> ✅QA Validation Completed! 
> 
> Requesting a password reset via 'Forgot Password' 
> 
> Set a new temporary password. 
> 
> Making sure logs in correctly according to the password. 
> 
> POSTMAN TEST

> **Justin Pope** _
> 
> @[VeoDesignStudio]\VeoDesignStudio Team 
> Testing revealed that not everyone has a @buildontechnologies.com email address.
> So, walters main email with microsoft is email: walterm@eplanpartners.onmicrosoft.com. This is not considered a bug per say because it falls into the case of "There is not a provisioned VDS user".
> So some ideas to cook on:
> 1) This is an OIDC configuration issue. We can figure out how walter's buildontechnologies email is associated to his profile and make sure we know how to read it in the OIDC process.
> 2) VDS users can have multiple emails. This will allow the potential to...

---

### [28614] Auth: Implement domain match policy

**State:** Done | **Priority:** 1 | **Tags:** Auth; scripts

**Description:**

In this work item as part of iteration 1 of 3rd Party Authentication, we want to implement an email domain matching policy that returns authentication providers based on an association in the database.  

 
PO Figjam Board for Iteration 1:  
https://www.figma.com/board/ibjLoxR8TqRNXCuwy1j7cp/Product-Owner-Design-Boards?node-id=1251-951&t=WnkHGNJNOmwxe6zI-4

**Acceptance Criteria:**

Database Scripts / Setup:  
create a authentication provider matching the settings necessary for our VDS Okta test environment in the database (use script from last story or write here)  
Create a mapping table of domain to auth providers that describes an email domain mapping to an authentication provider. A given domain can have more than one provider (key = domain + provider id)  
 End Point to Fetch Provider Info 
when a user enters their email in the VDS sign-in page, or edits that email in some way we fetch associated authentication providers. We take the domain portion of the email address and look for matches to the auth providers and return information sufficient to create an auth widget (button) on the sign in page  
Any of the following response scenarios simply leaves the VDS sign-in view as-is. The user is still able to sign in using VDS authentication assuming they have valid VDS credentials  
ERROR: any exception thrown by this call is not surfaced to the user. We can lo...

**Child Tasks (20):**

- [28661] (Done) @WalterMartinez Write QA Tests
- [28662] (Done) @WalterMartinez Execute QA Tests
- [28663] (To Do) @RobertHobbs PO Review
- [28687] (Done) @DanielArwe Entity creation
- [28688] (Done) @DanielArwe Run migration
- [28689] (Done) @DanielArwe Create use case to fetch auth provider from email domain
- [28690] (Done) @DanielArwe New endpoint
- [28691] (Done) @ReidWilson Debounce logic on sign in screen and fetch providers
- [28692] (Done) @DanielArwe Unit tests for new use case
- [28693] (Done) @DanielArwe Update Postman collection
- [28694] (Done) @ReidWilson Make UI look good in any reasonable case
- [28695] (Done) @ReidWilson PR
- [28696] (Done) Developer Testing
- [28875] (Done) @JustinPope Defect: Inactive users can authenticate via new auth methods
- [28877] (Done) @WalterMartinez Execute QA Tests 2
- [28879] (Done) PR 2
- [28880] (Done) @DanielArwe Defect: Layout of 3rd party auth buttons push public dashboard down
- [28940] (Done) @JustinPope Defect: config changes not reflected in application
- [28941] (To Do) @WalterMartinez Execute QA Test 3
- [28942] (Done) @JustinPope PR 3

**Comments (2):**

> **Walter Martinez** _
> 
> ✅QA Validation Completed! 
> 
> Please find attached a quick screenshare of one of my tests.

> **Daniel Arwe** _
> 
> @ , @ , @ ...
> 
> ![image.png](https://dev.azure.com/BuildOnTechnologies/ddde192e-e31e-4e51-af4b-3b7b4221266a/_apis/wit/attachments/c85d5c04-56f2-4da6-ab62-77ed35f2ed23?fileName=image.png) 
> ![image.png](https://dev.azure.com/BuildOnTechnologies/ddde192e-e31e-4e51-af4b-3b7b4221266a/_apis/wit/attachments/0752c61a-b4a0-4b73-9da3-1f61a9c4494e?fileName=image.png)

---

### [28615] Auth: Okta user can authenticate to VDS

**State:** Done | **Priority:** 1 | **Tags:** Auth

**Description:**

This work item contains all validation and activities related to a user authenticating using a 3rd party provider from the sign-in page.  

 

 
Implementation ideas:  
we might consider adding a boolean flag on the user to hide certain fields related to VDS auth or based on the provider.  

 
For deployment:  
X number of current Toll employees who are already setup in VDS with a valid VDS password  
Y number of new Toll employees that they may ask us to provision once we roll out the Okta integration.

**Acceptance Criteria:**

If Toll Brothers provides a test user for Okta that we can use, conduct a round of this validation using their user, which will require provisioning in VDS for some of these tests.  

 
If not, use the Justin Okra environment for all testing. 

 
Given a user that is configured with an email  
with a domain that maps to a 3rd party authentication system  

 
Scenario: User has valid VDS credentials  
user can sign into VDS using normal existing method  
  

 
Scenario: User is provisioned in VDS (as a user) and Okta  
User can use 3rd party auth to sign in to VDS  
  
Scenario: User is provisioned in Okta, but not in VDS  
User cannot authenticate to VDS  
  

 
Scenario: User is provisioned in VDS and Okta, but has no VDS password defined cannot sign into VDS:  
setup a new user and clear password field and or temporary password field  
validate that the user can auth using Okta (test or real) and perform functions in VDS  
validate that the user cannot sign into VDS using VDS authent...

**Child Tasks (5):**

- [28664] (Done) @WalterMartinez Write QA Tests
- [28665] (Done) @WalterMartinez Execute QA Tests
- [28666] (To Do) @RobertHobbs PO Review
- [28701] (Done) @JustinPope Developer Testing
- [28702] (Done) Possible code changes

**Comments (3):**

> **Robert Hobbs** _
> 
> Kept for reference:

> **Robert Hobbs** _
> 
> PO Test cases: 
> script Providers 
> bad discovery URL 
> Okta domain mapping 
> unprovisioned user 
> 
> VDS sign-in for Okta User
> 
> Okta sign-in (from site) - user not provisioned 
> Okta sign-in (from site) user is provisioned 
> Okta sign-in (previous to site) 
> 
> TODO: 
> fetch production toll users 
> write clear password/temp password script for both stacks 
> write up timeout notes for Toll 
> 
> NEW STORIES: 
> encrypt client id / secret 
> what if image URL is bad?

> **Justin Pope** _
> 
> @[VeoDesignStudio]\VeoDesignStudio Team
> 
> I have gotten with Walter and gone through the Testing regimen for this story, and we can verify that all process are good for Tolls Okta OIDC provider.
> 
> I have attached two sql scripts to help with testing.
> 1- script to set up the toll okta provider into the environment
> 2- script to null the password out for a toll user in said environment
> 
> Note: something I don't think we made notice of is that the reset password set when a user is logged in for the first time does not show when both the temp password and password fields are set. So, that is a nice th...

---

### [28616] Auth: display "user not provisioned" error message

**State:** Done | **Assignee:** Justin Pope | **Priority:** 1 | **Tags:** Auth

**Description:**

We want to provide some guidance to Toll users who may be provisioned in Okta, but not VDS.

**Acceptance Criteria:**

Given a user exists in 3rd party system that VDS supports 
And the user either can authenticate against that system.But the user does not exist in VDS as a match on email.The user should see an error such as:“The user's emails(s) [email address] has not been provisioned in VEO Design Studio. Please contact your support specialist.”

**Child Tasks (7):**

- [28668] (Done) @WalterMartinez Write QA Tests
- [28669] (Done) @WalterMartinez Execute QA Tests
- [28671] (Done) @RobertHobbs PO Review
- [28703] (Done) @JustinPope Throw specified error when necessary in use case
- [28704] (Done) @JustinPope Respond to error in UI
- [28705] (Done) @JustinPope PR
- [28706] (Done) @JustinPope Developer Testing

**Comments (1):**

> **Walter Martinez** _
> 
> ✅QA Validation Completed!

---

### [28645] Interfacelift Training "3rd Party Authorization 2"

**State:** Done | **Priority:** 3 | **Tags:** No QA

**Child Tasks (3):**

- [28646] (Done) @JustinPope Justin Training
- [28647] (Done) @DanielArwe Daniel Training
- [28648] (Done) @ReidWilson Reid Training

---

### [28652] RC for 11/10

**State:** Done | **Priority:** 3

**Child Tasks (4):**

- [28654] (Done) @ReidWilson Create and deploy RC
- [28655] (Done) @WalterMartinez Test RC in Staging
- [28656] (Done) @WalterMartinez Run e2e automated test in Staging
- [28657] (Done) Deployment Planning Meeting

---

### [28653] Regression Test: Today's Appts

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
 Move Today's Appts tests from .net conversion test suite to regression test suite (links above) 
Separate tests into atomic test cases (each test case focuses on testing 1 thing, but consider not duplicating efforts within the suite) 
Update test cases to add specific UI info relevant to front end framework switch 
Add Summary to each test case 
Update documentation for the view 
VDS Regression Testing list.docx 
add API calls 
flags that effect view 
???

**Child Tasks (1):**

- [28651] (Done) @WalterMartinez Write Test Cases

**Comments (1):**

> **Walter Martinez** _
> 
> Copied with all attachments and links from #28361

---

### [28955] RC for 11/24

**State:** Done | **Assignee:** Daniel Arwe | **Priority:** 3

**Child Tasks (3):**

- [28951] (To Do) @DanielArwe Create and deploy RC
- [28952] (To Do) @WalterMartinez Test RC in Staging
- [28953] (To Do) @WalterMartinez Run e2e automated test in Staging

**Comments (1):**

> **Justin Pope** _
> 
> Copied with all attachments and links from #28652

---

## Bugs

### [28596] Design Selections: Image disparity

**State:** Done | **Assignee:** Justin Pope | **Priority:** 1

**Repro Steps:**

Tammy has reported that there appears to be an image disparity between what is shown and selected in the design selections wizard step and the image that then subsequently appears in the area card.  

 
It is Taylor Morrison Austin and the WBS stack. 
 

 

 
Here are a few examples from her email:  

 

 

 

 

 
We were thinking it may be some kind of data sync issue, so Jim looked into it and wrote this:  

 
I did a sync and created a new session and the issue with the tile colors still persists.  
  
Session ID e2080008-d54c-4db1-85fd-9b9c1ddfa7f4 
  
The color below is the color that is matching Echelon.  The bluish color does not. 
  
 

 
So that suggests we have some kind of disparity in the wizard step I think?

**Child Tasks (7):**

- [28672] (Done) @WalterMartinez Confirmation Testing
- [28674] (Done) @RobertHobbs PO Review
- [28707] (Done) @JustinPope Find the bug
- [28708] (Done) @JustinPope Document to QA steps to eradicate bug
- [28709] (Done) @JustinPope Exterminate da bug
- [28710] (Done) @JustinPope PR
- [28711] (Done) @JustinPope Developer Testing

**Comments (2):**

> **Robert Hobbs** _
> 
> Problems:
> 1) The specific issue is that the image Color Space, for browsers they display sRGB color space but have problems when displaying other color spaces. This image is a CMYK color space which the browser has difficulty rendering correctly.
> 2) In code, we were not using centralized logic to manipulate the image for the browser.
>  
> Fix:
> Fixing the rendering by ensuring all code paths go through the same code fixes this bug.

> **Walter Martinez** _
> 
> ✅QA Validation Completed!
>  
> PFA a quick screen share of one of my tests where I validate that the images displayed on the wizard matches the ones displayed on the selection.

---

