# Sprint: Branding Theme Editor 4

**Dates:** 2025-02-26 → 2025-03-11
**Items:** 63 total (8 stories, 1 bugs, 54 tasks)

**Completion:** 63 / 63 done

---

## Stories (Product Backlog Items)

### [21388] New Theme: History Maker

**State:** Done | **Assignee:** Reid Wilson | **Priority:** 1 | **Tags:** branding; design; dogfood; themes

**Description:**

The business has a need for a theme for Stylecraft History Maker . Their website can be found here: https://www.stylecraft.com/ https://www.historymaker.com/ 

 
Up to this point the usage of themes has been a bit theoretical. It would be helpful to work directly with stakeholders and experience what it takes to create a theme to inform future features.  

 
Questions/Notes:  
Jennifer presented the idea that Charlie would be involved and meet with Dorliza and work through workflow issues 
when encountering a roadblock on theme creation, document that issue and let's have a team discussion of whether the theme  
testing: previously we just made sure no green was on the screen for this we need to evaluate if a code change is made and if we need to retest the existing themes. So the test cases depend on the nature of the changes.

**Acceptance Criteria:**

working closely / pairing with folks from content management use the VEO Admin theme tools to produce a working theme for Stylecraft Builders History Maker Homes.  
document the issues you encounter and propose improvements to the theme editor to improve the experience and productivity  
if variable group changes are required, confer with the PO so we can discuss those changes and create a strategy for communicating them to other users and validate previous themes so that themes like Taylor Morrison, Flintrock, and Default continue to show well

**Child Tasks (27):**

- [21409] (Done) @JustinPope Meet Dorliza
- [21412] (Done) @JustinPope StyleCraft Theme
- [21416] (Done) @CharlieBradley StyleCraft Website & Style Guide Research
- [21424] (Done) @JustinPope Meet with Team on changes that are requested
- [21437] (Done) @CharlieBradley Collab with Dorliza
- [21690] (Done) @JenniferHickey QA Test font, variable color change for "More Information" text in DS
- [21782] (Done) @ReidWilson Deploy theme to Staging - see note inside
- [21783] (Done) @ReidWilson Defect: DMH spending summary bar red
- [21784] (Done) @ReidWilson Defect: TM brown in theme (4 places)
- [21786] (Done) @ReidWilson Defect: grey for clickable elements (several locations)
- [21787] (Done) @ReidWilson Defect: Wishlist on/off indistinguishable
- [21788] (Done) @ReidWilson Defect: Color Coordinator toggle hardcoded???
- [21789] (Done) @ReidWilson Defect: Active and inactive indistinguishable
- [21790] (Done) @ReidWilson Defect: Grey text on grey background difficult to read (several locations)
- [21791] (Done) @ReidWilson Defect: style element not visible
- [21792] (Done) @ReidWilson Defect: text color different within elements
- [21793] (Done) @ReidWilson Defect: Addon text needs variabilized
- [21817] (Done) @JenniferHickey Execute Tests QA Test full theme before moving to prod
- [21826] (Done) @ReidWilson Defect: area dialog
- [22043] (Done) @DanielArwe Fix HB dashboard hover underline (too long)
- [22096] (Done) @ReidWilson Defect: DMH Product Nav Menu overflows
- [22099] (Done) @ReidWilson Defect: OP Selection Details box shows TM brown in this theme
- [22100] (Done) @ReidWilson Defect: DS Documents overlap dots with Historymaker fonts
- [22103] (Done) @ReidWilson Defect: When viewing Option Pricing and DMH, the grey text on grey background in the left pane is difficult to read.
- [22104] (Done) @ReidWilson Defect: Design Selections Spending Summary More Information clickable link, but grey
- [22109] (Done) @ReidWilson DMH: Spending Summary - Blue heading
- [22110] (Done) @ReidWilson Defect: DMH Text not visible on Area/Subarea cards

**Comments (8):**

> **Jennifer Hickey** _
> 
> @Reid Wilson@Robert Hobbs @Walter Martinez @Joe Ebeling Marking Done. This can be deployed to where Sales will do their demo - prod maybe?? Rob may have already left for the day when I asked who to relay this info to in Sales, so once its in prod, I'll tell Russell its ready for demo. He can pass the info along as needed.

> **Jennifer Hickey** _
> 
> @Reid Wilson @Walter Martinez @Robert Hobbs @Joe Ebeling @Eric Hickey 
> For the remaining tasks that will be completed, please let QA know what the change was to fix the issue so we can plan how/what to test appropiately. This can happen as soon as you know how you will fix it with a quick comment on the task or story disucssion.
> 
> For any fix that changes a variable in the editor, please provide each location for that variable so QA knows where the change was made and what areas it effects. 
> 
> These are the remaining tasks that have not been tested as of 3/4.
> 22096, 22098, 22099, 22100, 22103

> **Jennifer Hickey** _
> 
> @[VeoDesignStudio]\VeoDesignStudio Team 
> To better work across teams, I added the same tasks from this story to a Planner board that is in the BOT Communication Teams channel. I needed a company-wide Team so Dorliza and Aaron could view it. 
> 
> Go to the team > General Communication > Along top row select Historymaker Theme.
> 
> The tasks are organized by Design To Do, Developer To Do, Ready for QA, Done and Will Not Do. 
> 
> Feel free to adjust the board if there is a better way to organize this.

> **Justin Pope** _
> 
> Dorliza requested today for the ability to change the image in Product Performace & Care

> **Robert Hobbs** _
> 
> You may have noticed we have updated the name of this theme. The business has said that History Maker is a higher priority for them over stylecraft. I checked in with folks and most said that no real variable defining was done that would be lost by a change.

> **Justin Pope** _
> 
> My ideas for improvements:
> 1) The way vds calls for variable values and how that is implemented can be refined. The current endpoint that gets the theme variables also returns the dashboard images. That enpoint needs to be split up and would be able to be more effeceint. When get variable values, we stuff all the variables into one style element dynamically. We should build style elements based on how the themes layer on each other.
> 2) Default should not be changed ever and specifically live in code. The _variable.scss file should be the master copy of default. We should then create a process ...

> **Justin Pope** _
> 
> From todays work with Dorliza, the following comments were mentioned:
> It was a very hard process for her know where the variable values changed for certain things
> we need a way to communicate what the variables do. We have discussed different ideas.
> Would be nice to link css pointers and navigate to that variable definition.
> I believe more information is needed for this before we take action on this. I beleive she wants to have 'aliasing' or a specific pallete and drop theme into the CSS variables to define them.
> Would be nice to organize the variables with the pages they are apart of.
> Rob flo...

> **Justin Pope** _
> 
> Link to Day 1 recording:
> Style Craft theming and Theme Editor day 1-20250204_090236-Meeting Recording.mp4

---

### [21394] Regression Test: Dashboards

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
Move Dashboards tests from .net conversion test suite to regression test suite (links above) 
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

**Comments (1):**

> **Jennifer Hickey** _
> 
> Copied from #21393

---

### [21635] Branding: Create VDS Style Guide

**State:** Done | **Assignee:** Charlie Bradley | **Priority:** 1 | **Tags:** branding; Carried; design

**Description:**

Like other organizations' applications, VDS needs a whollistic, coherent set of constraints that define acceptable stylistic choices and reduce the number of uniquely-styled elements within the applicaition.  This will facilitate the builder branding effort and simplify the process of defining a theming system and how the end users (in service and support) interact with that system.  Perry and TM style guides can provide examples to start from. They are attached in the links. 

 

 
@Charlie Bradley III this is the document created by Dorliza for HistoryMaker - can we make sure that those locations are also included in your design work? Edits for HistoryMaker theme.docx 

 
  
Header/Footer/TitleBar 
Option Pricing 
DMH 
Design Selections 
Homebuyer Dashboard

**Acceptance Criteria:**

Identify as small a number as feasible of colors used in the VDS application, taking care to condense colors that are similar or indistinguishable into a single color. 
"Brand colors" (goal: 6) - These are builder-specific colors 
"Semantic colors" (goal: 3-4) - These communicate states in the application (error, warning, success, etc.) 
 Reduce the number of colors used according to step 1 findings. 
Define a single font to be used app-wide. 
Create screen shots of elements affected by palette colors, document new value and old value for the elements

**Child Tasks (8):**

- [21706] (Done) @CharlieBradley Capture variables for Splash/Home page
- [21707] (Done) @CharlieBradley Capture variables for Option Pricing page
- [21708] (Done) @CharlieBradley Capture variables for DMH
- [21709] (Done) @CharlieBradley Capture variables for Design Selections
- [21710] (Done) @CharlieBradley Capture variables for Homebuyer Dashboard
- [21711] (Done) @CharlieBradley Create color palette based on variable captures
- [22217] (Done) @CharlieBradley Mapping New Palette Colors
- [22238] (Done) @CharlieBradley Capture Styling for life style snapshot

**Comments (4):**

> **Jennifer Hickey** _
> 
> https://www.figma.com/board/sLnWlwb2rpM2Wngplawqn3/VDS-Color-Pallette?node-id=0-1&p=f&t=cyD3UgzZHBgmuZK0-0

> **Robert Hobbs** _
> 
> @Charlie Bradley III can you please link to your style guide from here?

> **Robert Hobbs** _
> 
> Once we have a palette created for default, we need labels for all the palette slots. So we would expect palette_slot_1, palette_slot_2, palette_slot_3, etc and also X number of computed gradient values based on that palette variable: pallete_slot_1_dark1, pallete_slot_1_dark2, pallete_slot_1_dark3 etc. 
> 
> The palette for default should be an image that shows all the palette slots with labels and actual colors and hex code values 
> 
> Screen shots that point out elements mapped to their palette slots (either single slots or as linear gradients if needed: linear-gradient(palette_slot_1_light1 , pal...

> **Daniel Arwe** _
> 
> @Charlie Bradley III Do we have any starting point that was left by Jessica, by chance?

---

### [21827] Branding: Dr. Heinz Doofenshmirtz VariableizerTooltipenator

**State:** Done | **Assignee:** Daniel Arwe | **Priority:** 2 | **Tags:** branding

**Description:**

In both the current VDS theming system and the upcoming Theming 2.0 palette-based approach, identifying the correct CSS variable to modify without browser dev tools is challenging for service and support users handling theme creation and edits. This story aims to develop a utility tool that simplifies identifying CSS variables applied to UI elements. By making it easier to pinpoint the relevant variables in the theme editor, this tool will streamline the theming process and accelerate completion of theme edits.

**Acceptance Criteria:**

Given that a user is viewing VDS and has the permission: "Can Configure Themes" allowed 
 Update the permission description to include additionally: "..and view element theme variable names in VDS. To enable this use the key sequence: [CTRL + SPACE] "  
When a user is assigned a role with the above permission set to "Allow".... 
....when a designated key combination is entered then the application toggles ON the viewing of themeable variables associated with elements. That key combination is: CTRL + SPACE  
and the user mouses over an element.... 
...if the element has any CSS properties getting their value from an applied CSS variable (value of `var(--variableName)`), a tooltip appears showing key-value pairs for property: cssVarName or perhaps more-detailed metadata (see discussion below regarding how "smart" to make the tool.  For example: "background-color: var(--primaryColor)" 
...if the element does not have any CSS properties getting values from CSS variables, a tooltip shows "N...

**Child Tasks (9):**

- [22051] (Done) @DanielArwe Parse element styles & return
- [22052] (Done) @DanielArwe Handle tooltip show/hide/move
- [22053] (Done) @DanielArwe Tie tooltip to permission
- [22054] (Done) @DanielArwe Handle toggle tooltip on/off
- [22055] (Done) @DanielArwe PR review changes
- [22057] (Done) @RobertHobbs PO Review
- [22058] (Done) Code cleanup and last minute changes
- [22214] (Done) @WalterMartinez Write QA Tests
- [22215] (Done) @WalterMartinez Execute QA Tests

**Comments (11):**

> **Walter Martinez** _
> 
> ✅QA Validation Completed! 
> 
> Verified that the text displayed in the app matches exactly as shown in the screenshots.
> Conducted exploratory testing, including activating and deactivating the feature at various stages.
> Navigated across different app views to ensure seamless integration of the feature.
> Hovered over interactive elements to confirm all tooltips are visible.
> Ensured tooltips are not truncated, even at different zoom levels or when they are longer than usual.
> 
> See video attached.

> **Jennifer Hickey** _
> 
> @Daniel Arwe @Robert Hobbs @Walter Martinez All text looks good.

> **Daniel Arwe** _
> 
> @Robert Hobbs, @Jennifer Hickey, @Walter Martinez  In the spirit of full disclosure, here are some screenshots to inform the QA process (as promised in our demo. this morning, QA folks).
> 
> Overlay Frames (in order of appearance):
> 
> Here is a screenshot of the indicator that tells the user whether or not the inspector is on....

> **Daniel Arwe** _
> 
> @Robert Hobbs @Jennifer Hickey @Walter Martinez @Charlie Bradley III  Pasting here for visibility....

> **Daniel Arwe** _
> 
> @Robert Hobbs @Jennifer Hickey @Walter Martinez @Charlie Bradley III continuing the discussion started with Rob and Jennifer below....
> 
> I think I'll go with something a bit nicer than a JS alert box.  Even though this is an internal utility that only BOT users will see, I don't want them getting the impression that it is "cheap" or quickly thrown together, since that will likely color their perception of the tool going forward and its usefulness.
> 
> This is what I propose instead...
> 
>  When the user presses CTRL-SPACE to activate, an overlay appears that tells the user the following...
> That they'...

> **Robert Hobbs** _
> 
> @Jennifer Hickey @Daniel Arwe No strong feelings about it. 
> If I were to improve the wording I suppose it would be: 
> "Theme Helper activated - hover over elements to inspect variables.
> To turn this feature off, press CTRL+SPACE."

> **Jennifer Hickey** _
> 
> @Daniel Arwe @Robert Hobbs You know my thoughts on browser alerts but, since its just for us internally, I think "themable variable helper tooltip" is a lot to unpack. What about - "You have actived a tooltip that will display the themeable variable associated with an element. Hover over elements to inspect their applied themeable variable"?   
> 
> Not picky at all though.

> **Daniel Arwe** _
> 
> @Robert Hobbs @Jennifer Hickey  Do you want a nicer looking custom toaster-style message letting the user know when the tooltipper is toggled ON and OFF, or is an OOTB JS browser alert sufficient, given that this is strictly a utility used by internal BOT users?  
> 
> Also, regardless of the UI mechanism utilized, is the wording below OK?  If not, please provide desired wording for both states.
> 
> Once I get an answer to that question, I will be very close to PR-ing this baby.

> **Robert Hobbs** _
> 
> @Daniel Arwe hey Daniel the AC looks fine, but we already have a permission for configuring themes - I suppose my question is if we need a special one for this or we can just use that one: 
> 
> On your second question - I would propose we keep it simple for first pass then iterate on it if we need to show a chain

> **Daniel Arwe** _
> 
> @Robert Hobbs , I took a stab at writing the Description and AC above.
> 
> Outstanding questions:
> 
>  Do we need a new role for "Theme Designer" or just attach new permission to existing role?
> 
> Do we want the metadata provided for each property being styled by a CSS variable to contain the entire chain of references to a resolved value?  In other words, do we want to tool to be smart enough to drill down until it finds a non-variable-reference value, and thus return detailed info. on how the value is getting resolved?
> NO:  "background-color: var(--primaryColor)"
> YES: "background-color: var(--primar...

> **Daniel Arwe** _
> 
> 

---

### [22006] Test in Staging

**State:** Done | **Priority:** 3

**Child Tasks (4):**

- [22007] (Done) @JenniferHickey automated happy path
- [22008] (Done) @WalterMartinez Execute Tests regression test RC
- [22075] (Done) @ReidWilson Defect: font on buttons on Homebuyer Summary
- [22076] (Done) @WalterMartinez regression test RC 2

---

### [22039] Test Failure: Element class name change for Wishlist icon

**State:** Done | **Assignee:** Jennifer Hickey | **Priority:** 3 | **Tags:** added; automation; blocked

**Description:**

Automated tests depend on finding elements using id, class name, tag name, attributes or (worst choices) xpath.  
When these are changed, the automated tests fails because elements in the UI can't be found. 
In this case the wishlist container was changed from "ico -primary" to "ico". The change will need to be made in the automated test code alongside the change in the main code to prevent failing tests.

**Acceptance Criteria:**

update Wishlist Container element for new identifier (id preferably or new xpath)

**Child Tasks (1):**

- [22516] (Done) @JenniferHickey Execute Tests

**Comments (3):**

> **Jennifer Hickey** _
> 
> @Reid Wilson @Justin Pope @Daniel Arwe @Eric Hickey 
> You have been invited to an exciting opportunity to see how dev changes to HTML effect the automated tests. This locator change is in PR for your viewing pleasure (and required approval).

> **Reid Wilson** _
> 
> @Jennifer Hickey @Joe Ebeling The code has been deployed.

> **Jennifer Hickey** _
> 
> @Reid Wilson @Joe Ebeling My work on this is blocked pending the PR that includes the change. Please post here when the code has been deployed.

---

### [22088] Release 3/3

**State:** Done | **Priority:** 3 | **Tags:** No QA

---

### [22125] Theme: Park Square

**State:** Done | **Assignee:** Reid Wilson | **Priority:** 3 | **Tags:** added; branding; No QA

**Description:**

The presumption for this theme is that Dorliza will be making a small modification to an existing theme [History Maker or TM]. As such we do not expect any effort on the part of development except to push the theme to staging for a customer demo.  

 
However, given that QA may want to make a pass on it, I am including some screen shots here.  

 
Below are some locations Russell has communicated he may demo.

**Acceptance Criteria:**

given that the content administrator creates the theme for Park Square 
some level of QA or review is done on the new theme  
the VDS team pushes the theme data to staging and the PO adds a logo and background images for a sales demo

**Comments (1):**

> **Jennifer Hickey** _
> 
> @Robert Hobbs @Jennifer Hickey@Eric Hickey@Reid Wilson @Joe Ebeling 
> We agreed in the meeting with Aaron that after the Style Craft theme, and beginning with Park Square, the VDS team would no longer be involved in theme creation or QA. During Style Craft we are training the S&S team on how to use VDS and giving a short guide on how to QA test with the expectation that after Style Craft our team is no longer involved other than creating the theme for them in the DB and scripting to a higher enviornment once ready.
> 
> If the expectation is for VDS QA to be involved here, then this story must incl...

---

## Bugs

### [21263] Selections Report - group by area

**State:** Done | **Assignee:** Daniel Arwe | **Priority:** 2 | **Tags:** selections report; Story Time

**Repro Steps:**

When running a selection report, and you select Group By Area, any notes added to any area, are not displayed.

**Child Tasks (5):**

- [22080] (Done) @WalterMartinez Confirmation Testing
- [22139] (Done) @DanielArwe Dev. discovery
- [22140] (Done) @DanielArwe Resolve issue
- [22141] (Done) @DanielArwe PR Review Changes
- [22142] (Done) @DanielArwe Execute Tests

**Comments (4):**

> **Joe Ebeling** _
> 
> @Robert Hobbs @Joe Ebeling; Robert.  This is being closed so it would not carry with you being out during the week.  (Eric also suggested to close it and reopen later if necessary.) Please let me know if you would like this item reopened.  I will reach out and discuss this item when you return.   Also, there was an issue found outside the scope of this Bug and could require a separate Bug or a new Work Item that examines the Page Break behavior.  Please advise.   thanks - joe

> **Walter Martinez** _
> 
> Besides the comment below. This bug was completely fixed. ;)

> **Daniel Arwe** _
> 
> @Robert Hobbs, @Jennifer Hickey, @Walter Martinez Documenting our lengthy Teams discussion on this here for posterity (and visibility):

> **Daniel Arwe** _
> 
> @Robert Hobbs, @Jennifer Hickey, @Walter Martinez, I noticed that the area note currently appears as follows.....(please see question below and advise.  Thanks!)
> 
>  
> 
>  
> 
>  
> 
>  
> Where do we want the note to appear when the report is grouped by area?

---

