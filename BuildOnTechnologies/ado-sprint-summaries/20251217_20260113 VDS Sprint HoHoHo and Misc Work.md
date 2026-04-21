# Sprint: VDS Sprint HoHoHo and Misc Work

**Dates:** 2025-12-17 → 2026-01-13
**Items:** 66 total (5 stories, 7 bugs, 54 tasks)

**Completion:** 66 / 66 done

---

## Stories (Product Backlog Items)

### [29273] Update description for Enhanced Categories feature flag

**State:** Done | **Assignee:** Samuel Klepper | **Priority:** 2 | **Tags:** enhanced categories; scripts

**Acceptance Criteria:**

update the description on the enhanced categories feature to indicate it only supports VCMS as the catalog source  
updates description: "When ON, VDS will support enhanced category features such as: custom names for estimated stubs and a customized sort order. Note that this feature only applies when a builder's catalog data source is VCMS."

**Child Tasks (6):**

- [29297] (Done) @WalterMartinez Write QA Tests
- [29298] (Done) @WalterMartinez Execute QA Tests
- [29299] (Done) @RobertHobbs PO Review
- [29319] (Done) @SamuelKlepper Make the change in static data
- [29320] (Done) PR
- [29353] (Done) @SamuelKlepper Write and attach deployment SQL script; Tag story with 'scripts'

**Comments (2):**

> **Walter Martinez** _
> 
> ✅QA Validation Completed!

> **Samuel Klepper** _
> 
> Completing Pull Request 10340 and the associated work items.

---

### [29275] Enhanced Categories in DS: What-if

**State:** Done | **Assignee:** Daniel Arwe | **Priority:** 2 | **Tags:** enhanced categories

**Description:**

The main story to implement Enhanced Categories in Design Selections, linked below, was successful, but left out a few places. 

 
In this story, we want to bring the What-if dialog of Design Selections into compatibility with Enhanced Categories. 

 
#17923

**Acceptance Criteria:**

figure out what the what-if dialog even does 
update it to support enhanced categories if the feature flag is on

**Child Tasks (4):**

- [29508] (Done) @DanielArwe Figure out what "What-If" does
- [29509] (Done) @DanielArwe Implement Enhanced Categories in "What If"
- [29521] (Done) @SamuelKlepper Update Unit Tests
- [29527] (Done) @DanielArwe Dev. Testing

**Comments (1):**

> **Walter Martinez** _
> 
> ✅QA Validation Compleed!
>  
> 
>  
> Flag OFF 
>  
> 
>  
> 
>  
> Flag On

---

### [29283] Enhanced Categories in DS: Field card label in area card

**State:** Done | **Assignee:** Justin Pope | **Priority:** 2 | **Tags:** enhanced categories

**Acceptance Criteria:**

Given that the feature flag for enhanced categories is on,  
and the product for the build (wizard) are renamed from VCMS 

 
the product label for the card reflects the renamed estimated sub-category (product)

**Child Tasks (7):**

- [29517] (Done) @JustinPope Review Changes made in 17923
- [29518] (Done) @JustinPope Make chagnes required
- [29519] (Done) @JustinPope DEV Testing
- [29520] (Done) @JustinPope PR
- [29548] (Done) @WalterMartinez Write QA Tests
- [29549] (Done) @WalterMartinez Execute QA Tests
- [29550] (Done) @RobertHobbs PO Review

**Comments (1):**

> **Walter Martinez** _
> 
> ✅QA Validation Completed!
> 
> Flag OFF
> 
> Flag ON

---

### [29288] Interfacelift - Complete Training 

**State:** Done | **Priority:** 2

**Description:**

7 points  

 
Units: 18  
15 - video processing  
16 - playing videos  
17 - deployment (small)  
18 - testing   

 
1 unit / sprint goal  

 
Justin: 15 
Reid: 16  
Daniel: 18  
Sam: none

**Child Tasks (3):**

- [29316] (Done) @DanielArwe Daniel
- [29317] (Done) @ReidWilson Reid
- [29318] (Done) @JustinPope Justin

---

### [29383] RC for XX/1

**State:** Done | **Priority:** 3

**Child Tasks (4):**

- [29379] (Done) @ReidWilson Create and deploy RC
- [29380] (Done) @WalterMartinez Test RC in Staging
- [29381] (Done) @WalterMartinez Run e2e automated test in Staging
- [29382] (Done) @ReidWilson Deployment Planning Meeting

**Comments (2):**

> **Walter Martinez** _
> 
> 

> **Walter Martinez** _
> 
> Copied with all attachments and links from #29084

---

## Bugs

### [28324] Missing Images for catalog items

**State:** Done | **Priority:** 1

**Repro Steps:**

I have received more than one report that clearing cache does not necessarily update images being used in VDS to the most recent in the database.  

 
I have attached an email chain related to this topic as a PDF.  

 
Ideas to test this out:  
create a new catalog item and exclude a GPC ITEM A 
create a new catalog item and include a GPC with an image ITEM B  
navigate to option pricing to see the missing image for ITEM A as defined by the builder or stack and the current image for ITEM B  
Update ITEM A image by creating a GPC item or linking to an existing one  
Update ITEM B image by changing the GPC image  
Revisit the plan in option pricing and record the images displayed  
Clear cache and revisit the plan in option pricing and record the images displayed  
Speculate on a way to suitably invalidate the image cache as needed for these items

**Child Tasks (8):**

- [29289] (Done) @WalterMartinez Confirmation Testing
- [29290] (Done) @RobertHobbs PO Review
- [29301] (Done) Reproduce the issue, consistently preferably
- [29302] (Done) Produce a cache-busting or equivalent fix
- [29303] (Done) Collaborate with team on how to fix
- [29304] (Done) PR
- [29305] (Done) @JustinPope Dev Testing
- [29398] (Done) @JustinPope Defect: Unable to access OP.

**Comments (2):**

> **Walter Martinez** _
> 
> ✅QA Validation Completed! 
> 
> Following the steps to reproduce below, we can see that the fix is working as expected. 
> 
> View valid GPC item with valid image in Option Pricing.
> Navigate away, either to different category or leave Option Pricing, but remain in the app.
> In separate tab, go to the GPC.
> Find the GPC item and upload new image and mark as default.
> In VDS, view the item again.
> 
> Refer to the attached video

> **Justin Pope** _
> 
> Duplicating from the war room. Was not able to reproduce this. Waiting for more information.

---

### [29073] Integration API Issue (tenants are jacked up - EF Core edition)

**State:** Done | **Assignee:** Justin Pope | **Priority:** 2 | **Tags:** Integration API

**Repro Steps:**

Copied from Description when changed from Product Backlog Item to Bug
Stephen Levin reported that a feature in VCMS was timing out. This
particular feature is a VDS Plan Audit. The basic idea is with the feature is
that it shows them which Plans in VCMS align with Plans in VDS and which do
not. This lets them easily reconcile the plan differences between the two
systems. 

 
Problem Statement 
  
The endpoint "v2/tenants/{tenantId}/plans" in the VDS
Integration API fails to return results and causes a timeout in the VCMS when
performing a VDS Plan Audit. 
  
Reproducing the Issue 
  
Currently, in the WBS stack, Coventry Homes - Houston has 2482
plans in it. If you load up the postman collection for the VDS Integration API,
you'll find a request configured to test this endpoint: Queries > Plans >
/v2/tenants/{tenantId}/plans - Valid Response. To use it against production set
the following variables in postman: 
  
{{integration_api}} = https://api.buildontechnologies.com/vds/wbs 
{{ten...

**Child Tasks (6):**

- [29293] (Done) @WalterMartinez Confirmation Testing
- [29294] (Done) @RobertHobbs PO Review
- [29312] (Done) @JustinPope Reproduce the bug (without crashing computer)
- [29313] (Done) @JustinPope Fix the issue and possible tendrils
- [29314] (Done) @JustinPope Dev Testing
- [29315] (Done) @JustinPope PR

**Comments (3):**

> **Robert Hobbs** _
> 
> DEV:
> app: dev.veodesignstudio.com
> integration api: dev-integration.veodesignstudio.rest
>  
> QA:
> qa-integration.veodesignstudio.rest
>  
> PREVIEW:
> preview-integration.veodesignstudio.rest

> **Walter Martinez** _
> 
> ✅QA Validation Completed!

> **Justin Pope** _
> 
> @[VeoDesignStudio]\VeoDesignStudio Team
> In an effort to communicate the issue and fix, we were using a repository that was set up that is bloating the call. This repository (TenantRepository.cs) has the Tenant entity mapped with Account, Organization, Community, Series, and Plan. For this call we just want a list of the plans. So, the fix here is to simplify the repositories used to be more effecient with our EF Repositories.

---

### [29256] VCMS Selections Rules dialog issues

**State:** Done | **Assignee:** Daniel Arwe | **Priority:** 2 | **Tags:** selection rules

**Repro Steps:**

Performance issues (known)  
the current code loops through every c/s/p combination and tries to fetch all catalogs and then combine into a distinct list of categories. This is rather slow.  
does VCMS support wildcards and can we call his api using that? 
reach out to Shelby to characterize the issue and ask for suggestions for improvements  
   
Missing Category? 
Investigate the alleged missing categories from Aaron's comments below and determine if a change is required or if this is data related  

 
Planner - Selection Rules Bug
 

 
There seems to be a bug in the selection where isn't showing all of the application/products. 

 
On top of that it is taking a long time to load. 

 
There should be 4 collection applications in the attached image, instead there are only 3. 
This was dug into and it was found that the issues we are having are related to the customers only that are being used out of VCMS. <---

**Child Tasks (8):**

- [29295] (Done) @WalterMartinez Confirmation Testing
- [29296] (Done) @RobertHobbs PO Review
- [29321] (Done) @DanielArwe Reproduce performance issue
- [29322] (Done) @JustinPope Experiment with efficiency enhancement and whatever that entails
- [29323] (Done) @DanielArwe Reproduce the missing category issue
- [29324] (Done) Fix missing category issue
- [29325] (Done) Dev Testing
- [29326] (Done) PR

**Comments (3):**

> **Robert Hobbs** _
> 
> Preview review data: STAGING - Taylor Morrison Denver 
> Note that DMH for this customer is on the 1st tab of the buyer dashboard 
> buyer 08132025

> **Walter Martinez** _
> 
> ✅QA Validation Completed! 
> 
> Performed a quick regression. Create, add, modify, delete selections rules. PFA a quick screenshare of one of my tests.

> **Justin Pope** _
> 
> @[VeoDesignStudio]\VeoDesignStudio Team
> Added proposal for VCMS endpoint change.
> This change askes for the following endpoints:
> 1) Categories and subcategories with valid options. Request has optional Community, Series, and Plan.
> 2) Give full Category tree for a division regardless of options.

---

### [29279] Pattern image issue

**State:** Done | **Assignee:** Daniel Arwe | **Priority:** 2 | **Tags:** patterns

**Repro Steps:**

From Jim:  
To follow-up on the Pattern Issue with Primera.  I have done some changing of the pattern formats.  What appears to work the best is PNG. 
I tried bmp and jpg and nothing changed.  When I made them PNG the pattern is looking good for the most part.  I have one that still give issues when doing the actual selection of the pattern 
EPP Stack 
Session id:  
1e15b096-7595-41da-9924-53b741f65c26    

 
Not sure if we want someone to start going through and changing all the patterns to PNG

**Child Tasks (6):**

- [29291] (Done) @WalterMartinez Confirmation Testing
- [29292] (Done) @RobertHobbs PO Review
- [29306] (Done) @DanielArwe Reproduce the issue
- [29308] (Done) Peek into ImageHelper.cs and make necessary changes
- [29310] (Done) Dev Testing
- [29311] (Done) PR

**Comments (2):**

> **Justin Pope** _
> 
> @[VeoDesignStudio]\VeoDesignStudio Team
> @Reid Wilson, @Daniel Arwe and myself just checked out the patterns and it is looking perfect.
> Just to re-iterate the probable cause is that the files were originally BMP files. We have gotten Jim to convert them to PNG files and now they are great.
> 
> For the browser, JPG and PNG are the way to go.

> **Robert Hobbs** _
> 
> With the PNG I was experiencing issues when picking the pattern but I am not with the card itself once selected.
> This is particular one is for Capital West under the Primera account.  It was in the 08 Master Bath floor tile.
> above you have the session id for it.

---

### [29329] Pricing Error - AFI

**State:** Done | **Assignee:** Justin Pope | **Priority:** 1 | **Tags:** pricing error

**Repro Steps:**

AFI is reporting a pricing error that we haven't seen before. It suggests a stored proc issue.  

 

 

 

 
Hi Jim, 
  
Can you please see below errors that are coming up for the
designer when she is trying to select the main bath ceiling tile. Can you
please help clarify what these mean and how I can get them taken care of? 
  
Thanks,  
  
 
  
ARROWHEAD FLOORS &
INTERIORS 
63
Inverness Drive East  |  Suite #100 
Englewood, CO 80112 
  
Meg Ryan 
Account Specialist 
mryan@afidenver.com 
  
OFFICE  303-660-3311
opt 2 
FAX  303-660-0937  
  
WEBSITE www.afidenver.com 
  
From: Susan Bastine <sbastine@afidenver.com>
Sent: Tuesday, December 16, 2025 2:11 PM
To: Meg Ryan <mryan@afidenver.com>
Subject: 306 Lariat Ln.

**Comments (2):**

> **Robert Hobbs** _
> 
> Cause / Resolution: AFI points to production Echelon and not AFI via their synonyms. The Echelon team pushed some proc changes to the Echelon DB prematurely which broke the system.

> **Justin Pope** _
> 
> @[VeoDesignStudio]\VeoDesignStudio Team
> on AFI
> go to design session id : 256a7b4e-68ff-491e-83ec-0a3ccc7ea1ce
> Go to Flooring - go to bed 1 bath  > tile color > make selection of color

---

### [29505] Cannot create session issue

**State:** Done | **Priority:** 2

**Repro Steps:**

Victor has reported a session creation issue in production.  
Stack WBS  
Builder: TM Austin  
Address: '8708 Peristyle Drive' 

 
Error:  

 
Some of the builds:  

 

 

 
Jim says:  

 
There are three reasons that will cause this error message
that I have found. 
The elevation is not one of them. 
  

 Build description is
     actually duplicated – We cannot find this. 

 Multiple versions of the
     plan and both are not enddated 

 Some deleted a build and
     then re-entered the build but did not regenerate and publish. 
   
None of these appear to be the issue.

**Comments (1):**

> **Robert Hobbs** _
> 
> Updated: for some reason, prices landed was returning builds with no description. this was the cause of the problem.  
> 
> 	EXEC [dbo].[eas_selPricesLandedPriceLevelsBySpecPlanAndEffectiveDate]
> 		8587, 'Terracotta-EP', '', '2025-12-08 00:00:00.000', '',''

---

### [30210] Missing z_catalog_selections_categories table

**State:** Done | **Priority:** 2

**Repro Steps:**

The table z_catalog_selections_categories is nowhere to be found in the VeoSolutions database of any environment like we expect. It should have come in with catalog_selections_categories in the story linked below. 

 
#17923

**Child Tasks (2):**

- [30215] (Done) @ReidWilson Update the .sqlproj file
- [30216] (Done) PR

---

