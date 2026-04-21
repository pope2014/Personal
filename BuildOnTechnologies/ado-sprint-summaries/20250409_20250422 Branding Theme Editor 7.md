# Sprint: Branding Theme Editor 7

**Dates:** 2025-04-09 → 2025-04-22
**Items:** 63 total (4 stories, 0 bugs, 59 tasks)

**Completion:** 59 / 63 done

---

## Stories (Product Backlog Items)

### [18688] Branding Theme Configuration - Theme Versions

**State:** Done | **Priority:** 1 | **Tags:** branding; Carried

**Description:**

Periodically a user may make mistakes with respect to changing a theme. As such, we may want to rollback to a previous version of the theme.

**Acceptance Criteria:**

Given that a user has permission to edit themes  
and has made modifications to a theme  
and decides to edit a theme:  

 
add db fields to support versions and write version 1 to all current themes  
  
a version selector is displayed in the header area of the current theme that contains a list of all distinct versions. It defaults to the latest version that has been saved  
if for example, a theme has v1, 2, 3 the theme selector would default to 3 by default when editing a theme  
 the user can choose a previous / different theme to edit  
if they have unsaved changes on the latest theme it prompts them to save  
  when they select a different theme version the editor loads that theme version  
 
 
 
Given that a user has permission to edit themes  
and has made modifications to a theme  
and decides to save a theme  

 
the theme is saved with a version number.  
the version number starts at 1
 
by default it is incremented by 1 
we record the editor (user) and the date time of the...

**Child Tasks (23):**

- [22571] (Done) @WalterMartinez Test Case Writing
- [22572] (Done) @WalterMartinez Execute Tests
- [22573] (Done) @RobertHobbs PO Review
- [22575] (Done) @DanielArwe [Code] Entities Creation
- [22576] (Done) Discuss Architecture
- [22578] (Done) [Code] UI Changes
- [22582] (Done) [Code] Use Cases / Units Test
- [22583] (Done) @DanielArwe [Code] Migration
- [22584] (Done) [Code] SQL Script(s)
- [22591] (Done) [Code] Endpoints
- [22764] (Done) @ReidWilson ThemeManger | variables
- [22765] (Done) @JustinPope ThemeManager | images
- [22766] (Done) @DanielArwe ThemeManager | Theme as a whole
- [22782] (Done) PR
- [22783] (Done) Dev Testing
- [22847] (Done) Defect: Revert button does not appear when change to variable is made
- [22848] (Done) Defect: When Canceling leaving the pages, changes cleared
- [22849] (Done) Defect: New version doesn't appear in Org Details without a refresh
- [22852] (Done) @JustinPope Defect: Change permission name.
- [22853] (Done) Defect: Cannot get rid of the pair of buttons when editing variables
- [22854] (Done) Defect: Wrong instruction when updating an older version to the latest
- [22855] (Done) @JustinPope Defect: Cannot get rid of the pair of buttons when editing images
- [22863] (Done) @WalterMartinez Execute QA tests 2

**Comments (9):**

> **Reid Wilson** _
> 
> @Jennifer Hickey @Walter Martinez @Robert Hobbs 
> CC: @Daniel Arwe @Justin Pope 
> 
> Let's clarify how this piece of AC can be verified:
> we record the editor (user) and the date time of the change 
> 
> There are multiple ways the theme can be modified today: group variable value change, child variable value change, and image change. Any of those changes will cause the modifier and modified date fields on the corresponding record in the ThemeVersion table to be updated. For example, if you update a child variable value for theme X version 2, then the record in ThemeVersion corresponding to theme X ver...

> **Justin Pope** _
> 
> Mentioned in !7417

> **Daniel Arwe** _
> 
> Following up on question asked below, pasting @Robert Hobbs's response here for visibility @Jennifer Hickey, @Justin Pope, @Reid Wilson, @Walter Martinez

> **Daniel Arwe** _
> 
> @Robert Hobbs, @Jennifer Hickey, @Walter Martinez
> This banner, for letting a user that didn't have permission to modify Default theme know that, used to live in each tab.  It will now live higher up here:
> 
> Any issues with that?
> CC: @Justin Pope, @Reid Wilson

> **Daniel Arwe** _
> 
> @Robert Hobbs @Jennifer Hickey@Walter Martinez 
> 
> AC says:  if the user chooses to update a version of the theme that is used in production the system warns them and allows them to cancel that operation. Another possibility is an icon indicating on the button that it's in use by a live builder (maybe red exclamation icon) 
> Given the state of the story and the closeness to the end of the sprint, could we move this to another story in the next sprint, maybe, to lock this down better? Since organization lives in VEOSolutionsSecurity, there is additional backend config. that will be needed to suppo...

> **Justin Pope** _
> 
> @Daniel Arwe @Robert Hobbs @Reid Wilson @Jennifer Hickey @Walter Martinez Added script to update organziations to have a themeid and themeversionnumber, back fill them and foreign key

> **Daniel Arwe** _
> 
> @Robert Hobbs @Justin Pope @Reid Wilson @Jennifer Hickey @Walter Martinez 
> Thanks Rob.  Understood.  We discussed in prestory meeting.  It just didn't make it into the written discussion.  nextVersionNumber = maxVersionNumber + 1.  Go it!

> **Robert Hobbs** _
> 
> @Daniel Arwe @Justin Pope @Reid Wilson @Jennifer Hickey @Walter Martinez 
> 
> Sorry Daniel, I did not explicitly respond to this question. When editing any theme I think to keep it simple, the incremented version should be max version + 1. Otherwise, it gets super complicated. We will need a logging mechanism for changes and so with that we may want to include an event that records that action so it's apparent in the history what happened for a theme.

> **Daniel Arwe** _
> 
> @Robert Hobbs (CC: @Justin Pope, @Reid Wilson, @Jennifer Hickey, @Walter Martinez)  I had a question come up in my mind concerning versioning of themes. 
> 
>  
> Scenario:  A user has created a theme for Builder X.  The following versions have been saved up to this point: 
> 
>  
> 1.0, 1.1, 1.2, 1.3 
> 
>  
> A user goes in to make changes to 1.1 and opts to save the result as a new version.  Does that new version get a version number of 1.4 (since 1.2, the next number resulting from incrementing 1.1 by 0.1, is already a version number in existence)?

---

### [21754] Branding: Support palettes in Theme Editor

**State:** Done | **Priority:** 1 | **Tags:** branding; Carried

**Description:**

The current theme editor can be said to "work" in the sense that if a user knows which variable affects an element in the application they can update a value and it is reflected in the site when the theme is applied.  

 
However, the usability is quite poor because there are too many variables, no context for where the variables are affected in the site and they are grouped in such a manner that makes it unlikely that applying a higher level group value to all related css children would produce a good result.  

 
It also supports gradients or alternative colors by declaration in the element CSS only.  

 
This work item refactors the theme editor UI to support a simpler palette structure.

**Acceptance Criteria:**

Given that a user has permission to manage themes  
and a theme is selected in the editor:  

 
for a given theme, palette slots are displayed showing colors values for the them if they are set  
we want a black border on all slots  
 additionally, system color palette slots are displayed using pre-defined values  
we will hard code them (for now) 
 the palette slots have an empty appearance similar to the mockups if no color is defined  
the user can use a color picker to choose a color for any of the "main" palette colors and once chosen, the palette slot shows the new color 
 
when a color is chosen:  
3 shades and tints are computed using the color mix approach (automatically)  
additionally, the 3 linear gradients associated with the main palette slot are updated based on the tints and shades computed 
 the user can use the color picker to override a tint or shade palette slot if it is populated with a color. Those slots do not appear unless computed.  
on hovering a palette slot,...

**Child Tasks (24):**

- [22577] (Done) @WalterMartinez Write QA Tests
- [22579] (Done) @JenniferHickey Execute QA Tests
- [22580] (Done) @RobertHobbs PO Review
- [22597] (Done) @CharlieBradley UI Design
- [22599] (Done) @DanielArwe [Backend] Endpoints
- [22602] (Done) Test - Build Random Theme
- [22745] (To Do) @RobertHobbs Write new stories to update all views with new save text
- [22817] (Done) @DanielArwe [Backend] Update Variable Fetching use case / unit tests to roll in palette vars.
- [22818] (Done) @DanielArwe [Backend] Update Variable Saving use case / unit tests to roll in palette vars.
- [22819] (Done) [Frontend] Tints/Shades Calculation Logic
- [22822] (Done) [Frontend] UI Displays Palette Variables (minus save functionality)
- [22825] (Done) @ReidWilson [Frontend] UI Allowing Editing/Saving Palette Colors/Tints/Shades
- [22830] (Done) @DanielArwe [Collab] Devs Provide QA Color Palette Slot Names Expected on Hover
- [22840] (Done) @JustinPope [Frontend] Code to read linked stylesheet to display system/semantic colors in UI
- [22850] (Done) @DanielArwe Defect: The separator line is acting weird.
- [22980] (Done) Defect: Black saving as color for missing palette slots
- [22988] (Done) @JustinPope Defect: darkest color is always "blackish"
- [22990] (Done) @JustinPope Defect: no save when changing tints/shades
- [22991] (Done) @JenniferHickey execute QA tests 2
- [22994] (Done) @JustinPope Defect: Gradients overwriting all versions
- [23027] (Done) Defect: clicking out of theme variable palette doesn't return to +
- [23028] (Done) @JenniferHickey Execute QA tests 3
- [23029] (Done) @ReidWilson Defect: Ensure font size are correct in UI
- [23045] (Done) @CharlieBradley Design Review UI spacing

**Comments (11):**

> **Daniel Arwe** _
> 
> @Jennifer Hickey, @Walter Martinez....according to the following AC...
> 
> Please see _paletteVariable.scss file attached to the story.  Let us know if you need any additional information concerning what the UI will show in the tooltip on hover.
> 
> Each of the following, and their derived tints and shades are editable by the user.  Each one should have a main color, shown below, (no suffix), 3 derived tints, and 3 derived shades.
> --palette-primary
> --palette-secondary
> --palette-tertiary
> --palette-neutral
> Any variables in the sections prefixed with  '//semantic...', in the code comments, are the non-...

> **Jennifer Hickey** _
> 
> After team discussion, the saving indicator will be shown as the normal "squares" overlay for the view. This diverges from the mockup and all are in agreement due to length of time the smaller save indicator would take.

> **Robert Hobbs** _
> 
> view palette slots / system palettes  
> load colors for a theme  
> show empty if no values  
> use choose / change colors for all non system palette slots, including gradients (once a primary is chosen)  
> the gradient slots don't display unless a main/primary palette is chosen  
> variable name is displayed as a hover tooltip over the palette slots  
> calculate gradients - gradients 1  
> save  
> 
>  
> Additional Stories: 
> gradients 1: color mix - may not work for all theme colors, they may have to play with the starting color to make it look good  
> gradients 2: color library - more sophisticated gradient ...

> **Robert Hobbs** _
> 
> >> Per Charlie's mockup we need to add functionality so a user can either add a new font via a link or an uploaded file.  
> 
> This topic was discussed as out of scope for this story, because the architecture to support font uploading doesn't exist. It can be in the mockup (or removed) the mockup is intended to be inspiration to the implementation of the UI, not really a contract. If it gets in the way then we can ask Charlie to move it out. 
> 
> >> The dropdown for fonts can show the font as the font or just show it in plain test (Charlie needs to know dev effort on displaying font as font). This c...

> **Jennifer Hickey** _
> 
> @[VeoDesignStudio]\VeoDesignStudio Team
> Per mocked demo this morning:
> Add text when save was successful across all views in VeoAdmin. Will start with this view, but must agree that this change will be priority across whole site bfore we implement it here.
> Per Charlie's mockup we need to add functionality so a user can either add a new font via a link or an uploaded file. 
> The dropdown for fonts can show the font as the font or just show it in plain test (Charlie needs to know dev effort on displaying font as font). This changes the AC so each entry is stylized using the font is removed

> **Jennifer Hickey** _
> 
> @[VeoDesignStudio]\VeoDesignStudio Team 
> Notes from UX Preview:
> - Duplicate Palette dropdown NOT part of this work (story to come)
> - Shade generation - Generate shades as soon as color is selected plus gradients automatically generated
> 
> - Saving
> 
> 	- when less than 4 colors shows error message. Editing the shades is not allowed in this story
> 
> 	- Save button inactive until all 4 colors selected
> 
> 	- Do we need the "Items ready to save" text?
> 
> - Change color- click color box again, select color picker, click save
> 
> - System palette is not editable. Should show a tooltip that tells the user they are...

> **Robert Hobbs** _
> 
> Some future features: 
> clear  color palette and gradients 
> override computed gradient palette slots 
> toggle auto-calculate computed gradient 
> override system colors (potentially a flag?)
> show palette variable names and current colors on the palette slots in a way that doesn't overly obscure the color swatch 
> add borders and use computed to determine if the palette slot needs a border? (black border may be fine)

> **Robert Hobbs** _
> 
> Figma link:  https://www.figma.com/design/yL6DBFUhJmHq873KGwlJvH/Untitled?node-id=0-1&t=4e0z01K05EFO9Och-1

> **Robert Hobbs** _
> 
> let's store the list of approved fonts in a table to support future functionality

> **Robert Hobbs** _
> 
> Some notes about implementation: 
> Justin proposes: 
> use existing themablevariablevalues table to store both palette variables and non-palette variables (css level variables) 
> palette_slot_1: color1 
> bg-main: color2 
> also include the palette variables in themeablevariables 
> If the groups have no values in the DB and palette variables are defined, then the current engine won't dynamically resolve all variable values within a group. 
> 
> Also proposed is the idea that we might add a variable type to the table to differentiate between palette variables and css level variables.

> **Robert Hobbs** _
> 
> T1/T2 STORY: Create computed palette colors 
> for a given color compute palette colors as gradients/luminosity rangecalculate and update values of palette values for DEFAULT?

---

### [22249] Deployable RC ready for 4/14

**State:** Done | **Priority:** 3

**Child Tasks (3):**

- [22266] (To Do) @ReidWilson create RC
- [22267] (Done) @JenniferHickey run e2e automated test in staging
- [22268] (Done) @WalterMartinez test RC in staging

---

### [22812] Branding: Choose font for theme 

**State:** Done | **Priority:** 1 | **Tags:** branding; scripts

**Description:**

As a content / theme editor, I want to be able to designate the font that my new theme will use, choosing from a list of supported fonts.

**Acceptance Criteria:**

Given that a user has permission to edit a theme in VEO Admin:  

 
a list of supported fonts is populated for the user to browse  
the font list is alphabetized  
the font list is provided in a comment of this story 
 if the current theme has a font assigned, that font is selected from the list as the theme loads  
the user can change the selected font for the theme and the system recognizes this is a change to the theme to be saved  
the user can save the theme and thereby update the font for the theme  
the font selected is displayed in the VDS website for any builder using this theme  
 The font-main variable in the variables override list does not appear. 30m hide by name in code  

 

 
New criteria (agreed upon in war room): 
if a theme does not have a value defined for the font variable explicitly, then the dropdown is set to a value by default which reads "VDS Default (Lato)"; this value of the dropdown internally means there should be no record for the font variable value

**Child Tasks (9):**

- [22929] (Done) @WalterMartinez Write QA Tests
- [22930] (Done) Execute QA Tests
- [22931] (Done) @RobertHobbs PO Review
- [22932] (Done) @ReidWilson Create font selector
- [22933] (Done) @ReidWilson Hide font variable
- [22934] (Done) @ReidWilson Handle saving
- [22935] (Done) @ReidWilson PR Review
- [23050] (To Do) Defect: new fonts don't work in VDS app
- [23051] (To Do) @JenniferHickey Execute QA tests 2

**Comments (3):**

> **Reid Wilson** _
> 
> We have struck out Brush Script MT and Courier New from the list.

> **Reid Wilson** _
> 
> List of web-safe fonts:
> Arial
> Verdana
> Tahoma
> Trebuchet MS
> Times New Roman
> Georgia
> Garamond
> Courier New
> Brush Script MT
> List of intentionally supported fonts:
> Lato
> FigTree
> Roboto
> Inter
> Proxima-Nova
> Montserrat
> 
> All of the above comprise our list of approved fonts.

> **Robert Hobbs** _
> 
> Other solutions to hiding font: 
> 
> hide by name in code 30m 
> add a display variable to the master list of themeablevariables 4-8 
> create a database field that has a delimited list of hidden variables 
> typing on themeable variables to indicate the source (color, font, etc)

---

