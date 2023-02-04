---
title: "Learn Git"
date: 2023-01-24T17:13:24+05:00
draft: false
type: "post"
tags: ["blog", "essential-skills"]
description: "Learn how to use git and GitHub."
showTableOfContents: true
---
## Introduction:
As a developer, managing your code can be difficult, and you're always changing it, adding new features, and removing bugs from your application, so you need a way to track your code and make sure you don't miss any of the changes. So for that, you need to learn Git and GitHub.

## Before Git:
But before I was using Git, My code folder structure was something like this:  
![image](/images/learn-git/code-folder.png)

Every time I was working on a project, I made a copy of that folder and then made changes to it, which led to the destruction of your application.

## Importance of Git
There are multiple reasons why you should use git and GitHub.

- Using Git and GitHub, you can save different versions of code without losing any data.  
- When you publish your code, others can view it, read it, and even contribute to your project.  
- There is the option of adding documentation to your code, so that if you forget how it works, you can refer to or read the documentation to run it.
### Personal Experience:
I can't tell you how many times I've lost data and code because I didn't use git and GitHub. I have worked on hundreds of projects, and one time I was not updating or saving my code on Github, and my computer crashed. All of my work and my code were gone. From that point on, I learned git and used GitHub to keep my code saved.

## What is Git? 
> Git is a version control system that allows you to contribute to existing projects or start new ones. 

> Git is a mature, actively maintained open source project originally developed in 2005 by Linus Torvalds, the famous creator of the Linux operating system kernel. A staggering number of software projects rely on Git for version control, including commercial projects as well as open source. Developers who have worked with Git are well represented in the pool of available software development talent, and it works well on a wide range of operating systems and IDEs (integrated development environments).

## What is GitHub:
> GitHub is a code hosting platform for collaboration and version control.

> GitHub lets you (and others) work together on projects.

## Important Terms:
So before you learn how to use git, you need to learn a couple of important terms, which are stated below:
1. Repositories
2. Branch 
3. Commits
4. Pull Requests
5. Push Request

### Repositories
- A GitHub **repository** can be used to store a development **project**.

- It can contain **folders** and any type of **files** (HTML, CSS, JavaScript, Documents, Data, Images).
 
- To simple words it's a folder in which your store all of your code with a couple of essential files such a **licence** and a **ReadMe File**

- A GitHub repository should also include a **licence** file and a **README** file about the project.

- The "README" file tells you about your project, how you will run the applications, and an introduction to your project.

- The **licence** file will tell the user which kind of Project is this, IS it MIT Project or General Public licence. 

### Branch
- A GitHub branch is used to work with different **versions** of a repository at the same time.

- By default a repository has a **master** branch (a production branch).

- Any other branch is a **copy** of the master branch (as it was at a point in time).

- New Branches are for bug fixes and feature work separate from the master branch. When changes are ready, they can be merged into the master branch. If you make changes to the master branch while working on a new branch, these updates can be pulled in.

### Commits

- At GitHub, changes are called commits.

- Each commit (change) has a description explaining why a change was made.

### Pull Requests

- Pull Requests are the heart of GitHub **collaboration**.

- With a pull request you are **proposing** that your changes should be **merged** (pulled in) with the master.

- Pull requests show content **differences**, changes, additions, and subtractions in **colors** (green and red).

- As soon as you have a commit, you can open a pull request and start a discussion, even before the code is finished.

### Push Request:
- Push requests occur when you want to update your local code folder to the branch's deployed branch code; if there are any changes, then all the changes will be made on your local machine.

## Install Git:
To install git enter the following commands in the terminal:
### Linux:
### Debian or Ububtu:
``` bash
sudo apt install git -y
```
### Arch Linux:
``` bash 
sudo pacman -Syyu git --noconfirm --needed
```

### Windows
**Install git using winget:**
``` bash
winget install git
```
**Download an exe**
You can download an exe file by click [her](https://git-scm.com/downloads)

### Mac Os 
``` bash
brew install git
```
**Note:**
if Home Brew is not installed on your system then install it by using the follwong command:
``` bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

## Git Commands:
### Create a Repo:
1. Open [GitHub](https://github.com/) and create an account. If you don't have an account then follow this [Guide](https://www.wikihow.com/Create-an-Account-on-GitHub).
2. Then Press the new Button to create a new Repo:
	![image](/images/learn-git/create-a-repo.png)

3. Fill the form to create your Repo.
	1. Enter The name of the repo
	2. Enter the description of the repo
	3. Select the Lience for the repo 
	![image](/images/learn-git/Fill-form.png)
4. Once You have filled the form then click on the create Repo button. 
5. After click that button your repo will be created and you will be redirected toword your repo.
	![image](/images/learn-git/Repo-Page.png)

Congratulation You have created your own repo. 

### Cloning the repo:
Now you want to add files to the REOP. But first, we need to clone the repo on your machine, which requires you to run a command in your terminal.

```shell
git clone <repo URL>
```

The above is the command. But for now, I'll be cloning the **Laptop-Shopping-API** repo.
So command will be
```shell
git clone https://github.com/rafay99-epic/Laptop-Shopping-API.git
```
**Note:** You can find the URL of the repo by clicking the **code** Button on your repo.
![image](/images/learn-git/url.png)

Once command is in the terminal then press enter on your keyboard to clone the repo on your device. 

When you clone the repo it will look like this:
![image](/images/learn-git/repo-folder.png)

### Create a Branch:
Now we want to upload files to this repo so we need to create a branch so do that we need open this folder using the terminal.
```shell
cd <Folder name>
```
**For this example:**
```shell
cd Laptop-Shopping-API
```
Once you are in the folder then to create a branch. 

**Note: Always remeber that when you clone a repo on your machine by default you will be on the Main Branch.**

```shell
git checkout -b <branch Name>
```
 Example:
 ```shell
 git checkout -b Adding-Files
```

Once the above commad is entered into the termial then a brach will be created.
![image](/images/learn-git/git-branch.png)

Using the above command you can create different branch. 

### Switch Branch:
What if branches already exist and you want to checkout a different branch? There is a command for that as well.

```shell
git branch
```
Using the above command, you will see all of the git branches.
![image](/images/learn-git/switch-branch.png)

Now to switch between different branch, to that enter the following command:
```shell
git checkout <branch name>
```
  
In place of "branch name," enter the branch name. In this example, I will be entering this command.

```shell
git checkout main
```
![image](/images/learn-git/switch-branch-2.png)

As you can see, I have switched to the main branch, but I will be switching to the adding-file branch.

Now add some files to the branch and make all the changes. I will be adding some Python files along with the PowerShell file.

### Check Status:
To check the status and see how many changes are made to that, enter the following command:
```shell
git status
```
![image](/images/learn-git/git-status.png)

As you can see, I have added two files, and using the command `git status` , I can view all of the changes that have been made.

### Adding Files:
Now add these files to the branch; to do that, you need to enter the following command in the terminal:
```shell
git add *
```
The above command will add all the files to the branch.
![image](/images/learn-git/git-add.png)

Now that all the files are added to the branch, when files are added, the colour will change from red to green. The green colour can change depending on the colours of your terminal.

### Commiting:
Now it's time to commit your code and add a message. To do that, please enter the following commands into the terminal:
```shell
git commit -m "adding Files"
```
The above command will commit your code with a message; the message is important, and it won't commit without a message, so enter your message.

![image](/images/learn-git/git-comit.png)

### Push:
Now it's time to deploy your local branch and push your code to the repo.

#### Deploy your branch:
To deploy your branch on GitHub then enter the following commands:
```shell
git push --set-upstream origin <branch name>
```
In place of "branch name," enter the branch name on which you are working.

For this example, the branch name is **Adding-Files**
```shell
git push --set-upstream origin Adding-Files
```
The above command will deploy your branch to GitHub.

![image](/images/learn-git/git-deploy-branch.png)

#### Push Command: 
To push your code enter your code into the teminal:
```shell
git push 
```

### Final Result:
As you can see, the branch is deployed, and all the files are in the Adding-file branch.
![image](/images/learn-git/branch-deploy.png)

### Merge Both Branch:
Now all the files are in the Adding-File branch, but we need them to be added to the main branch. For that, we will be merging both branches.

This is the stage at which you develop and test your code and application without changing or deploying it to the main repository.

To merge these branches, we need to create a pull request and merge them. To do that, there are some commands.

**Step 1:** Clone the repository or update your local repository with the latest changes.
```shell
git pull origin main
```
![image](/images/learn-git/git-pull-orgin-main.png)

**Step 2:** Switch to the base branch of the pull request.
```shell
git checkout main
```
![image](/images/learn-git/checkout-main.png)
**Step 3:** Merge the head branch into the base branch.
```shell
git merge Adding-Files
```
![image](/images/learn-git/git-merge-Adding-Files.png)
**Step 4:** Push the changes.
```shell
git push -u origin main
```
![image](/images/learn-git/git-push-u-origin-main.png)

## Final:
Now that you can view GitHub, all the files are added to the main branch. You can make changes to one branch, and once you are sure that the application is working well, you can merge the working branch with the main branch.
![image](/images/learn-git/Final-Files-added.png)


## Version of Applications:
This is how versions are made: each branch represents a single version. When that branch is developed and tested, it will be merged into the main branch, and then your code is deployed.


## Release Pages:
This is the release page; you can document each version here, and each version will be assigned a number.
![image](/images/learn-git/release-page.png)

Fill out all of the changes and then press the "Publish" button to publish your work on GitHub.
![image](/images/learn-git/release-page-info.png)

**Example Release Pages:**
This is an example of developing a project.
![image](/images/learn-git/Ghome-Setup-release-page.png)


## Conclusion:
Learn Git, use GitHub to host your code, applications, and much more, Git and GitHub are two of the most important tools for developers, and without them, we might not be able to learn, read, or contribute code. You must learn Git and GitHub regardless of your field.  
So please do not hesitate to contact or email me. I would love to know your thoughts.

[Email](mailto:99marafay@gmail.com)

[GitHub](https://github.com/rafay99-epic)

[My Portfolio website](https://rafay99.info/)

[My Blog](https://rafayblogs.tech/)




