---
title: "Linux App Installation: Simplified"
date: 2023-03-28T20:17:24+05:00
draft: false
type: "post"
tags: ["blog" ,"linux"]
description: "Install Application on Linux"
showTableOfContents: true
url: /linux-app-simplified/
image: "/images/2023/"
---
<link rel="stylesheet" href="/css/style.css">


# Introduction:
Have you recently installed Linux on your system, but are now struggling to figure out how to install applications? Perhaps you've tried searching for installation files like you would on Windows, but to no avail. Don't worry, because in this blog, I'll show you how to install applications on Linux using various methods such as package managers, Flatpak, App Images, and Snap Packs.

By the end of this article, you'll have a better understanding of how to install applications on your Linux system and be able to easily access and use the software you need.

# Installing Applications:
Installing applications on Linux is a breeze, with a plethora of options available to users. You can download and install applications from various sources, giving you complete control over your system. However, the one constant is the need for the command line interface, which can be intimidating for some users. While graphical user interfaces are available, they may not be the best option. Therefore, it is crucial to become familiar with the command-line interface to get the most out of Linux.

In this blog, we will explore the different methods available for installing applications on Linux, demystifying the command-line interface and helping you become a more proficient user. Whether you are a beginner or an experienced user, this blog will equip you with the knowledge to install applications on Linux with ease.

So, let's dive in and discover the different ways you can install applications on Linux and how to make the most of the command-line interface.

# Application Source:
If you're new to Linux, it's natural to feel overwhelmed by the different methods of installing applications. However, finding the commands to install applications is easier than you might think. You can easily find the necessary commands through Google or by visiting the official app store website, which will list all the required commands for you.

There are several ways to install applications on Linux, including:

1. Flatpak Packages
2. Snap Packages
3. AppImages
4. AUR (Arch User Repository)
5. Pacstall
6. Distro Package Manager
All of the above-listed sources need to be installed on your system before you can begin installing applications. While each source comes with a graphical user interface, the command line interface is generally faster and easier to use for installing applications.

By following this comprehensive guide, you'll be able to find the application sources you need and start installing applications on your Linux system with confidence.

# Flatpak Packages:
Flatpak is a framework for distributing desktop applications across various Linux distributions. It has been created by developers who have a long history of working on the Linux desktop, and is run as an independent open source project.
## Target audience
Flatpak can be used by all kinds of desktop applications, and aims to be as agnostic as possible regarding how applications are built. There are no requirements regarding which programming languages, build tools, toolkits or frameworks can be used.

While Flatpak only runs on Linux, it can be used by applications that target other operating systems, as well as those that are Linux-specific. Applications can be open source or proprietary (although some distribution services, like Flathub, can have restrictions in this respect).

## Installing Flatpak:
To install flat on your system follow these instrutructions.
### Debain 
Use this command to install flatpk
```bash
sudo apt install flatpak
```
Use this command to enable flatpak hub on your system.
```bash
flatpak --user remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
```
### Arch
To install Flatpak, enter this command in your terminal
```bash
sudo pacman -S flatpk
```
Enable flatpak repo, enter this command in your terminal
```bash
flatpak --user remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
```
## Install Application using Flatpak
To install an application using flatpak just enter this command.
```bash
sudo flatpak install <package name>
```
Just change the <package name> with the name of the application that you want to download.
**Example:**
You can install an application like google chrome just the this command.
```bash
sudo flatpak install googlechrome
```
Flatpak are fast and easy to learn with an online store from which you can find the commands to isntall applications on your system. The process to install flatpak is the same and on every distro, Debian or Arch.

You can find the online store by clicking [here](https://flathub.org/home)

# Snap Packs
Snaps are a secure and scalable way to embed applications on Linux devices. A snap is an application containerised with all its dependencies. A snap can be installed using a single command on any device running Linux. With snaps, software updates are automatic and resilient. Applications run fully isolated in their own sandbox, thus minimising security risks.

Snaps are hosted in the global Snap Store, an application repository hosted and managed by Canonical, and are free for anyone to download. Snaps can be created by anyone - existing software can be packaged as a snap or new software can be built from scratch using snap packaging. 

## Install Snap Packs
### Debian
To install snap pack on your debian or ubuntu based distro, enter the following command in your terminal.
```bash
sudo apt install snapd 
```
### Arch
Install Snap pack and snap store, enter the following commands into your terminal.
```bash
sudo pacman -S snapd
```
## Install Application Using Snap Packs
Using snap pack you can install applications and it is very easy just enter the package name and snap will begin to install on ypour system.
```bash
sudo snap install <package name>
```
Just change the <package name> to the application that you want to install.

**Example**
This is the example to install an application using snap packs.
```bash
sudo snap install spotify
```
Snap packs are free, secure, and do not affect your system in any way, plus they have an online store through which you can search for the command that will help you install the application on your system. You can access the Snap Store online by clicking [here](https://snapcraft.io/store).

# Arch User Repository(AUR)
The AUR, which stands for Arch Unit Repository, is used to install software pertinent to Arch Linux and otherArch distributions in the Linux operating system. But, before diving deep into the procedure for using AUR with Arch Linux, it is crucial to comprehend the concept of the AUR. Using the AUR not only enhances the efficacy of the system, but it also provides easy installation of various applications and packages. This guide provides an introduction to AUR, methods for using the AUR, and reasons to opt for the AUR. The step-by-step procedure provided in this article will allow you to run and install apps effectively via the AUR and its respective packages.

The AUR constitutes an important part of the overall Arch Linux nexus. Inherently, the AUR is a community-driven repository that hosts a versatile range of installation packages in the Arch Linux operation system. The AUR also allows you to host packages extrinsic to the domain of the official Arch Linux database. One beneficial factor of the AUR is that most of the packages in this repository adhere to the AUR before officially becoming part of the Arch Linux database.

This conventionally follows the sequential criteria constituting the three cardinal packages. PKGBuilds allows the user access to the package source through the makepkg, and you can install the software or application by incorporating Pacman, the root package manager of the Arch Linux operating system.

The core purpose of the AUR is to delegate the information of community packages for the deposition of such packages in the repository of a community depository, along with the Linux database. The AUR community can select packages to become a part of the community repository, given the attributes of prevalence and license authenticity.
## Using AUR
The AUR can assist greatly in downloading and installing programs and packages in Arch Linux and its associated distributions, such as Manjaro. You can install the AUR by following the two steps listed below:

**Step 1: Install AUR**

**Step 2: Enable AUR**

# Conclusion:
With that, we will see you next time.❤️❤️

# Credit:
This article was written by [Abdul Rafay](https://rafay99.info) and published on [Future Insight](https://futureinsight.blog).

# Contact Us: 
If you encounter any issues or have any questions regarding any of the articles on this website, please do not hesitate to contact the website's support team. Your feedback is important and the team is dedicated to providing prompt and effective assistance to ensure a positive user experience.

To access the contact page, simply click on the "Contact" tab in the navigation menu or visit the following URL: [contact page](https://future-insight.blog/contact). From there, you can fill out a contact form or find additional information on how to get in touch with the support team.

Don't let any questions or concerns go unanswered - reach out to the support team for help and guidance. They are committed to providing excellent customer service and will do everything possible to ensure that you have a seamless experience on the website.

# References:
Here are all of the links and references that I used to write this blog, so feel free to visit them to get some more help.
## Articles references:
- [Article 1]()

## GitHub Repository:
- [GitHub Repository 1]()

## WalkThrough Video:
<iframe width="800" height="450" src="https://www.youtube.com/embed/YT-link" frameborder="1" allowfullscreen></iframe>
