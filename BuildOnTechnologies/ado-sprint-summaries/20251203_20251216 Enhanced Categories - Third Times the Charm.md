# Sprint: Enhanced Categories - Third Times the Charm

**Dates:** 2025-12-03 → 2025-12-16
**Items:** 34 total (5 stories, 0 bugs, 29 tasks)

**Completion:** 29 / 34 done

---

## Stories (Product Backlog Items)

### [17923] Enhanced Categories & selections in Design Selections

**State:** Done | **Priority:** 2 | **Tags:** enhanced categories

**Description:**

Many customers have requested improvements to our category navigation in VEO Design Studio. 
 

 
Generally they have asked for the following features:  
controlling the sort order of the categories without relying on numerals/ordinals  
renaming of categories from general terms used in catalogs to specific terms for the builder  
nested categories deeper than 2 levels  
show / hide prices optionally  
group by area vs group by categories  
 
 
For this work item we want to focus on the design selections module and specifically two aspects:  
sort order  
category renames

**Acceptance Criteria:**

Given that the feature flag that governs this feature is ON,  
and the builder has data configured in VCMS such that  
a sort order is defined for categories both estimated and non estimated  
and at least one category / subcategory is renamed...  

 
design selections navigation properly displays the sort order for the categories and subcategories  
an exception is for estimated option categories coming from Echelon which do not have a stub defined in VCMS; these categories have no display order, so the only thing to do and what should be done is to throw them at the bottom, and among themselves, sort them alphabetically ascending 
 design selections navigation properly displays the renamed category names  
given estimated stubs, categories are not duplicated 
 
when area grouping is turned on, those categories not included in areas "Other Selections" honor the sorting rules as best as possible  
 Regression Topics (not intended to be exhaustive):  
 
selection / deselection still wor...

**Child Tasks (10):**

- [29102] (Done) Confirm/Implement all data points needed from VCMS for stubs
- [29104] (Done) Implement stubs into nav
- [29105] (Done) Categories are populated with esitmated options
- [29106] (Done) Categories are populated with nonestimated options
- [29107] (Done) Confirm/tweak/seselections & deselections are made correctly
- [29108] (Done) Confirm category totals work based on selections
- [29109] (Done) Copy selections still works
- [29110] (Done) Confirm Session totals work based on selections
- [29111] (Done) Confirm area group sorting works-ish
- [29112] (Done) @WalterMartinez Execute QA Tests

**Comments (3):**

> **Reid Wilson** _
> 
> @Robert Hobbs 
> 
> New stories written up by me:
> 
> #29275 
> #29276

> **Reid Wilson** _
> 
> @Robert Hobbs @Walter Martinez 
> 
> The AC says...
> 
> when area grouping is turned on, those categories not included in areas "Other Selections" honor the sorting rules as best as possible 
> 
> I want to explain what we did here for the sorting of categories under "Other Selections" when area sorting is turned on. For that, we literally use the same exact sorting method for the categories as when the areas toggle is turned off. So that means by display order ascending followed by alphabetical ascending.

> **Daniel Arwe** _
> 
> Link to spike story: [https://dev.azure.com/BuildOnTechnologies/VeoDesignStudio/_workitems/edit/15023](https://dev.azure.com/BuildOnTechnologies/VeoDesignStudio/_workitems/edit/15023)

---

### [24868] Synchronize wbs_staging to Echelon Dev DB

**State:** Done | **Assignee:** Justin Pope | **Priority:** 2 | **Tags:** Echelon Change; No QA

**Description:**

Echelon + WBS wants to flat rate hardware for cabinets. They will work on creating this scenario in dev.  

 
We need to do this as a collaborative experiment.  

 
We need updates from Echelon team on the structural changes.  

 
3 weeks lead time?  

 
scenarios

**Acceptance Criteria:**

synchronize wbs-staging with the Echelon development environment to make sure we have all their changes  
get and deploy latest version of Echelon that we all work with  
confirm with Cindy/Roger/Echelon team that we have the latest changes and are synchronized and verify we also have necessary new data  
question: do we also need to sync something in structure to VEO?  
 meet with Jim to understand the scenarios of hardware either standard or not standard (flat rated or not)  (excel?)   

 
Jim will create scenarios of data in our wbs_staging so that we can have those to vet out   
with Jim we will make selections and then perform a resulting export and evaluate with Echelon on whether VDS can support it adequately  
based on the outcome of these experiments, new work items may be required

**Child Tasks (4):**

- [29120] (Done) @JustinPope Meet with Cindy and Crew
- [29121] (Done) @JustinPope RedGate over stuff
- [29123] (Done) @JustinPope See what breaks?
- [29140] (Done) @JustinPope Documentation Of SQL Calls

---

### [28122] Biorev POC / Spike 1

**State:** Done | **Priority:** 2 | **Tags:** visualization

**Description:**

We want to do a POC or Spike to test out the BioRev API in VDS.  

 
Some reference links:  

 
Hosted biorev visualizers:  
https://buildon.xhome360.com/ 
https://buildon.xdesign360.com/ 

 
Attachments:  
BioRev API POSTman collection 
Excel file with products / parts setup

**Acceptance Criteria:**

Create a branch that can be deployed and accessible for a few weeks to months.  

 
Learning:  
meet with the PO to go over their API  
explore their hosted visualizer site  
  
Spike:  
Create a catalog in dev environments that contains the example parts setup by BioRev from the attached excel spreadsheet  
Implement a new provider for BioRev based on their API 
 
Setup scenes in scene configuration 
Be able to visualize three room scenes as implemented by biorev in DMH 

 
Document:  
configuration of scenes and provider URLs - what did you have to do to get it to work?  
problem areas or areas that require more design or development to implement a professional solution at scale  
conduct an internal demo with the PO so that notes can be made about the poc  
PO will do a demo with Ryan/RG/Russell

**Child Tasks (8):**

- [29113] (Done) @JustinPope New Visualization Provider record
- [29114] (Done) @JustinPope New Visualization Provider server side (c# class)
- [29115] (Done) @JustinPope Scene Configuration for BioRev
- [29116] (Done) @DanielArwe New Visualiztion Provider client side (component)
- [29117] (Done) Q/A with Rob
- [29118] (Done) Meet with BioRev
- [29119] (Done) @JustinPope Visualizable Options
- [29124] (Done) @WalterMartinez Exploratory Testing

**Comments (3):**

> **Daniel Arwe** _
> 
> @ FigJam board link: https://www.figma.com/board/rUYVPvTSEe2YQ6u7XIEQhq/VDS-Dev-Design-Workspace?node-id=256-362&t=Raij6jk6h9xvonDN-0

> **Daniel Arwe** _
> 
> @ Test user in Roger environment:   bioRevRogerTest1@mailinator.com

> **Justin Pope** _
> 
> Open Questions:
> 
> What to do about visualizable options?
> Base Url?

---

### [29084] RC for 12/08

**State:** Done | **Assignee:** Justin Pope | **Priority:** 3

**Child Tasks (3):**

- [29081] (Done) @WalterMartinez Test RC in Staging
- [29082] (Done) @WalterMartinez Run e2e automated test in Staging
- [29085] (Done) @JustinPope Deployment Planning Meeting

**Comments (1):**

> **Justin Pope** _
> 
> Copied with all attachments and links from #28955

---

### [29100] Interfacelift Training "Enhanced Categories - 3rd times the charm"

**State:** In Dev | **Priority:** 3 | **Tags:** No QA

**Child Tasks (4):**

- [29097] (In Progress) @JustinPope Justin Training
- [29098] (To Do) @DanielArwe Daniel Training
- [29099] (In Progress) @ReidWilson Reid Training
- [29101] (To Do) @SamuelKlepper Sammuel Training

**Comments (1):**

> **Justin Pope** _
> 
> Copied with all attachments and links from #28645

---

