# Sprint: Enhanced Categories 1

**Dates:** 2024-09-25 → 2024-10-08
**Items:** 77 total (12 stories, 0 bugs, 65 tasks)

**Completion:** 75 / 77 done

---

## Stories (Product Backlog Items)

### [11283] ONBOARDING: Create an Aurelia ValueConverter

**State:** Done | **Assignee:** Justin Pope | **Priority:** 3 | **Tags:** No QA; ONBOARDING

**Description:**

In this exercise, we will create a new value converter in aurelia that will display the appropriate name for the numeric value that we store for Rounding Type on an organization.

**Acceptance Criteria:**

Create a value converter that will accept the numeric rounding value for an Organization and return the appropriate string that we'd like to see on the site 
Apply the value converter to the Organization Details view 
Remove any code that has been rendered obsolete due to this change

**Child Tasks (3):**

- [18030] (Done) @JustinPope Dev Investigation
- [18060] (In Progress) @JustinPope PR Review
- [18091] (Done) @JustinPope Development

---

### [16502] Maximize plan images on selections report

**State:** Done | **Assignee:** Reid Wilson | **Priority:** 2 | **Tags:** AFI; Tammy

**Description:**

AFI is asking if we can maximize the appearance of floor plan images on the selections report.  

 
The images are attached.

**Acceptance Criteria:**

modify the floorplan detail report to scale up the images to the max width in a manner similar to package catalog items  
using a variety of images including those attached determine whether this should be the new standard or if we need some kind of preference or configuration we can apply to this one customer

**Child Tasks (5):**

- [18005] (Done) @VictorMonterrey Write QA tests
- [18008] (Done) @VictorMonterrey Execute QA tests
- [18029] (Done) @ReidWilson Maximize the images
- [18031] (Done) @ReidWilson PR Review
- [18093] (Done) @ReidWilson Pre-story meeting

**Comments (5):**

> **Victor Monterrey** _
> 
> Working as expected.
> Small images are being upscaled properly.
> There are no issues for horizontal-dominant and vertical-dominant images.
> Images are centered correctly.
> Proper error message is being displayed if the user tries to upload an incorrect format (System will only accept: JPG, PNG and PDF).

> **Reid Wilson** _
> 
> @Robert Hobbs @Victor Monterrey @Jennifer Hickey 
> 
> Here are some screenshots demoing the new functionality with every case covered I can think of. You will see that:
> small images will scale up a ton
> horizontal-dominant images will still fill up the width but not fill up the height
> it is still possible for a single page to house multiple plan images (they will probably have to be horizontal-dominant)
> vertical-dominant images are restricted by the max-height instead of the max-width; additionally, I ensure they get centered horizontally (this is demoed by the refrigerator)
> realistic images like ...

> **Reid Wilson** _
> 
> @Jennifer Hickey
> 
> Hi Jennifer, I can answer your questions now with details we discussed in the pre-story meeting.
> 
> No image will appear small after this story regardless of its internal size. We will be scaling up the width of all images as much as possible. That means your question about whether or not they should be centered doesn't really apply because there will be no wiggle room on either side of the image. However, in the [edge, maybe?] case where we have to render a "very vertical" image (one where the height is much greater than the width) it is possible for the height restriction to ...

> **Jennifer Hickey** _
> 
> @Reid Wilson @Victor Monterrey @Robert Hobbs When a Floor Plan Image is small (such as thumbnail) what are planning on doing? Should it be centered? Keep it small so it isn't blurry or distorted?

> **Robert Hobbs** _
> 
> multiple floorplan images could appear on one page.  
> if they upload a small image when it is scaled up it will appear blurry  
> 
>  
> how would we configure it?  
> feature flag: maximize plan images  
> 1 plan image per page  
> maximize the width of the image

---

### [16744] Spike Theme: Perry Homes

**State:** Done | **Assignee:** Daniel Arwe | **Priority:** 2 | **Tags:** branding; design; scripts

**Description:**

A prospective customer, Perry Homes is interested in seeing some of our white labeling capabilities.

**Acceptance Criteria:**

Ucreate a "spike" theme using Perry's style guide and include it in the app for us to demo.  
This can be fairly minimal, enough to demonstrate the appearance on a few views. If we have the variables defined it may be good to have:  
impersonation  
dashboard  
option pricing or pricing catalog  
 Update: we think it may be better to have a labeled mockup created by Charlie for these views

**Child Tasks (10):**

- [18003] (Done) @VictorMonterrey Write QA tests
- [18004] (Done) @VictorMonterrey Execute QA tests
- [18011] (Done) @DanielArwe Dev. Investigation
- [18012] (Done) @DanielArwe Collab. with Charlie
- [18013] (Done) @DanielArwe Prestory
- [18014] (Done) @DanielArwe Dev. Implementation
- [18015] (Done) @DanielArwe PR Review
- [18016] (Done) @DanielArwe QA Review changes (if needed)
- [18017] (Done) @RobertHobbs PO Review
- [18240] (Done) @DanielArwe Finding: change Impersonation font to white

**Comments (3):**

> **Victor Monterrey** _
> 
> @Daniel Arwe @Robert Hobbs can any of you please confirm if the 'Completed' status (in Profile Setup) for Perry Homes theme should be green? Just double checking since is green for themes like Taylor Morrison, but is blue for themes like Flintrock.
> Account: Ima_homebuyer@mailinator.com

> **Charlie Bradley** _
> 
> Header color: #FAFAFA
> Icon color: #055B77
> Help Button color: #51748B
> Menu Button color: #EBE7E1

> **Charlie Bradley** _
> 
> Perry Homes landing page figma link: 
> https://www.figma.com/design/ERbgRfy1Gv7qBKd4WUwMxT/Perry-Homes-landing-page-mockup?node-id=0-1&node-type=canvas&t=fmmhw2QSUdn1xWT4-0

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

**Child Tasks (4):**

- [17649] (Done) @ReidWilson PR Review
- [17694] (Done) @VictorMonterrey Execute QA Tests
- [17695] (Done) @RobertHobbs PO Review
- [18216] (Done) @ReidWilson Defect - Invalid format images

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

### [17904] ONBOARDING: Show user's name in DMH Preference menu

**State:** Done | **Assignee:** Justin Pope | **Priority:** 3 | **Tags:** No QA

**Acceptance Criteria:**

- in the DMH outer preferences menu (not the inner one - these were given the same name for some unknown reason), create a new section to the left of the buyer's budget 
- in the new section, include an appropriately sized SVG such as the visualizer reset icon 
- in the new section, include the current context user's first name (this would be the first name of the impersonatee if impersonating or the first name of the logged in user if not impersonating)

**Child Tasks (3):**

- [18117] (Done) @JustinPope Dev Investigation
- [18118] (Done) @JustinPope Development
- [18119] (In Progress) @JustinPope PR Review

---

### [17906] ONBOARDING: New VEO Admin Menu Option

**State:** Done | **Assignee:** Justin Pope | **Priority:** 3 | **Tags:** No QA

**Acceptance Criteria:**

- create a new menu option in VeoAdmin under Reports called Tile Patterns 2 
 - clicking the new menu option should route the user to a new page named Tile Pattern Reports 2

**Child Tasks (3):**

- [18033] (Done) @JustinPope Dev Investigation
- [18061] (Done) @JustinPope PR Review
- [18064] (Done) @JustinPope Code Changes

---

### [17930] VDS Theme Variables - part 4

**State:** Done | **Assignee:** Reid Wilson | **Priority:** 3 | **Tags:** branding

**Description:**

We want to continue to create theme variables for UIs and parts of the app in order to offer a complete theme to our customers. We want to do this work with a mind toward consolidating styles so that we reduce (where possible) the total number of variables to consider.  

 

 
A few screen shots of things I found:  

 

 

 

 
Spending Summary Report from DMH (PDF)

**Acceptance Criteria:**

For this work item, we want to be able to theme the following UIs:  
Design Selections -> standard flag  
Plan selector dialog (outline)  
Selections report dialog (get there from Design Selections action menu or Homebuyer summary button) 
Design My Home 
spending summary email dialog 
Spending Summary Report - do not variablize: change to black color from green 
 Selections Report (pdf)   
 To prove the above areas were variablized successfully, update the following themes: 
wild 
flintrock

**Child Tasks (10):**

- [18007] (Done) @JenniferHickey Write QA tests
- [18010] (Done) @JenniferHickey Execute QA tests
- [18020] (Done) @ReidWilson Variablize standard flag
- [18022] (Done) @ReidWilson Variablize selections report dialog
- [18024] (Done) @ReidWilson Variablize plan selector
- [18025] (Done) @ReidWilson Variablize selections summary report
- [18028] (Done) @ReidWilson PR Review
- [18092] (Done) @ReidWilson Pre-story meeting
- [18239] (Done) @ReidWilson Defect: Cabinets - Did price override and flag didn't turn colored
- [18263] (Done) @JenniferHickey Execute QA tests 2

**Comments (2):**

> **Reid Wilson** _
> 
> @Jennifer Hickey @Robert Hobbs @Joe Ebeling @Victor Monterrey 
> 
> Good catch, Jennifer. Thanks. Well whether it is expected or not is questionable, but it should be a pretty quick fix, so I will fix it either way. Now it is important to consider that this element might be variablized but the Flintrock theme just didn't change it, or it may not be variablized at all. I will ensure it is variablized and a different color for each non-default theme when I get around to working on the story.

> **Jennifer Hickey** _
> 
> @Robert Hobbs @Reid Wilson @Joe Ebeling @Victor Monterrey Found a place we overlooked. In Price override in Design Selections, the text is green. Can we it in this user story, Reid? (Maybe its already expected as part of this story bc the same dialog appears when you click the green flag)

---

### [17982] Release 9/30

**State:** Done | **Assignee:** Robert Hobbs | **Priority:** 3

**Description:**

The placeholder to add scripts or other items needed for deployment.

---

### [18002] Staging Testing

**State:** Done | **Assignee:** Victor Monterrey | **Priority:** 3

**Child Tasks (4):**

- [17983] (Done) @JenniferHickey Staging test - Scheduler
- [17984] (Done) @JenniferHickey Staging testing - VDS
- [17985] (Done) @VictorMonterrey Staging Testing - Scheduler
- [17986] (Done) @VictorMonterrey Staging testing - VDS

---

### [18065] New Theme: Taylor Morrison

**State:** Done | **Assignee:** Daniel Arwe | **Priority:** 1 | **Tags:** branding; design; scripts; Victor may test with Reid

**Description:**

An existing customer Taylor Morrison has requested we submit a new proposal for our product. One advantage we have over a competitor is that we support some level of branding / white labeling. It would be advantageous to be able to demo that for them in an upcoming product demo meeting.

**Acceptance Criteria:**

Create a theme using Taylor Morrison's style guide and include it in the app for us to demo.  
The theme name should probably be: Taylor Morrison 
I don't yet know the timing of this demo. We should be prepared to handle one of these scenarios:  
a published developer branch that has the theme applied to an existing demo builder (requires sales to have a VPN)  
pushing the theme to Staging so that it can be demoed for an existing demo builder (does not require sales to have a vpn) 
  Note this style guide defines some colors and some alternative fonts. It would be good to use a few of their fonts if possible to make it look similar to their guide or website.  
This can be fairly minimal, enough to demonstrate the appearance on a few views. If we have the variables defined it may be good to have:  
nav menu  
impersonation  
dashboard  
option pricing or pricing catalog 
design selections

**Child Tasks (19):**

- [18073] (Done) @DanielArwe Prestory Mtg.
- [18074] (Done) @DanielArwe Dev. Investigation
- [18075] (Done) @CharlieBradley Landing Page Mockup
- [18076] (Done) @DanielArwe Implement theming for Landing Page
- [18077] (Done) @DanielArwe Implement theming for Nav. Menu
- [18078] (Done) @DanielArwe Implement theming for Impersonation
- [18079] (Done) @DanielArwe Implement theming for Dashboard
- [18080] (Done) @DanielArwe Implement theming for OP/Product Catalog
- [18081] (Done) @DanielArwe Implement theming for Design Selections
- [18082] (Done) @DanielArwe PR Review
- [18083] (Done) @RobertHobbs PO Review
- [18086] (Done) @JenniferHickey Write QA Tests
- [18087] (Done) @VictorMonterrey Execute QA Tests
- [18182] (Done) @DanielArwe Defect: VeoSupport Email dialog button not themed
- [18183] (Done) @DanielArwe Defect: Edit Impersonation dialog
- [18197] (Done) @DanielArwe Defect Non-Estimated/Estimated tabs are showing green color
- [18198] (Done) @DanielArwe Defect: 'Let's get started' button is showing green color.
- [18217] (Done) @DanielArwe Defect: 'Selection Report Options' button is not themed
- [18244] (Done) @DanielArwe Defect - Select a Price Level - Extra space (ACCEPTED DEFECT)

**Comments (11):**

> **Victor Monterrey** _
> 
> Yes, you are right, nevermind then. Thanks.

> **Daniel Arwe** _
> 
> @Victor Monterrey @Robert Hobbs @Jennifer Hickey 
> Victor, to answer your question, we had this conversation earlier today in Slack...

> **Victor Monterrey** _
> 
> @Daniel Arwe @Robert Hobbs @Jennifer Hickey it seems that this green area is out of scope. Can anyone confirm please?

> **Daniel Arwe** _
> 
> @Robert Hobbs, @Jennifer Hickey, @Victor Monterrey You'll need this linked script to insert the TM theme background images into the DB before testing/reviewing....FYI 
> 
> Also, Rob and @Reid Wilson , since y'all are next up on deployment night rotation, FYI, if you try to open and copy/paste this script from the preview in the links, in ADO, it won't work (probably due to the text length of the file, since it contains varbinary(max) values for the image data.  You'll need to download it and open in SSMS directly.
> 
> InsertBackgroundImages_TaylorMorrisonTheme.sql

> **Daniel Arwe** _
> 
> @Robert Hobbs, on second thought, with each image < 2000 K in size, I should be able to use an script I can generate in SSMS.  I will test it on DEV and see how long it takes to run.

> **Daniel Arwe** _
> 
> @Robert Hobbs Once the code for this theme gets deployed to whatever environment you are demoing out of, we may need to use the VEO Admin UI to add the 3 background images to the ThemeImage DB table.  Since the table has a ImageData (varbinary(max)) column, I don't think we can easily insert those images using scripts.  That said, I've attached the images I used for the 3 background images (the 3 you suggested in the discussion below), and commented on the display order in which I was showing them, in case you want to replicate that in whatever environment you are demoing from.

> **Robert Hobbs** _
> 
> @Daniel Arwe @Charlie Bradley III My thought is to create an SVG for the VDS Logo if we have time for that. It would need to be done today or tomorrow latest I think to hit our target though

> **Daniel Arwe** _
> 
> @Robert Hobbs, @Charlie Bradley III One problem we are going to encounter is that the VDS logo is an image and not an SVG, so our ability to dynamically set or theme the color is limited.  I like the mockups using a light header background and darker logo, with one of TM's colors, however we currently have a few problems with implementation if we leave the logo as an image.  Currently, we have two versions of the VDS logo....
> vds-logo.png (white text, with the exception of the 'VEO' part, which have a wavy pool-water-like background)
> vds-logo-for-dark-bg.png (white text throughout)
> vds-logo-fo...

> **Charlie Bradley** _
> 
> Header/dialog background color: #FAFAFA
> Home banner/icon color: #D31245
> Font/text color: #44423F
> Larger icons/Menu button color: #EC8C0AE

> **Charlie Bradley** _
> 
> @Robert Hobbs @Daniel Arwe Below are figma links to the landing page for Taylor Morrison and the personalized content page for Taylor Morrison....
> Landing page: https://www.figma.com/proto/3EQNYQZ7Ke8slfemIDfqel/Taylor-Morrison-landing-page-mockup?node-id=1-2&node-type=frame&t=FzV6zYU9fJWl7L62-1&scaling=min-zoom&content-scaling=fixed&page-id=0%3A1
> Personalized content: https://www.figma.com/proto/3EQNYQZ7Ke8slfemIDfqel/Taylor-Morrison-landing-page-mockup?node-id=4-3&node-type=frame&t=iNj4Og4xshXVSmtE-0&scaling=min-zoom&content-scaling=fixed&page-id=3%3A2

> **Robert Hobbs** _
> 
> @Daniel Arwe @Charlie Bradley III Can we use a few of the images on this page for backgrounds? https://www.taylormorrison.com/make-moves?utm_source=direct&utm_medium=homepage_banner&utm_campaign=finance_promo#disclaimer
> 
> These images seem pretty good - let me know what you think? 
> 
> https://tmi-p-001.sitecorecontenthub.cloud/api/public/content/Denverinterior735d748b7abf4714b5949cde3929471b?v=61caee32
> 
> https://tmi-p-001.sitecorecontenthub.cloud/api/public/content/Seattleinterior210aa231e192b4591813bfb1c0f15aff1?v=5ffb7846
> 
> https://tmi-p-001.sitecorecontenthub.cloud/api/public/content/bayareainte...

---

### [18151] Echelon User dedicated to VDS

**State:** Done | **Assignee:** Daniel Arwe | **Priority:** 3 | **Tags:** Reid to Test

**Description:**

Echelon User dedicated to VDS for calling Echelon API. 

 
**Per Roger** 
A while ago I asked Cole to create an Echelon user across all stack for VDS, but I haven’t updated the appsettings file nor the pipeline. 
The user info is as follows: 
  
Username: vdsservice 
Password: longI$land76 
  
Please update both appsettings and all the libraries in the pipeline to use it. 
Also the company codes for the different stacks are as follows: 
  
VDS (Dev): L7ON9 
WBS: U8YX4 
EPLAN: 7LXG5 
AFI: 4BHNH 
CCDI: XD9OU 
  
Please modify the code that calls the Login endpoint in Echelon API to use company code. 
  
Another thing. 
I noticed the appsettings.Development.json still uses https://echelonapi-vds.wisenbaker.com/ as the URL to call Echelon API. 
Please change it to https://echelonapi-dev.wisenbaker.com/ because the other one will not likely be updated anymore. 
The libraries on devops already uses https://echelonapi-dev.wisenbaker.com/.

**Acceptance Criteria:**

VDS can successfully make calls to the EchelonAPI end points we currently use in all dev environments  
presently the only end point of which I am aware is the call for builder option codes in the selections report 
developers should advise/update the AC to reflect reality  
  Note from Reid: I believe that in the above, Rob means "Selection Detail Report (excel)" and "Selection Detail Report w/ Builder Price (excel)" rather than selections report.

**Child Tasks (4):**

- [18153] (Done) @DanielArwe Code changes
- [18154] (Done) @DanielArwe Pipeline changes to library environment variables
- [18155] (Done) @ReidWilson Execute QA Tests
- [18157] (Done) @ReidWilson write QA tests

**Comments (5):**

> **Daniel Arwe** _
> 
> @Jennifer Hickey @Victor Monterrey @Roger Wang Jennifer, Victor....
> application = "vds"
> urlAddress does not have to be passed.

> **Jennifer Hickey** _
> 
> @Daniel Arwe @Victor Monterrey @Roger Wang What would the string be for Application? and urlAddress?

> **Daniel Arwe** _
> 
> @Jennifer Hickey @Victor Monterrey This is the login endpoint.  Is that what you are asking for Jennifer?  Also, @Roger Wang was saying we don't need to pass 'urlAddress' as part of the body of the request.

> **Jennifer Hickey** _
> 
> @Daniel Arwe @Victor Monterrey Will you share with Victor an API that will return the Echelon user?

> **Joe Ebeling** _
> 
> @Daniel Arwe: Added

---

### [28938] ONBOARDING: New VEO Admin Menu Option

**State:** Done | **Assignee:** Samuel Klepper | **Priority:** 3 | **Tags:** No QA

**Acceptance Criteria:**

- create a new menu option in VeoAdmin under Reports called Tile Patterns 2  
 - clicking the new menu option should route the user to a new page named Tile Pattern Reports 2

**Comments (1):**

> **Justin Pope** _
> 
> Copied from #17906

---

