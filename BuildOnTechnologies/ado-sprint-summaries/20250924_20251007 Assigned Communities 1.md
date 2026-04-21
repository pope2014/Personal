# Sprint: Assigned Communities 1

**Dates:** 2025-09-24 → 2025-10-07
**Items:** 93 total (9 stories, 1 bugs, 83 tasks)

**Completion:** 92 / 93 done

---

## Stories (Product Backlog Items)

### [25247] VEO Admin: PP&C Upload PDFs

**State:** Done | **Assignee:** Daniel Arwe | **Priority:** 2 | **Tags:** PP&C

**Description:**

A national customer is requesting that we customize the PDFs being used in the Product Performance & Care Module.  

 
Right now the PDFs for each category / subcategory are hard-coded in the application.  

 
Intent: this work item supports an admin user to override the default PDFs associated with a category and instead up load their own.

**Acceptance Criteria:**

Given that a user has access to manage organizations and has selected an organization  
and is viewing the Product Performance & Care Tab:  

 
Scenario: Admin PDFs for Product Performance & Care  
for each subcategory (i.e. Granite) display a list of PDFs associated with that category  
if no customization has been made, we would expect to see the list of default or currently hard-coded PDFs 
the list of PDFs appears in order  The list of PDFs appears in ascending alpha. order, by fileName (*See discussion post) 
show the name of each with file extension  
each is a clickable link which opens the PDF in a new browser tab  
 the user can delete a PDF from a subcategory  
we would expect to see a confirmation step  
 the user has a way to upload a new PDF to the subcategory  
this mechanism can be drag and drop or browse to file system  
the file must be PDF  
the max file size is [TBD - based roughly on the existing PDFs in use]  
once uploaded it appears in the list at the end  
  imp...

**Child Tasks (34):**

- [26465] (Done) @WalterMartinez Write QA Tests
- [26466] (Done) @WalterMartinez Execute QA Tests
- [26467] (Done) @RobertHobbs PO Review
- [26487] (Done) Update Content & ContentAttribute entities
- [26488] (Done) Update use case to handle new content types
- [26489] (Done) @DanielArwe Changes to document/image selection dialog to handle uploading PPC documents
- [26490] (Done) @DanielArwe Modify Org. PPC tab in VEO Admin to display all documents
- [26491] (Done) Make each document link clickable, launching preview in another tab
- [26493] (Done) @DanielArwe Make each document link click to remove
- [26494] (Done) @DanielArwe Button to add document at end of wrapped documents
- [26495] (Done) @DanielArwe EF migration; Add document enttiy; Deprecate excluded products entity
- [26496] (Done) @DanielArwe Research PPC existing entities and how they could link up with documents
- [26497] (Done) @DanielArwe Update PPC entities fetch to also retrieve documents
- [26498] (Done) @DanielArwe Add/Update use cases as needed for PPC document linkages
- [26500] (Done) @DanielArwe VEO Admin. Service calls for fetch/save PPC
- [26501] (Done) Update Postman if needed
- [26508] (Done) @DanielArwe Unit Tests (add/update)
- [26511] (Done) VDS: Fetch documents
- [26512] (Done) @JustinPope VDS: Display document link
- [26513] (Done) @JustinPope VDS: Doc. Link clickable to preview
- [26514] (Done) @JustinPope VDS: Truncate long document names (layout concerns)
- [26534] (Done) @DanielArwe VEO Admin: Clickable preview document
- [26535] (Done) @DanielArwe VEO Admin: Save/Confirm button group; roll all save actions into one UI action
- [26536] (Done) @DanielArwe VEO Admin: Make table rows only scrollable; freeze header and save/confirm buttons
- [26555] (Done) @DanielArwe VEO Admin: Child and Parent Change notification handling
- [26556] (Done) @DanielArwe VEO Admin: Remove Dialog Previously Used to Edit Video Links
- [26557] (Done) @DanielArwe VEO Admin: Truncation for long file names with tooltip for full name
- [26565] (Done) @DanielArwe Refactor backend save to implement single-action save
- [26571] (Done) @DanielArwe EF; Add model for Documents
- [26572] (Done) @DanielArwe EF; Add entity map for documents
- [27706] (Done) @DanielArwe Order documents, in GET use case, alpha. by fileName
- [27776] (Done) PR
- [27830] (Done) @DanielArwe Defect: Quick fixes.
- [27831] (Done) @WalterMartinez Execute QA Tests 2

**Comments (5):**

> **Walter Martinez** _
> 
> ✅QA Validation Completed!
>  
> 
>  
> PFAa quick screenshare of one of my tests.

> **Justin Pope** _
> 
> @[VeoDesignStudio]\VeoDesignStudio Team 
> Demo Notes:
> files names for default documenst were renamed to remove the _
> the VDS front end is stripping out the file extension to display
> users can not make duplicate document links
> 
> drag and drop functionality was not implemented
> Future Features:
> color coded pills for added, deleted
> 
> need to rename content file names from the 'gallery'
> the video link needs to be validated before save
> Future Customization:
> Free form Application Product text within the list
> Free form text to modify the details
> Add link to an image to display for the app/product

> **Daniel Arwe** _
> 
> @ @ 
> ![image.png](https://dev.azure.com/BuildOnTechnologies/ddde192e-e31e-4e51-af4b-3b7b4221266a/_apis/wit/attachments/7d1998e3-0aea-489d-8551-6d11e7cdd7da?fileName=image.png)

> **Daniel Arwe** _
> 
> Prestory meeting:
> - in VDS, wrap documents to 2nd row at least.
> - in VDS, don't bother truncating filename (they can make it shorter)
> - AC says "the list of PDFs appears in order" => this means order in which they are added to the documents list, for the product, in VEO Admin.
> - AC says "*   the user can delete a PDF from a subcategory 
>     *   we would expect to see a confirmation step"  => This will be handle with single-save (Save / Confirm) discussed in meeting.

> **Joe Ebeling** _
> 
> @Daniel Arwe ; I believe you have been working on this work item.  Can you please update this story to indicate the status.

---

### [26118] Design: Color Sheet report

**State:** Done | **Assignee:** Charlie Bradley | **Priority:** 2 | **Tags:** added; color sheet report; design; No QA

**Description:**

This is a design story to craft different variations of the color sheet report to present to the customer.

**Acceptance Criteria:**

using data from real sessions for History Maker in production,  
craft two mockups of a color sheet report based on the information located in this work item here: https://dev.azure.com/BuildOnTechnologies/VeoDesignStudio/_workitems/edit/26068 
one variation would be grouped by Application and include color images along with room names where it is selected, followed by catalog items  
another variation is grouped by Room, followed by catalog items  
 make sure all the design elements are accounted for:  
title  
address  
groups of selected options  
disclaimer (see example from linked story)  
 I also think the customer is preferring that we produce something that fits on one page

**Child Tasks (9):**

- [26381] (Done) @CharlieBradley UX research and planning
- [26383] (Done) @CharlieBradley Reach out to Jim for data from a real History Maker session
- [26384] (Done) @CharlieBradley Copy session to my own user to protect session data
- [26385] (Done) @CharlieBradley Extract images from Selection report
- [26386] (Done) @CharlieBradley Make rough draft of a one page report of session with images and info grouped by application and room
- [26387] (Done) @CharlieBradley Iterate with PO about rough drafts to finalize designs
- [26388] (Done) @CharlieBradley Create final design of a one page report of session with images and info grouped by room/area of home
- [26389] (Done) @CharlieBradley Create final of a one page report of session with images and info grouped by application
- [26390] (Done) @RobertHobbs PO Review

**Comments (2):**

> **Joe Ebeling** _
> 
> Changing to Review per conversation with Rob and Charlie.

> **Charlie Bradley** _
> 
> @Robert Hobbs There are four designs in this figma file, two designs application item layout, two designs of room item layout. I purposely did not make the item images larger to allow space for more items to be selected for a home.
> 
> https://www.figma.com/design/qAw4HkOKHyVn6LeDrFuHve/History-Maker-color-sheet-report?node-id=0-1&p=f&t=NT9bK2WWoIGQvmqA-0

---

### [26411] Option Pricing: Duplicate Options solution 1

**State:** Done | **Assignee:** Reid Wilson | **Priority:** 1 | **Tags:** TM Work

**Description:**

Taylor Morrison sends us catalog data, including that for packages. When they send it they send over their own internal New Star option id. They also split out their collections by elevation. So for a given collection they may send 3 distinct rows, even though the data is the same except option id / elevation.  

 
In option pricing, since we don't select elevation we are apparently duplicating these collection items (NOT VERIFIED). To mitigate this, implementation is marking those catalog rows as option_pricing_display = FALSE.  

 
The downstream consequence of this is that because DMH honors this flag when a buyer session is created that is specific to an elevation, this collection item is missing. This is because there is 1 collection item matching this elevation and it has been set to option_pricing_display = FALSE.  

 
The use of this flag in this manner in option pricing is a misuse of that field - it is intended to mark an item to not be shown for a buyer to see or select because of the type of item it may be. In this case it is being used to solve a dupes problem.  

 
This work item proposes we solve the dupe problem in option pricing in another way so this flag can agai...

**Acceptance Criteria:**

Given a set of 3 similar catalog item rows where the description for the items are the same,  
and the prices are 10, 0, 0 (i.e. one is higher than the others)  
and the item_number field on the items is the same (our own internal ID)  
and the option_id is different (representing the customer option code)  
and the elevation is different for each  
set option_pricing_display = TRUE for all 3 rows 
 

 
Validation  
validate that the options described above appear in option pricing (and to a user they would appear as duplicates except the one with a price diff)  
 Feature Flag  
create a new feature flag: "Remove duplicate items in Option Pricing" 
description: "When ON, Option Pricing will show the highest price option from those that share a Category, Description and Item Number (ignoring case) - and discards the others." 

 
   

 
 
Apply Logic  
 
given that the feature flag described above is on:  
option pricing for the given tenant plan should not show duplicate items, but inst...

**Child Tasks (9):**

- [26459] (Done) @WalterMartinez Write QA Tests
- [26460] (Done) @WalterMartinez Execute QA Tests
- [26461] (Done) @RobertHobbs PO Review
- [26515] (Done) @ReidWilson Feature flag
- [26516] (Done) @ReidWilson OP Logic change to filter dups. out, based on feature flag
- [26517] (Done) @ReidWilson Data Setup for Dev. Testing
- [26518] (Done) @ReidWilson Dev. Testing
- [27707] (Done) @ReidWilson Dev test with VCMS
- [27708] (Done) @ReidWilson Check the import mechanism for DMH

**Comments (6):**

> **Walter Martinez** _
> 
> Selecting elevation B for DMH

> **Walter Martinez** _
> 
> ✅QA Validation Completed!
> 
> PFA some screenshots
> 
> For VCMS
> 
> Elevation Specific for DMH: Selecting Elevation B for testing

> **Reid Wilson** _
> 
> Documentation
> 
> When creating a new session, the current state of the builder's catalog will be used. Catalog items which are near duplicates except for elevation, option id, and price will not show up as duplicates. The elevation on the user's profile plan will determine which catalog item to pick; the elevations must match. There were no code changes to DMH or the import process from OP to DMH in this story; however, there are some notable implications. Since near duplicate catalog items can now be marked as option pricing display true without showing as duplicates in OP, a catalog item with ...

> **Robert Hobbs** _
> 
> Additional info from Jacob: 
> 
> The reason we include categories is because of examples like below. We only need the highest priced version for each tenet and category pair showing in option pricing.

> **Robert Hobbs** _
> 
> Jacob sent this to me today, indicating the logic for what they decide to mark as visible: 
> 
> Here are the fields we use for assigning option pricing display when we have elevations.
> 
> Community, Series, Plan, Application, Product, and then item number or item description if there is no item number.
> From there we sort by price and set the highest to TRUE.

> **Robert Hobbs** _
> 
> Import to DMH (from option pricing) 
> when importing selected options into DMH, the target session may not have the precise catalog item (by option code) because of the elevation but may have a package or catalog item matching the item number. We would want to select that.

---

### [26421] RC for 9/29 deployment

**State:** Done | **Priority:** 3 | **Tags:** added

**Child Tasks (4):**

- [26417] (Done) @JustinPope Create and Deploy RC
- [26418] (Done) @WalterMartinez Test RC in Staging
- [26419] (Done) @WalterMartinez Run e2e automated Test in Staging
- [26420] (Done) @JustinPope Deployment Planning Meeting

**Comments (3):**

> **Justin Pope** _
> 
> Build vds.main.2025_09_29.2025.1 initialized

> **Justin Pope** _
> 
> Branch release/2025_09_29 created

> **Walter Martinez** _
> 
> Copied with all attachments and links from #26119

---

### [26456] Refactor Image entity to support other content types

**State:** Done | **Assignee:** Justin Pope | **Priority:** 1 | **Tags:** Tech

**Description:**

The Images entity and storage isn't setup to store other content types like PDFs or other image types.  
Images entity renamed to Content.
Define the entity so that image and document content is uniquely defined. 

 
Future uses:  
PDFs or other documents  
images used in themes? 
what else?

**Acceptance Criteria:**

refactor the Image entity type to store additional content types  
to at least support PDFs for the upload story to product performance and care

**Child Tasks (14):**

- [26457] (Done) @JustinPope Design Content Entity to define images and documents
- [26458] (Done) @JustinPope Image Entity update =>Content Entity
- [26462] (Done) @WalterMartinez Write QA Tests
- [26463] (Done) @WalterMartinez Execute QA Tests
- [26464] (Done) @RobertHobbs PO Review
- [26471] (Done) @JustinPope EF Core Migration
- [26473] (Done) @JustinPope Modification to Use Cases
- [26474] (Done) @JustinPope Modifications to Unit Tests
- [26475] (Done) @JustinPope Dev Testing Lifestyle Snapshot
- [26502] (Done) @JustinPope Modification to Endpoints
- [26503] (Done) @JustinPope Modification ot Services
- [26505] (Done) @JustinPope Modification to Gallary
- [26507] (Done) @JustinPope ImageAttribute => ContentAttribute entity
- [26509] (Done) @JustinPope POSTMAN updates

**Comments (4):**

> **Walter Martinez** _
> 
> ✅QA Validation Completed! 
>  
> PFA a quick screenshare of one of my negative tests. Failing for valid format but images too big, and invalid formats.

> **Joe Ebeling** _
> 
> @Justin Pope ; I believe work is being done on this story.  can you please update to display current status of the work?

> **Justin Pope** _
> 
> @[VeoDesignStudio]\VeoDesignStudio Team
> Figma Link to design
> 
> @Robert Hobbs
>  Yes we need to define a way for S&S members to access Content Management for all of this.
> 
> Archiving sounds like a beast to figure out.

> **Robert Hobbs** _
> 
> LATER - might need to sketch out an archiving / size management use cases for VEO admin, and a UI for browsing / maintaining the content store directly.

---

### [26479] Interfacelift Training " Assigned Communities 2"

**State:** Done | **Priority:** 3 | **Tags:** No QA

**Child Tasks (3):**

- [26482] (Done) @JustinPope Justin training time
- [26484] (Done) @DanielArwe Daniel training time
- [26485] (Done) @ReidWilson Reid training time

---

### [26483] Regression Test: Event Log

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
 Move Event Log tests from .net conversion test suite to regression test suite (links above) 
Separate tests into atomic test cases (each test case focuses on testing 1 thing, but consider not duplicating efforts within the suite) 
Update test cases to add specific UI info relevant to front end framework switch 
Add Summary to each test case 
Update documentation for the view 
VDS Regression Testing list.docx 
add API calls 
flags that effect view 
???

**Child Tasks (1):**

- [26472] (Done) @WalterMartinez Write Test Cases

**Comments (1):**

> **Walter Martinez** _
> 
> Copied with all attachments and links from #26155

---

### [27701] Rename Title for Lifestyle Survey to match module

**State:** Done | **Assignee:** Reid Wilson | **Priority:** 1 | **Tags:** added; lifestyle survey

**Description:**

Somehow I missed this, but the module title still says lifestyle snapshot when really it should use the name associated with the module (potentially renamed).

**Acceptance Criteria:**

The title displayed on this view reads "Lifestyle Questionnaire" rather than "Lifestyle Snapshot"  
The default VDS module also reads "Lifestyle Questionnaire"  
scope creep: also rename the "Snapshot" to "Questionnaire" when impersonating a user whose survey is complete

**Child Tasks (8):**

- [27765] (Done) @ReidWilson Rename page title
- [27766] (Done) @ReidWilson Rename module
- [27767] (Done) @ReidWilson PR Review
- [27768] (Done) @WalterMartinez Write QA Tests
- [27769] (Done) @WalterMartinez Execute QA Tests
- [27770] (Done) PO Review
- [27825] (To Do) Defect: Missing a spot with the new wording.
- [27826] (Done) @WalterMartinez Execute QA Tests 2

**Comments (3):**

> **Walter Martinez** _
> 
> ✅QA Validation Completed! 
> 
> adding one more screenshot

> **Reid Wilson** _
> 
> Screenshot of default module name

> **Reid Wilson** _
> 
> @Robert Hobbs @Walter Martinez 
> 
> Screenshot of new page title

---

### [27836] Rename "Design Center" to "Design Studio" in lifestyle survey

**State:** Done | **Assignee:** Justin Pope | **Priority:** 1 | **Tags:** TM Work

**Description:**

TM has asked for a change to the lifestyle survey question text. I am wondering if we can accommodate this change without a full implementation of customization?

**Acceptance Criteria:**

In the lifestyle survey for the question/answer step 1, rename the response for "Design Center" to "Design Studio"

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

## Bugs

### [26599] Changing standard introduces an error?

**State:** Done | **Priority:** 1 | **Tags:** added; hotfix?; No QA

**Repro Steps:**

Jim is porting that for a specific session and area, the act of marking a price level as standard is introducing a variance probably because of the rounding rules (speculation).  

 
Session ID:  
40eef83d-d740-4972-958f-030ad7d3f3dd
 
Customer: Toll Houston  
plan Carrera for Toll Houston in Woodsons Reserve Aspen 70
 

 

 

 
I think the Granite Group 01 was made "standard"  

 

 

 

 

 

 
When I tried to revert the standard price level to Marlana Group 01 or Marlana Group 02 I see this message:

**Child Tasks (1):**

- [27802] (Done) Devs. Spin Wheels

---

