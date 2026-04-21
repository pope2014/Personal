# Sprint: Branding Theme Editor 5

**Dates:** 2025-03-12 → 2025-03-25
**Items:** 98 total (8 stories, 1 bugs, 89 tasks)

**Completion:** 96 / 98 done

---

## Stories (Product Backlog Items)

### [21679] Theme: Stylecraft

**State:** Done | **Assignee:** Reid Wilson | **Priority:** 2 | **Tags:** branding; Carried; scripts

**Description:**

Create a working theme for Stylecraft.    

 
Work with Dorliza to create a theme for Stylecraft and provide developer support for identifying necessary elements. Note: if Dorliza is not available the developers would be responsible for creating this theme.

**Acceptance Criteria:**

create a working theme for Stylecraft builders suitable to go to production 
work to support Dorliza or create the theme ourselves based on the style guidance

**Child Tasks (40):**

- [21685] (Done) @ReidWilson Iteratively meet with Dorliza until theme completion
- [22097] (Done) @JenniferHickey Execute Tests -  full theme
- [22117] (Done) @JenniferHickey Jennifer Create step by step VDS guide for all views
- [22118] (Done) @JenniferHickey Jennifer teach S&S how to navigate VDS - Tues 3/4
- [22119] (Done) @CharlieBradley Charlie teach S&S fundamentals of UI/UX design Date TBD
- [22120] (Done) @ReidWilson script to prod
- [22160] (Done) @DanielArwe Defect: Active buttons are grey
- [22161] (Done) @DanielArwe Defect: User Registration - Test User background color not visible
- [22162] (Done) @DanielArwe Defect: Incomplete Session: Orange showing on button click
- [22163] (Done) @DanielArwe Defect: breadcrumb arrow not visible
- [22164] (Done) @DanielArwe Defect: Font causing issues
- [22165] (Done) @ReidWilson Defect: Font causing problems on Homebuyer Summary
- [22166] (Done) @DanielArwe Defect: Color not part of theme
- [22167] (Done) @DanielArwe Defect: Text not visible
- [22205] (Done) @DanielArwe Defect: less important font issues
- [22207] (Done) @DanielArwe Defect: border around compare X
- [22208] (Done) @DanielArwe Defect: more grey buttons
- [22209] (Done) @DanielArwe Defect: HB dashboard completed pills
- [22210] (Done) @DanielArwe Defect: text difficult to read
- [22211] (Done) @DanielArwe Defect: Cabinet Wizard text overlapping
- [22278] (Done) @DanielArwe Defect: Design Center Appt text not readable
- [22279] (Done) Test Style Craft Theme in dev - items changed in editor
- [22396] (Done) @JustinPope Defect: Wrapping and Overflow Issues in User Impersonation
- [22397] (Done) @ReidWilson Defect: Font causing line spacing issues on wrapping price level headers
- [22400] (Done) @DanielArwe Defect: Yellow Text in Welcome to DMH
- [22403] (Done) @DanielArwe Defect: DMH: Placeholder text overlaps closing X
- [22405] (Done) @DanielArwe Defect: Nav. Menu Janky from Wrapping with Large Fonts
- [22434] (Done) @DanielArwe Defect: Plan Selector: Text overlapping with larger fonts
- [22450] (Done) @DanielArwe Defect: Welcome to DMH: Word wrapping issue
- [22456] (Done) @ReidWilson Defect: Option Pricing:  Lack of space between "unavailable" instances
- [22475] (Done) Test Style Craft Theme in dev - new variables created
- [22476] (Done) test default theme
- [22477] (Done) test legacy theme
- [22478] (Done) Test full Style Craft Theme
- [22490] (Done) @DanielArwe Defect: text too long in action bar
- [22495] (Done) @JustinPope Defect: Icons on the 'Actions' button (from DS) are hard to see.
- [22497] (Done) @ReidWilson Defect: Lifestyle snapshot progress bar is from a different color.
- [22499] (Done) @DanielArwe [?] Defect: Third item on Documents menu overflows.
- [22501] (Done) @JustinPope Defect: 'MAKE STANDARD' Tooltip from wizard overflows
- [22502] (Done) @DanielArwe Defect: "Cabinets" wizard window has an unexpected scrollbar.

**Comments (8):**

> **Charlie Bradley** _
> 
> @[TEAM FOUNDATION]\VDS Dev Team @Walter Martinez  @Robert Hobbs I attached a better quality Stylecraft logo to this story.

> **Jennifer Hickey** _
> 
> @[TEAM FOUNDATION]\VDS Dev Team @Walter Martinez  @Robert Hobbs For each of the tasls that is fixed, please post in the task if it was en editor change or a code change. If it is a code change, we'll need the script to populate that value correctly for other themes and we'll need to test that variable in TM, Flintrock, Historymaker, Default, Park Square.

> **Jennifer Hickey** _
> 
> @Daniel Arwe @Reid Wilson @Robert Hobbs @Walter Martinez Dropped back In Dev so someone can take a pass at the major views to make sure the colors/fonts work before its ready for QA.

> **Jennifer Hickey** _
> 
> @Reid Wilson @Robert Hobbs @Joe Ebeling@Walter Martinez @Eric HickeyTesting for this theme will be in tandem with training S&S on VDS and how to QA. Testing will begin, at earliest, end of day Thurs 3/6.

> **Reid Wilson** _
> 
> @Jennifer Hickey @Robert Hobbs @Joe Ebeling 
> 
> Yes, the Stylecraft theme is ready for a full QA pass.
> The expected font for this theme is 'montserrat'.

> **Jennifer Hickey** _
> 
> @Reid Wilson @Robert Hobbs @Joe Ebeling 
> @Reid Wilson Is the Style Craft theme ready for a full QA pass? 
> What is the expected font for this theme?

> **Jennifer Hickey** _
> 
> @Reid Wilson @Robert Hobbs @Walter Martinez
> Add QA tasks
> Test theme in full for web design best practices, usability, readibility, etc

> **Reid Wilson** _
> 
> List of code changes:
> "Clear All" text in Add Ons tab of cabinet selection wizard in Design Selections
> the location has been variablized; no new variable was created
> testing: affirm that this text's color matches the "Clear All" text color from the Swaps tab
> the divider line underneath the "Profile Plan" text in the DMH disclaimer
> the location has been assigned a different variable since the one it had previously was stupid; no new variable was created
> testing: affirm that the color of the divider line matches the color of the "Profile Plan" text directly above it
> the switch and active view na...

---

### [21751] Branding: Translate style guide screen shots to palette variable relationships in code

**State:** Done | **Assignee:** Reid Wilson | **Priority:** 1 | **Tags:** branding; Carried

**Description:**

The current approach of dynamically resolving all 250+ variables as we apply themes is inelegant. While at this time it is reasonably performant, it may not continue to be so as the number of variables or themes grows. Also, it makes troubleshooting the expected value of any individual element difficult.  

 
This work item attempts to simplify this structure by (in code) creating a theming skeleton that maps themeable variables to palette slot variables.  

 
Later we will pull down a structure for the palette slot colors (including computationally generated values) to the client and the code relationships would apply those rather than dynamically resolving them all.

**Acceptance Criteria:**

Given a definition of a full palette by UX for DEFAULT theme (including computed gradients),  
and screen shots showing which ui elements map to each palette slot for most of the site...  
For all palettized variables (excluding a subset of neutral or hard-coded values) update the _variables.scss file to point all known variables to palette slot variables  
example: --btn-group-bg: var(--palette-slot-1) 
the description/assignment of these variables is what we are calling a "themeable skeleton"  
 to implement the DEFAULT theme, each palette slot variable and gradient defined by UX in the previous work item #21635 is set to the explicit color defined in the style guide  _variables.scss  
example: --palette-slot-1: #aa1122 
 if an element from the screen shots has no variable defined add it to the following work item: https://dev.azure.com/BuildOnTechnologies/VeoDesignStudio/_workitems/edit/21668 
The PO will demonstrate the new default theme for key stakeholders to gather feedback  
 t...

**Child Tasks (11):**

- [22059] (Done) @ReidWilson One variable at a time, create theme skeleton
- [22060] (Done) @ReidWilson Pre-story meeting
- [22062] (Done) @ReidWilson Assist with testing/scripting
- [22063] (Done) @ReidWilson PR Review
- [22079] (Done) @WalterMartinez Execute Tests - Walter and Charlie
- [22084] (Done) @RobertHobbs PO Review
- [22275] (Done) Document Variables with happy path
- [22322] (Done) @ReidWilson Compare TM on file to DB theme
- [22323] (Done) @ReidWilson Compare Flintrock file to DB theme
- [22324] (Done) @ReidWilson Verify any other themes using file
- [22325] (Done) @RobertHobbs PO review new default theme with stakeholders

**Comments (13):**

> **Justin Pope** _
> 
> @[VeoDesignStudio]\VeoDesignStudio Team 
> Added a script to the story and have the output in excel, this is the current status of organizations on the both dev/prod DBs
> 
> Orgs Theme and DB Theme Enabled Status.xlsx

> **Reid Wilson** _
> 
> @[VeoDesignStudio]\VeoDesignStudio Team 
> 
> I have finished running the comparison scripts which compare the local SASS values against records in the ThemeableVariableValue table in our 4 production databases. The results are in the screenshots below.
> 
> TL;DR
> 
> For the themes: default, Taylor Morrison, Flintrock, and Newmark
> You may see 0 - 5 differences pop up in the screenshots below. In the cases of more than 0, I have vetted all of them. While they are a literal difference, yes, none of them result in a difference that a user would notice. For example, a difference of a comment in a line of CS...

> **Jennifer Hickey** _
> 
> @[VeoDesignStudio]\VeoDesignStudio Team Current Production Builders with Theme flag ON:
> WBS: 
> Happy Rock,
>  Perry Homes - Houston (set to Perry)
> Style Craft (set to Default)
> Eplan:
> Ally Building Solutions (set to Flintrock)
> Flintrock (set to Flintrock)
> Perry Homes Houston (set to Perry)
> TM Denver (set to TM)
> Denver: none
> CCDI: none
> 
> In the Eplan stack, all the other TM's have the flag off. Are they using the hard-coded theme??? Not sure.
> Flintrock already has flag on we we're fine there.

> **Justin Pope** _
> 
> @Jennifer Hickey, the intention with this document was to show evidence that in development we went through each step of the Theme Test Plan that you gave S&S. It was also to show differences of the default theme before and after. Dev checked in with the team each day with the progress of this document. This document was not meant to change QA plans that were set.

> **Jennifer Hickey** _
> 
> @[VeoDesignStudio]\VeoDesignStudio Team Why was the test plan and directions QA gave for testin this story (in discussion below and agreed upon at sprint planning) changed? QA has the responsibility to determine how and what to test. Creating a new document was unnecessary.

> **Justin Pope** _
> 
> @[VeoDesignStudio]\VeoDesignStudio Team
> The following document is the testing I am doing stepping through the Theme Testing Plan document
> Dev Testing Doc

> **Jennifer Hickey** _
> 
> @Charlie Bradley III @Walter Martinez @Reid Wilson @Justin Pope @Daniel Arwe 
> Lower down in the discussion is a link to a step by step directions for themes. I would use this as your plan for testing the new Default palette.

> **Jennifer Hickey** _
> 
> @Walter Martinez I attached the sql query and excel file of current Default variable values. Once deployed, run the script again and export to an excel file (Justin can show you how if needed) and compare that they are the same.

> **Daniel Arwe** _
> 
> @[VeoDesignStudio]\VeoDesignStudio Team In the interest of developing a common vaiable naming convention, these are some good ideas from Chat concerning how we could implement that:
> 
> https://chatgpt.com/share/e/67cee828-5934-800d-b844-cab2e7f06d37

> **Jennifer Hickey** _
> 
> Here is the step by step directions given to S&S to know everywhere a theme is displayed. 
> 
> Theme Testing Plan.docx

> **Justin Pope** _
> 
> @Daniel Arwe @Walter Martinez @Reid Wilson @Robert Hobbs @Joe Ebeling @Charlie Bradley III @Jennifer Hickey @Eric Hickey
> We started a figma jam board to start documenting the skeleton. Honestly this can be used to get a document to hand off to Customer Support.
> 
> Jam Board
> 
> If you need credentials, just let me know.

> **Robert Hobbs** _
> 
> Later steps:
> 
>  update each legacy theme (flintrock, TM, newmark, historymaker) 
> create new palette theme 
> applying it 
> getting customer approvals
> flag is off for them 
> remove default from the DB themes 
> remove the custom SCSS files for customers 
> remove the feature flag entirely

> **Robert Hobbs** _
> 
> T2 STORY: Define palette mappings (in code) variable -> palette variable 
> edits to _var.scss to create variable to palette slot mappings (+ gradients) 
> palette_slot_1 -> palette_slot_1_dark1 (darker color) 
> for default we would set values for the palette in code and also in the default theme for ThemableVariableValues
> regression test of default + a few other themes (bring down any modified themes from production)

---

### [21828] Branding: Update the theme engine to support palette colors

**State:** Done | **Priority:** 1 | **Tags:** branding

**Description:**

As we progress to support a themeable skeleton driven by css variables assigned to palette slot variables in the application,  
we need to update our themes engine to properly apply values saved for a new theme in the database, as well as continue to support the true default theme (with values defined in the app).  

 

 
Once we create a themeable skeleton for the application based on a default style guide and palette slots, including the computed or gradient colors we need some way to apply them to a theme.  
 
Beyond default and the "skeleton", new themes will be database constructs.  
 
This work item covers the storing of palette colors per theme in the database.  
 
Example scenario (not final):  
Given 5 palette colors, 2 neutral colors, and 6 gradients for each  
60 palette slot variables defined  
 
We need values stored like:  
 
Wild Theme | palette_slot_1 | #ccffaa 
 
computed colors  
Wild Theme | palette_slot_1_dark1 | xxxxxx 
Wild Theme | palette_slot_1_dark2 | xxxxxx 
Wild Theme | palette_slot_1_dark3 | xxxxxx 
Wild Theme | palette_slot_1_light1 | xxxxxx 
Wild Theme | palette_slot_1_light2 | xxxxxx 
Wild Theme | palette_slot_1_light3 | xxxxxx

**Acceptance Criteria:**

Given that a themeable skeleton has been defined mapping css variables to palette slot variables,  
and given that we have values for the default theme defined in files,  
 
create a database structure for storing theme palette colors  
it should be capable of storing values for each palette slot on a theme level  
 populate a palette in the DB to use for testing (all palette slot values)  
the VDS theme engine is updated to support the following scenarios:  
Visually test the following and check in dev tools 
the default theme (as defined on file) appears the same when flag on default 
a newly defined db theme with palette colors correctly (create a new theme, make sure shows default colors correctly, then set a couple of colors and make sure those set correctly, then override a group, make sure they override correctly) 
a legacy theme with specific override values in the db continues to use the current values (with use db flag on)  (TM is example of this)

**Child Tasks (19):**

- [22326] (Done) Architecture and Design Discussion
- [22327] (Done) @DanielArwe Entities created
- [22328] (Done) @JustinPope EF Migrations
- [22329] (Done) @DanielArwe Uses Case Create/Updates
- [22330] (Done) @JustinPope Dev Testing: Chrome Dev Tools and spot check
- [22331] (Done) @DanielArwe Repository Updates/Create
- [22336] (Done) @ReidWilson Population Script
- [22338] (Done) @WalterMartinez write test cases
- [22339] (Done) Execute Default Theme Test
- [22340] (Done) Test New theme
- [22341] (Done) test legacy theme (like TM)
- [22357] (Done) PO Review
- [22484] (Done) @ReidWilson Theme testing - Stylecraft (Part 1)
- [22485] (Done) @WalterMartinez Theme testing - Stylecraft (Part 2)
- [22486] (Done) @DanielArwe Theme testing - Default (Part 1)
- [22487] (Done) @JustinPope Theme testing - Default (Part 2)
- [22488] (Done) Theme testing - TM (Part 1)
- [22489] (Done) Theme testing - TM (Part 2)
- [22505] (Done) @WalterMartinez Palette change colors

**Comments (6):**

> **Justin Pope** _
> 
> @[VeoDesignStudio]\VeoDesignStudio Team
> Jam board to do Architecture
> https://www.figma.com/board/YGlhSOY7qHErlCBDxH2tTK/21828---Implement-Palette-Vars-in-DB?node-id=0-1&t=mYjCok0dDTSbO7Y5-1

> **Justin Pope** _
> 
> #21751 the gradient calculation was solidified to the following:
>     Tints and Shades calculation:
>        With starting color (ex: primary secondary tertiary neutral success warning error), convert to a HSL value and 
> 
>        calculate the range of the starting lightness value to lightest and darkest value.
> 
>        Depending on the ranges: 
> 
>          1) if the ranges are greater than 30%
> 
>             - calculate the light and dark values by stepping 10% from the starting hsl value
> 
>          2) if the ranges are less than or equal to 30%
> 
>             - take the smallest range and calculate the ...

> **Justin Pope** _
> 
> @[VeoDesignStudio]\VeoDesignStudio Team
> Discussion points:
> Where does default live?
> Database
> File

> **Robert Hobbs** _
> 
> Some notes about implementation:  
> Justin proposes:  
> use existing themablevariablevalues table to store both palette variables and non-palette variables (css level variables)  
> palette_slot_1: color1  
> bg-main: color2  
>  also include the palette variables in themeablevariables  
>  If the groups have no values in the DB and palette variables are defined, then the current engine won't dynamically resolve all variable values within a group.  
>  
> Also proposed is the idea that we might add a variable type to the table to differentiate between palette variables and css level variables.

> **Robert Hobbs** _
> 
> Note: we need to decide at this point if we must continue to support the use of ThemableGroupVariableValues as defaults for undefined ThemableVariables in legacy themes (i.e. Flintrock, TM, etc.)

> **Robert Hobbs** _
> 
> T1/2 STORY: Update theme engine to apply palette colors & support variable overrides 
> QA that new themes is using palette values in the DB 
> also existing themes are using the value defined in the themablevariablevalue table as overrides 
> devs would provide a report of overridden values for specific themes 
> select * from themablevariablevalue where theme_id = XXXX 
> or postman / theme end point to get the key value pair list 
> create the DB structure if needed for palette variables etc. 
> Justin says that palette variables would be themablevariablevalues

---

### [22024] Branding: Themes 1.0 engine optimization (cssdominizer)

**State:** Done | **Assignee:** Justin Pope | **Priority:** 2 | **Tags:** branding; Carried; Tech

**Description:**

The current themes 1.0 engine dynamically resolves many variable values. Eric had some ideas for improving this.  

 
What's so good about it?  
the browser is given an endpoint to request a CSS file  
it is used in a link tag in the index  
  
Proposal V2:
Eric had a suggestion to investigate different ways to leverage implementing a given Theme’s Variables as CSS into the browser. Discovery has revealed that we can inject styles to endpoints that would serve a CSS file for a given theme. This would improve code structure and efficiency within our application when it comes to applying a Theme’s CSS. 

 
Currently, if a user were to make a change to a given theme (updates to variables, images, and/or videos) the user would have to refresh their current session within VDS for the app to retrieve these changes. A cache and cache invalidation methodology can be utilized for the app to be knowledgeable of changes and know if and/or when a theme’s data is currently stale.

**Acceptance Criteria:**

the themes 1.0 editor continues to work   
existing database themes (themes with use db flag on) continue to look the same and do not break   
Default (db)   
Flintrock   
History Maker  
Style Craft?   
(Taylor Morrison ?)  
 compare the duration of loading / applying a theme before and after using network tab of dev tools   
Need AC for caching  
how to test theme: should change in dev tools. See before and view after deployment 
 
 
AC V2:
Feature: Inject CSS into the head of the HTML documentScenario: The VDS application is resolving a Theme on login page 
 
 
	Given the user is within the login page 
 
When there is a theme lookupkey within local storage 
 
And a static .scss file on disc associated with that lookupkey 
 
Then the VDS app will apply the .scss file associated with the lookupkey within local storage 
 
And the theme ‘color palette’ will be applied to the application 
 

 
 
Given the user is within the login page 
 
When there is a theme lookupkey within local stora...

**Child Tasks (11):**

- [22048] (Done) @JustinPope Dev
- [22049] (Done) @JustinPope PR
- [22050] (Done) @JustinPope Dev Testing
- [22078] (Done) @WalterMartinez Write test cases
- [22085] (Done) @RobertHobbs PO Review
- [22306] (Done) @WalterMartinez Execute test cases
- [22452] (Done) @JustinPope Defect: hb landing page loading default before theme
- [22483] (Done) PO Review 2
- [22504] (Done) @JustinPope Defect: Null lookupkey is causing themes not to switch to default
- [22506] (Done) @WalterMartinez Execute QA tests 2
- [22507] (Done) @JenniferHickey execute QA tests 3

**Comments (10):**

> **Justin Pope** _
> 
> @Robert Hobbs  I hate were you are going with this.... but its hard coded 😞

> **Robert Hobbs** _
> 
> @Justin Pope is the cache invalidation refresh timer in configuration or hard-coded?

> **Walter Martinez** _
> 
> ✅QA ValidationCompleted! 
> 
> PFA some screen captures and in this comment some screenshots of the actual behavior: 
> 
> Tested for more thanone org with different organizations, making sure each organization behaves on the expected way. For example: Admin being part of non-staggered with the flag off and impersonating a Staggered user (whose company has set the flag on). When impersonating, the behavior present is for the Staggered org. 
> 
> For the changes to be effective, there is no need to refresh the browser, they are performed automatically.

> **Justin Pope** _
> 
> @[VeoDesignStudio]\VeoDesignStudio Team
> I'm attaching this document as the proposed V2 of the story.
> Proposal V2

> **Jennifer Hickey** _
> 
> @Walter Martinez Some "before" screenshots of dev tools

> **Justin Pope** _
> 
> contract of work:
> 
> how does the cache invalidation work?
> images
> 
> videos
> css
> explain how to  test this
> 
> gerkhin?
> 
> Need to:
> 1) create AC based on what to achieve
> 2) assist QA on further testing effort

> **Justin Pope** _
> 
> @Eric Hickey @Jennifer Hickey @Robert Hobbs @Joe Ebeling @Walter Martinez 
> I have already been gearing up to inform everyone on the team. I will setup a meeting to make sure everyone is up to date on what is going on here.

> **Eric Hickey** _
> 
> @ @ @ @ @ Do we need to meet in order to drive this discussion, or can it happen here in the story discussion?  I don't want everyone tagged feeling like someone else is going to be the one answering, and therefore end up with radio silence.

> **Jennifer Hickey** _
> 
> @Robert Hobbs @Joe Ebeling @Walter Martinez @Justin Pope @Eric Hickey
> QA will need clarifty on the testing expected for this user story. Testing each theme listed in the AC fully, will take 3-4 hours per theme. This user story was described as needing regression testing, but meeting the AC here will take 20+ hours of testig (4 full days).
> 
> Can we focus testing? Where would we focus? What areas can be skipped? How do we begin to know where an issue would arise from this work?
> 
> How does the team want the testing effort scoped?

> **Robert Hobbs** _
> 
> has default in the DB been changed since we deployed it?

---

### [22105] Deployable RC ready for 3/17

**State:** Done | **Priority:** 3

**Child Tasks (3):**

- [22106] (Done) @DanielArwe create RC
- [22107] (Done) @JenniferHickey execute e2e happy path - automated test
- [22108] (Done) @WalterMartinez test RC in staging

---

### [22470] Variablize Plan Status text

**State:** Done | **Assignee:** Reid Wilson | **Priority:** 1 | **Tags:** added; branding; scripts

**Description:**

In the new default palette plan status text has inconsistent colors represented between Edit User Profile and Homebuyer Summary.

**Acceptance Criteria:**

Given the default theme using the new theme-able skeleton  
the text color for the various plan status values: Prospective, Contracted, Complete and Bustout  
...is consistent on both Edit User Profile (plan cards) and Homebuyer Summary

**Child Tasks (4):**

- [22520] (Done) @ReidWilson Variablize the plan status texts
- [22521] (Done) @ReidWilson PR Review
- [22529] (Done) @WalterMartinez Write/plan QA tests
- [22530] (Done) @WalterMartinez execute QA tests

**Comments (17):**

> **Daniel Arwe** _
> 
> @Justin Pope, @Reid Wilson  I attached the following comment to the script in the attachments, just for an extra measure of safety. FYI

> **Justin Pope** _
> 
> @[VeoDesignStudio]\VeoDesignStudio Team
> script has been added for the profile status color modification on themes.
> THIS SCRIPT IS POWERFUL. PLEASE REACH OUT TO ME BEFORE RUNNING THIS SCRIPT.

> **Jennifer Hickey** _
> 
> @Reid Wilson Wow. The pill looks really good. Better than the original.

> **Daniel Arwe** _
> 
> @Reid Wilson I think the no border version looks better.  I agree with @Justin Pope's sentiment that they should be the same in both locations.  Bring on the PR!

> **Justin Pope** _
> 
> @Reid Wilson your second pic is what was cooking in my head, but I think either one works. Kinda splitting hairs now. I do think that it should be the same between the two.

> **Reid Wilson** _
> 
> @Justin Pope 
> 
> Thanks. So the white border on the homebuyer summary was done on purpose. I kind of like it. I think it gives contrast to the background (which will never be light because it is themed with the variable bg-dark). But I cooked up a version without the white border too. Both are fine, so we can do whichever version more people like.

> **Justin Pope** _
> 
> @Reid Wilson that looks awesome,
> 
> One quick little thing is what is with the white border on the Homebuyer Summary?

> **Reid Wilson** _
> 
> @Charlie Bradley III @Robert Hobbs @Walter Martinez @Justin Pope @Daniel Arwe @Jennifer Hickey 
> 
> After our "In Progress" team meeting, we agreed on a style that we envisioned would look better than the preceding attempts. Pictured below are Edit User Profile and Homebuyer Summary with the updated result. I think they both turned out pretty well. Let me know your thoughts and if there is room for any further improvement. Thanks.
> 
> Edit User Profile
> 
> Homebuyer Summary

> **Charlie Bradley** _
> 
> @Robert Hobbs @Walter Martinez @Reid Wilson @Justin Pope @Daniel Arwe @Jennifer Hickey I chose #875612 of the system palette. The color needs to be readable on green background of Assigned Plans and the blue linear gradient background of the status indicator of Profile Plan. I attached a screen shot below.

> **Daniel Arwe** _
> 
> @Reid Wilson I like it.  I wish “Contracted” could be a touch darker.

> **Reid Wilson** _
> 
> @Daniel Arwe @Charlie Bradley III @Robert Hobbs @Jennifer Hickey @Justin Pope @Walter Martinez 
> 
> Maybe something like this?

> **Daniel Arwe** _
> 
> @Charlie Bradley III @Robert Hobbs @Jennifer Hickey @Reid Wilson @Justin Pope @Walter Martinez 
> What about something like...
> 
>  
> ??

> **Charlie Bradley** _
> 
> @Robert Hobbs @Jennifer Hickey @Reid Wilson @Justin Pope @Walter Martinez @Daniel Arwe I'm reviewing the theme palette now and I'm coming up with some viable options.

> **Eric Hickey** _
> 
> @ @ 
> > being a 1 or 2 doesn't matter so much.
> 
> That's my perspective, yes.  The score is an estimate, not a timebox.

> **Robert Hobbs** _
> 
> @Charlie Bradley III Can you please review the notes below and weigh in on some options ?

> **Jennifer Hickey** _
> 
> @Reid Wilson @Daniel Arwe @Justin Pope @Walter Martinez @Robert Hobbs @Charlie Bradley III 
> Can't release as is - we need to address the readbility of "Contracted" on the green background. We are doing this story specifically because we need to maintain constistency with the color of the status across views as the user is used to seeing. With maintaining consistency with the way it used to be as our guide for the business need, removing the green background isn't an option. We'll need some other solution so the text is readable and on the green background. 
> 
> Sounds like we need to reevauate th...

> **Reid Wilson** _
> 
> @Daniel Arwe @Justin Pope @Walter Martinez @Jennifer Hickey @Robert Hobbs @Charlie Bradley III 
> 
> Please see the screenshot below. I have successfully variablized the profile plan status texts in the Edit User Profile page. That is great, but the final result is not looking so good in the case of DB Themes flag OFF and Default theme and contracted status. As you can see, there is a hard-coded green background applied to plans with the contracted status.
> 
> How should I proceed?
> 
> I have technically completed the AC at this point. If this is acceptable, I can release the story for testing. On the o...

---

### [27922] Refactor Legacy User => User with EF Core Implementation

**State:** New | **Priority:** 3

**Description:**

User needs to be refactored to EF Core implementation.
Will need some work to morphing to EF
remove unneeded SQL procs 
redirect to user repos

---

### [28063] Refactor ssp_sel_search_account_organization_users to EF Core

**State:** New | **Priority:** 3

**Description:**

Utilization of this procedure ssp_sel_search_account_organization is from one Repository that is used from one endpoint HomeBuyerController.GetHomebuyerSearchResults.

Hurdles:
entities that are needed:
 
account_organization_users (no entity) 
users 
vs_account_organization_user_profile_plan (no entity / ef implementation) 
account_organizations (Tenant entity) 
vs_account_organization_user_profile_plan_catalog_sesions (no entity / ef implementation) 
account_organization_users_roles_legacy  (no entity) 
roles_legacy (LegacyRoles entity) 
Note: these entities need the correct nav properties 
 The method DataAccessSecurity.SearchAccountOrganizationUsers calls further procedures
 
DataAccessSecurity.GetAccountOrganizationUserRoles => ssp_sel_account_organization_users_roles 
DataAccessSecurity.GetAccountOrganizationUserContact => ssp_sel_account_organization_user_contacts 
DataAccessSecurity.GetAccountOrganizationUserSecurityOverridePermissions => ssp_sel_account_organization_user_override_permissions 
DataAccessSecurity.GetAccountOrganizationUserProfileUnCompressed => vs_selAccountOrganizationUserProfile 
DataAccessSecurity.GetOrganization => ssp_sel_organization 
Note: these other...

---

## Bugs

### [22363] Pattern missing from selections report

**State:** Done | **Priority:** 1 | **Tags:** design selections

**Repro Steps:**

Jim is reporting that under certain (seemingly specific) circumstances, a tile pattern is not appearing in the selections report.  

 
ORIGINAL EMAIL:  

 
This is in the EPP stack 
Taylor Morrison Denver 
  
Session ID b34c6d93-aa25-4cdf-933a-024b9adc2492 
  
Issue is that the patterns are not printing out on the
selection sheet under the area. 
  
 
  
 
  
I added a Backsplash/Tile Kitchen back splash with a pattern
then all of a sudden the patterns appear but the moment I remove that
Backsplash pattern they disappear again. 
  
 
  

 

 
ADDITIONAL INFO:  

 
I went into the application Backsplash and picked a pattern
for the backsplash. 
  
The areas are completely separate and should not be related. 
The application for the Bath 2 is walls product tile 
  
Once I picked the backsplash and printed a selection sheet
then the patterns for the wall tile showed up on the selections sheet. 
Once I removed the pattern under the Backsplash application the patterns on the
wall tile stopp...

**Child Tasks (1):**

- [22515] (Done) @JenniferHickey Execute Tests

**Comments (2):**

> **Jennifer Hickey** _
> 
> Tested:
> flooring tile selected only ✔ 
> flooring tile selected then optional shower pan ✔ 
> optional shower pan only ✔ 
> optional shower pan then flooring tile ✔ 
> wall tile then another wall tile ✔ 
> optional shower pan then wall tile ✔ 
> wall tile then optional shower pan✔

> **Jennifer Hickey** _
> 
> @Reid Wilson @Justin Pope @Daniel Arwe @Joe Ebeling @Robert Hobbs
> This is obviously a discovery story prior to the fix. QA must be able to duplicate the issue in the QA enviornment prior to deploying a code fix to test this. To do that QA must know what is causing the issue and how to reproduce it. Once known, please communicate this.

---

