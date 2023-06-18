---
# title: "Version 03"
date: 2023-06-17T02:10:50+05:00
draft: false
type: "page"
url: /building-legacy/version-03/
---

# Version 3: 
## Enhanced Collaboration, Deployment, and User Interaction
# Changes:
- Several configuration files for various deployment branches
- Introduction to multiple branches
- Blog: Deployment Testing Branch
- Production Build Branch
- Development and New Feature Testing Branch
- Comment Section for every Blog Post

# Work Flow:
- The main branch is the production branch, and no code or blog will be added without creating a branch and going through multiple GitHub actions.
- All of the blogs and images for the blogs will be added to the blog branch.
- All code and development-related work will be done in the Development Branch.
- Each of these branches has its own build branch, as all of the complied code from each branch will be stored and placed in another branch.
- The other branches are known as build branches.

# Different Branches:
In this project, there are three main branches.
1. Main
2. Blog
3. Development 

And all of these branches have corresponding building branches.
1. Main ==> [Build](https://github.com/rafay99-epic/Future-Insight/tree/build)
   - This is the main production branch.
   - All of the approved code and blog posts will be merged into this branch.
   - Once the code is merged, this code will be built by GitHub actions.
   - This build code will be stored in a new branch called "build."
   
2. Blog ==> [blog-build](https://github.com/rafay99-epic/Future-Insight/tree/blog-build)
    -  This is the blog Branch.
    - In the branch, only the content folder and the static folder will be changed.
    - Only blogs will be added.
    - Along with the blog template being modified,
    - No major code development will occur.
    - If there are any changes to the code base, then conflicts will occur and merge requests will be rejected.
    - The build branch for this is called "blog-build."

3. Development-Branch ==> [testing-build](https://github.com/rafay99-epic/Future-Insight/tree/testing-build)
   -  This is the development branch. 
   -  The build for this branch is called "testing-build."
   -  All of the code for the website is changed here.
   -  No blog will be added here.
   -  The structure of the website will change here.

# Comments:
Adding Comments for each Blog Post, Using the power of Hugo, Now you add comments and give your thoughts. 