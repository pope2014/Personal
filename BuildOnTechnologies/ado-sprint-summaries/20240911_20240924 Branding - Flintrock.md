# Sprint: Branding - Flintrock

**Dates:** 2024-09-11 → 2024-09-24
**Items:** 59 total (6 stories, 1 bugs, 52 tasks)

**Completion:** 59 / 59 done

---

## Stories (Product Backlog Items)

### [16494] Add provisional appointments to confirm dialog

**State:** Done | **Assignee:** Daniel Arwe | **Priority:** 3 | **Tags:** added; May Carry; sales scheduling

**Description:**

Some customers want their field sales counselors to be able to schedule a buyer when that buyer is contracted.  
They must be setup ahead of time in the scheduler.  
They can create provisional appointments which them must be approved by a scheduler user.  

 
In this story we want to make it easier for a scheduling coordinator to view and approve or reject provisional appointments.

**Acceptance Criteria:**

Given that provisional appointments are on the schedule in the near future**  
they appear in a section (or a tab) labeled: "Provisional Appointments"  
the dialog header, and corresponding hamburger menu item, should be changed from "Confirm Appointments" to "Manage Appointments" (see discussion post) 
the dialog loads provisional appointments going out X days where the value is pulled from the user settings dialog for Load X days.  
the user would only see provisional appointments for buyers who fall into the current scheduler filter rules and the organizations / locations configured for that user  
the same information appears as for appointments to be confirmed except: 
we add the email or name of the sales person who created the provisional appointment (design)  
when you click the buyer name it opens the buyer info dialog so you can modify their contact info and opt them into SMS if they haven't already  
the drop down has two elements:  
Approve - if you approve the appointment,...

**Child Tasks (16):**

- [17635] (Done) @DanielArwe Prestory
- [17636] (Done) @DanielArwe Dev. Investigation
- [17637] (Done) @DanielArwe Implement
- [17638] (Done) @DanielArwe PR Review Changes
- [17639] (Done) @RobertHobbs PO Review
- [17640] (Done) @DanielArwe Dev. Testing
- [17641] (Done) @VictorMonterrey QA Testing
- [17696] (Done) @WalterMartinez Write QA Tests
- [17875] (Done) @DanielArwe Defect: Area for reject text
- [17876] (Done) @DanielArwe Defect: should tell user that their reason will be displayed in the email
- [17877] (Done) @JenniferHickey execute test case 2
- [17880] (Done) @DanielArwe Defect: Sort order by Homebuyer name  and not appt date
- [17912] (Done) @DanielArwe Defect: Provisional appts for Today not shown
- [17913] (Done) @DanielArwe Defect: Days from today count
- [17914] (Done) @DanielArwe Finding: lag time to load dialog
- [17915] (Done) @JenniferHickey execute QA tests 3

**Comments (4):**

> **Daniel Arwe** _
> 
> @Robert Hobbs, @Walter Martinez, @Jennifer Hickey, @Charlie Bradley III
> 
> Summary of prestory meeting feedback:
> 
>  Move Date/Time column to far left
> 
> Make sure appointments listed most to least recent
> Make "day(s) from now" minimum = 1 day

> **Daniel Arwe** _
> 
> @Robert Hobbs, @Walter Martinez, @Jennifer Hickey Changing AC to reflect this...

> **Robert Hobbs** _
> 
> @Daniel Arwe @Walter Martinez @Jennifer Hickey@Daniel Arwe 
> 
> Eventually we will need a way for them to adjust the days forward to pull in provisional appointments into this new tab. So, one idea I would propose is that for this story we have a visual text box or drop down that is read only that defaults to the number of days to fetch for provisional appointments and we load those in this dialog. Later we could make that editable somehow and refresh the tab with provisional appointments going out a different length of time. Given that we are quite close to sprint end and this story may carry yo...

> **Daniel Arwe** _
> 
> @Robert Hobbs, There are a few key pieces of information I was wondering about before I get too deep into this story.
> CC: @Walter Martinez, @Jennifer Hickey 
> Questions:
> I am assuming that, because the AC says to filter "going out to X days where the value is pulled from the user settings dialog for Load X days," and "the user would only see provisional appointments for buyers who fall into the current scheduler filter rules and the organizations / locations configured for that user", that the controls highlighted here would still only apply to (and be visible on) the current Confirm Appointmen...

---

### [16936] Make background images themed 

**State:** Done | **Assignee:** Reid Wilson | **Priority:** 3 | **Tags:** branding; Carried; scripts; Victor may test with Daniel

**Description:**

We have background images in various locations throughout the site. It appears on the initial sign-in page and then also when a user logs in on the dashboard,  

  
Intent: when we brand for a builder, if they have specific  backgrounds they want to use, then either by configuration or theme we have a mechanism to upload and use those backgrounds for their theme  

 
Roger says it could break the styling in dmh. I am striking this out for now. 
 

 

 
how does it work now? we have content folders by stack with images in them  
where will the images be stored?  
how will they be uploaded  
how will this work with the way the site works now for default theme?  

 
Note: it is reasonable for us to enforce certain minimum standards for uploaded background images.

**Acceptance Criteria:**

Given that a builder (org) is configured to use a theme other than default  
either in the context of theme or via builder configuration, an admin can upload and designate background images to various locations in VDS  
 Initial list of locations:  
 
sign in page (this is a special case and requires theme application differently via local storage settings)  
landing page / default dashboard by role  
may need to support multiple images and rotation?  
 design my home

**Child Tasks (8):**

- [17642] (Done) @ReidWilson Pre-story meeting
- [17643] (Done) @ReidWilson Create new "theme configuration" view in VeoAdmin
- [17644] (Done) @ReidWilson Style the "theme configuration" view
- [17645] (Done) @ReidWilson Create new DB table and run any migrations
- [17646] (Done) @ReidWilson Sync back-end to DB
- [17647] (Done) @ReidWilson Create theme configuration service for VeoAdmin
- [17648] (Done) @ReidWilson Apply theme configurations in VDS as necessary
- [17693] (Done) @JenniferHickey Write QA Tests

**Comments (9):**

> **Jennifer Hickey** _
> 
> @Victor Monterrey @Reid Wilson I updated the test to add a step to switch the dropdown from Custom to All so we can test that a friendly error message is displayed.

> **Victor Monterrey** _
> 
> @Jennifer Hickey
> Some testing notes:
> 1- The only eligible file types should be JPG/JPEG and PNG. Do NOT switch from "Custom Files" to "All Files", because in that case the app will allow the user to upload almost any type of file.
> 
> 2- Error message for images over 2MB:
> 'A theme image cannot exceed 2MB (2048 KB). The selected image is 2095KB.'

> **Jennifer Hickey** _
> 
> @Robert Hobbs For #2, below, I'll need to know what the expected outcome to test. Who, if anyone, do you want to have this permission turned on for when deployed?
> 
> @Reid Wilson @Victor Monterrey

> **Reid Wilson** _
> 
> @Jennifer Hickey @Victor Monterrey @Robert Hobbs 
> 
> As mentioned in standup, I changed my mind about calling this theme image category "Landing Page". It will instead be called "Dashboard". This new name better reflects the fact that the category applies to both the sign-in page and all dashboards (homebuyer, sys-admin, sales counselor, and any others). The new name also makes more sense in the codebase as "Landing Page" terminology was much less prevalent while "Dashboard" terminology was much more prevalent.
> 
> My responses to the most recent questions:
> 
> Sure, I will change the permission descr...

> **Jennifer Hickey** _
> 
> @Reid Wilson @Victor Monterrey @Robert Hobbs To be consistent with other descriptions, please make the permission text say: Allows access to the theme configuration page
> 
> Upon deployment, which roles should be set to Allow?
> 
> For image rotation, is there a reason to restrict different stacks to different # of images in the rotation? How will we test, in lower environments, that certain stacks have 1 vs 2 images?
> 
> The AC says "an admin can upload and designate background images to various locations", but you mention the only location in the UI is landing_page. How will images be designated for s...

> **Reid Wilson** _
> 
> @Jennifer Hickey @Victor Monterrey @Robert Hobbs 
> 
> Here is a Q&A for my implementation of the story.
> 
> Q: Where are we putting the ability for a user to add an image?
> A: There is a new menu category in VeoAdmin called "Themes". There is a new view under the "Themes" category called "Theme Configuration". All configuration of a theme will happen in this view. Additionally, it was not in the AC, but in pre-story meeting, Rob said he eventually would want a new permission to restrict this view and that I should develop it if it wasn't much trouble. I have developed it. The new permission is called...

> **Jennifer Hickey** _
> 
> @Reid Wilson @Victor Monterrey
> Will the user be able to name the image they upload? 
> To change an image does the user overwrite the one that is upload or can they add another and make it active while deactivating the first?

> **Jennifer Hickey** _
> 
> @Reid Wilson @Victor Monterrey 
> What is the timing on the rotation of images?
> 
> How many images are in rotation?

> **Jennifer Hickey** _
> 
> @Reid Wilson @Victor Monterrey 
> Where are putting the ability for a user to add an image?
> Are there any constraints on the image size or file types?

---

### [17407] Design: Add more prominent location for page tour launch

**State:** Done | **Assignee:** Charlie Bradley | **Priority:** 3 | **Tags:** design; No QA; UI/UX

**Description:**

Currently the launcher for the Page Tours is located as a menu item in the Help menu, located in the lower right hand corner of the view.  

 
This is not a great location. I can't be sure, but I feel this prevents some users from launching the page tour if they happen to skip it.

**Acceptance Criteria:**

propose alternative locations for re-launching a page tour in various contexts so we can evaluate them: SCORE 3  
coding: add a tracking event for re-launching any page tour so we can get an idea of how often it is used: SCORE: 1   
buyer dashboard   
product catalog   
dmh landing page   
dmh selections view

**Child Tasks (3):**

- [17692] (Done) @RobertHobbs PO Review
- [17704] (Done) @CharlieBradley UX Thinking and Planning
- [17706] (Done) @CharlieBradley UI Design and Implementation

**Comments (3):**

> **Charlie Bradley** _
> 
> @Robert Hobbs I did a design based on the figma help menu. The prototype link is here:  
> https://www.figma.com/proto/goKfGDPRL67yIadkIt4ZZ6/Page-tour-screens?node-id=31-3&node-type=canvas&t=a88vBY9DRMjdrawu-0&scaling=scale-down-width&content-scaling=fixed&page-id=31%3A2&starting-point-node-id=31%3A3
>  
> 
>  
> I also record a demo video I attached to this story.

> **Robert Hobbs** _
> 
> @Charlie Bradley III thanks for these mockups. I think I also want to see one more, that is inspired by the help menu Figma uses. Could you work up something based on that?

> **Charlie Bradley** _
> 
> Here is a link to the Page Tour screens. I put to link to page tours on the hero image because I feel that's where users will focus more of their attention. There are three different looks with verbiage and icons. Let me know what you think. Thanks.
> https://www.figma.com/design/goKfGDPRL67yIadkIt4ZZ6/Page-tour-screens?node-id=0-1&node-type=canvas&t=ZEn79J7kEq1uETcF-0

---

### [17545] Expand variables for themes

**State:** Done | **Assignee:** Daniel Arwe | **Priority:** 3 | **Tags:** branding

**Description:**

We need to extend our variables further to support themes.  

 
Question: is it feasible to link the icon + label styles across UIs like in these locations:  
dmh header/budget area  
spending summary icons/labels (print/send/remove all)

**Acceptance Criteria:**

push more variables for elements in VDS 
update both the Wild and Flintrock themes  
All of DMH, including spending summary 
Design Selections 
edit profile plan   
model home viewer   
pattern viewer

**Child Tasks (18):**

- [17689] (Done) @WalterMartinez Test Strategy
- [17690] (Done) @JenniferHickey Execute QA Tests
- [17691] (Done) @RobertHobbs PO Review
- [17697] (Done) @DanielArwe Investigate/Colab with Reid as needed
- [17698] (Done) @DanielArwe Prestory Mtg.
- [17699] (Done) @DanielArwe Implement in Design Selections
- [17700] (Done) @DanielArwe Implement in DMH
- [17701] (Done) @DanielArwe PR Review Changes
- [17702] (Done) @DanielArwe Dev. Testing
- [17926] (Done) @JenniferHickey Execute Test cases 2
- [17927] (Done) @DanielArwe Defect: Wizard - Material selected check and outline
- [17928] (Done) @DanielArwe Defect: DMH - Breadcrumb arrow
- [17929] (Done) @DanielArwe Defect: DMH: Spending Summary Upgrades "bar"
- [17931] (Done) @DanielArwe Defect: Cabinet tab text color
- [17933] (Done) @DanielArwe Defect: DMH Wall Wizard - list view
- [17934] (Done) @DanielArwe Defect: "I' background
- [17935] (Done) @DanielArwe Finding: Infinite tabs grey on arrows
- [17962] (Done) @JenniferHickey Execute Test cases 3

**Comments (8):**

> **Jennifer Hickey** _
> 
> @Daniel Arwe @Robert Hobbs @Victor Monterrey Testing note: inifnite countertops can be found in Countertops > fabricated countertops > Whole House Countertops.

> **Charlie Bradley** _
> 
> @Daniel Arwe I have attached the SVG to this story.

> **Jennifer Hickey** _
> 
> @Victor Monterrey No test case needed. We'll test this with just a visual inspection

> **Daniel Arwe** _
> 
> @Charlie Bradley III, could you create an SVG that looks like this image (transparent background, color agnostic)?  We want to be able to push any color to it.  I do not have a PNG for this.  The app. is using a base64 string as the image source, but we need it as an SVG so we can set the color according to builder theme.

> **Daniel Arwe** _
> 
> @Robert Hobbs, I was able to work out the CSS for recreating the corner, 45 degree-rotated div, so we can theme that now....       
> 
> Just need to know about the checkmark.

> **Daniel Arwe** _
> 
> @Robert Hobbs, These are background images.  In order to make the color theme-able, we would need to create an SVG instead.  We already have another magnifying glass that looks the same, but is instead an SVG.  However, the current image includes the whole diagonal corner bit and not just the magnifying glass, so I would need to do some CSS work to recreate that 45 degree angled corner as a rotated <div>.  We would need to create a new SVG for the checkmark.  What would you like me to do?  Do these need to be theme-able?

> **Reid Wilson** _
> 
> @Daniel Arwe 
> 
> Yes, that seems like a decent approach. No further comment from me.

> **Daniel Arwe** _
> 
> @Robert Hobbs, You mentioned wanting to know if the colors of the icons and text next to them could be linked.  You can do this by setting one CSS value to reference another CSS variable, so for example, the variable of the color next to the icon is --text-primary.  So we could just say something like --dmh-icon-color: --text-primary.  We have, in one area, where the text color is set to --text-primary, so we could do what I just mentioned, but since --text-primary is probably used in a whole bunch of other places, we might want to do something like...
> 
> --dmh-primary-text-icon-color: --text-pr...

---

### [17650] Setup Flintrock in Staging

**State:** Done | **Assignee:** Reid Wilson | **Priority:** 3 | **Tags:** branding; Carried; No QA

**Description:**

We want to implement branding for our customer Flintrock Builders. In order to do so, we need to validate the work somewhere, and ideally not production. I think it makes sense to use the Staging environment for this.  

 
Questions:  
how will we handle acceptance testing going forward?

**Acceptance Criteria:**

In the staging environment, setup the following (using Flintrock in production as reference if possible)  
bring over the current Flintrock theme from dev to Staging (version 1.0 of the theme)  
the organization for Flintrock Builders 
the account org setup in Veosolutionssecurity_Staging https://staging.veodesignstudio.com/admin/#/home 
the customer setup in WBS_STAGING -> Veo_Staging (staging db for VEO)  
run from local and point to WBS_STAGING -> Veo_Staging 
 includes name + builder logo (from Echelon)  
at least one tenant plan w/mappings  
VCMS: some minimal catalog data (at least a few catalog options in 2-3 categories)  
dev.veocatalog.com 
 some minimal estimated data (at least a few price levels for 1-2 estimated applications)  
cabinets + 1 other  
   some test users (Reid)  
Josh Adams; jadams@flintrockbuilders.com as Designer legacy role 
 
Carline Marquez; cmarquez@flintrockbuilders.com as Designer legacy role  
Emily Marin; emily@flintrockbuilders.com as Designer legacy...

**Child Tasks (2):**

- [17719] (Done) @ReidWilson Pre-story meeting
- [17720] (Done) @ReidWilson Meet with Jaaron

**Comments (3):**

> **Joe Ebeling** _
> 
> Per Robert in 18 Oct standup this phase for Flintrock has been completed and this story can be closed.  Setting to Review for @Robert Hobbs.    I will close the tasks per meeting.

> **Joe Ebeling** _
> 
> @Robert Hobbs : Did you comment this morning that this work item can be closed, and that the 3 open tasks are probably complete?

> **Robert Hobbs** _
> 
> @Reid Wilson hey Reid, Jim says he can create the data for us if we can instruct him on where to go to do so in our environments.

---

### [17683] Release 9/16

**State:** Done | **Assignee:** Jennifer Hickey | **Priority:** 3

**Child Tasks (2):**

- [17684] (Done) Test VDS on Staging
- [17685] (Done) Test Scheduler on Staging

---

## Bugs

### [17705] White occlusion on part name truncation popover

**State:** Done | **Assignee:** Reid Wilson | **Priority:** 2

**Repro Steps:**

Sign in to VDS with a role such as SysAdmin, Designer, or related. 
Navigate into Design Selections. 
Select an application and open a non-cabinet wizard for a build. 
Find a part with a long name such that it requires a truncation and popover. 
Open the summary. Hover over the truncation on the part found in step 4. 
 Expected result: The part name text has no weird, white occlusion over any of the letters. 

 
Actual result: In some cases (if the part name is sufficiently long enough like maybe at least 5 lines), then there is a weird white occlusion that appears towards the right side of the name and obscures a letter or two. 
 

 

 
Screenshot for reference is attached to the story

**Child Tasks (3):**

- [17717] (Done) @ReidWilson Fix the bug
- [17718] (Done) @ReidWilson PR Review
- [17727] (Done) @JenniferHickey Execute test case

**Comments (2):**

> **Jennifer Hickey** _
> 
> QA validation:

> **Reid Wilson** _
> 
> I found out that the reason for the "white occlusion" is that the ::after psuedo-element (which is the little triangle that extends from many popovers) was improperly styled. I adjusted the styling to fix the issue.

---

