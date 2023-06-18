---
# title: "Version 06 Part01"
date: 2023-06-17T02:11:17+05:00
draft: false
type: "page"
url: /building-legacy/version-06-Part01/
---


# Version 06 Part 01: 
## Next-level Development Solutions: Unveiling Our Latest Services

**Welcome to Future Insight Version 06!**
Discover a new level of educational support with Future Insight. We are excited to present our latest website version, packed with advanced features and enhancements to provide you with an exceptional learning experience.
# Features
Here are all of the Features for this update
1. Navbar Redesign (Implemented )
2. Updated Author Page (Implemented ) 
3. Services Page with Different Packages
    -  3.1: Available  Services:
		    - Web Development
		    - Machine Learning Development
		    - Android Application Development
		    - Student Assignment
	 - 3.2. Multiple Packages within Each Service
    - 3.3. Proper Terms and Conditions Page
    - 3.4. Payment Process for Packages

**Note: This updated is divided into two parts**
## Part 01: Redesign 
At Future Insight, we are constantly striving to enhance your user experience. We are thrilled to announce the implementation of our latest updates, focusing on two significant areas: Navbar and Author Page. These updates are designed to improve usability, streamline code, and introduce modularization for enhanced clarity and ease of understanding.

Navbar Redesign: Experience a sleek and intuitive navigation system with our newly redesigned navbar. We have carefully crafted a user-friendly interface that ensures effortless navigation throughout the website. Find the information you need, access key features, and explore various sections with ease.

Author Page Redesign: Discover the revamped Author Page, offering a visually appealing and engaging interface. We have reimagined the layout to provide a seamless browsing experience while showcasing the work of our esteemed authors. Explore their profiles, browse through their published content, and gain valuable insights into their expertise.

Cleaner Code and Modular Approach: As part of our commitment to delivering high-quality user experiences, we have undertaken a comprehensive code cleanup process. By optimizing and organizing our codebase, we ensure improved performance and maintainability. Additionally, we have implemented a modular approach, breaking down complex functionalities into smaller, more manageable components. This modular structure makes it easier to understand and navigate the codebase, fostering collaboration and reducing development time.

We are excited about these updates and confident that they will significantly enhance your interaction with Future Insight. Stay tuned for more exciting improvements as we continue to refine and innovate our platform to meet your evolving needs.

## Part 02: Services Pages
This feature will be available soon. 


# Part 01: Changes Made:
## Navbar Redesign
***Date: 01-July-2023***
Here's a summary of the changes we've made to the code:

1. Updated HTML template to include a drop-down menu with options:
   ```html
   <div class="nav-link dropdown-container">
     <a href="#" class="dropdown-toggle"><i class="fa fa-bars"></i></a>
     <ul class="dropdown-menu">
       {{ range .Site.Menus.dropdown }}
       <li class="dropdown-item">
         <a href="{{ .URL | absURL }}"> {{ .Name }}</a>
       </li>
       {{ end }}
     </ul>
   </div>
   ```

2. Added CSS styles for the drop-down menu and hover effect:
   ```css
   .dropdown-container {
     /* CSS styles for the drop-down container */
   }
   .dropdown-toggle {
     /* CSS styles for the drop-down toggle */
   }
   .dropdown-menu {
     /* CSS styles for the drop-down menu */
   }
   .dropdown-item {
     /* CSS styles for the drop-down menu items */
   }
   .dropdown-item:hover {
     /* CSS styles for the hover effect on drop-down menu items */
   }
   .dark-theme .dropdown-menu {
     /* CSS styles for dark mode */
   }
   .dark-theme .dropdown-item a {
     /* CSS styles for dark mode text color */
   }
   ```

4. Added JavaScript code to detect dark mode and update drop-down menu colors:
   ```javascript
   // JavaScript code for dark mode detection and color update
   ```
#### Preview
The Nav Bar is much Smaller and the necessary components are in the sub Menu.
![image](https://github.com/rafay99-epic/Future-Insight/assets/82662797/ef6a692e-204a-42f3-8134-2425e15823bd)

## Updated Author Page
***Date: June, 2nd, 2023***
Everything have changed from the last four commits, previously there were progress  bar which as being remove and as added something new.
All of the changes are stated bellow.

1. New Header
- The header section typically contains your name or the page title.
- It may also include a logo or profile picture for personal branding.
- The header can be customized using CSS to match your desired design and style.

2. New Introduction
- The introduction section will introduce to the new user.
- It include a berif overview of my background, experience and passion with skills.

3. New Skill Section
- So in the last commit, I was using progress bar, which was taking a lot of space, not looking good. 
- In this commit I changed it to card like system, divided skills into category section and describing them.

5. GitHub Calendar
- In the old version, I was using GitHub card and they were not good, if there was a lot of traffic then they might fail.
- So I added a couple of JavaScript file and  CSS file to make my GitHub calendar appeared on the profile.
- Thanks to [Bloggify](https://github.com/Bloggify) for the configuration and showing the way for this. 

6. New Social Representation
- In the last version I was using bullet  points for social media redirect.
- In this version, I switched to card and displayed my social with proper flashing and animation.

And with that the Author Page is complete. 

#### Preview
![image](https://github.com/rafay99-epic/Future-Insight/assets/82662797/0c683e22-15de-4f4d-92e0-4d43f4307f28)
![image](https://github.com/rafay99-epic/Future-Insight/assets/82662797/c7d548ce-5e97-4ea6-9ed6-78eae5aa13d7)
![image](https://github.com/rafay99-epic/Future-Insight/assets/82662797/13f92a6b-e0d5-436b-b1a1-461bd027346c)
![image](https://github.com/rafay99-epic/Future-Insight/assets/82662797/5076ee02-390c-46dc-ace4-095eb9f94e6e)
![image](https://github.com/rafay99-epic/Future-Insight/assets/82662797/eedeb1f2-d814-42ae-ac4d-d511cb19d18d)
![image](https://github.com/rafay99-epic/Future-Insight/assets/82662797/3db1ad82-e7b8-4c3e-b423-eecccdac81ba)

# Note:
- All of the error are fixed and it will be merged into the main Repo.
