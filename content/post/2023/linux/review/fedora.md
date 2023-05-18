---
title: "Fedora 38: Review"
date: 2023-05-16T00:07:49+05:00
draft: false
type: "post"
tags: ["blog" ,"linux","review"]
description: "Fedora 38: A Remarkable Experience"
showTableOfContents: true
url: /fedora-review/
image: "/images/2023/"
---
<link rel="stylesheet" href="/css/style.css">


I have been using Linux for a long time, and I switch Linux distros time by time to see what is going on in the world of Linux. I used Debian for a while, then switched to Arch, and the cycle goes on and on with no stop. I have never used Fedora, so I thought, "Why not? Let's try Fedora and see what's the hype?" Why people love Fedora so much and what it is like to run Fedora for a while

# Review
In this blog, I will give my review of Fedora 38. So I have divided this blog into four main sections.
1. Installing the Operating System
2. Installing Applications
3. System stability
4. Performace

During my time with Fedora 38, I will be noting and testing everything that comes with it.

## Effortless Operating System Installation
I use Windows and Linux. Windows for playing games and printing documents, and Linux for everything else that includes coding applications, watching videos, writing blogs, creating videos, and editing videos.

I installed Fedora 38 on my laptop, which is a Lenovo Legion 7 Slim 2021 model with a Rayzen 7, 16 GB of RAM, an NVIDIA RTX 3060 with a 1080p display, a 165 Hz refresh rate, and a 515 GB SSD. Storage is not enough, so I have divided the storage into partitions of 250GB for Windows and 250GB for Linux. I install Linux and Windows on the same drive.

The installing process is very simple and easy; you download the ISO from [Fedora's website](https://fedoraproject.org/workstation/download/) and then create a bootable drive using [Rufus](https://rufus.ie/en/). If you don't know how to create a bootable drive, then check out my blog on [installing Linux](https://future-insight.blog/install-linux/).

Once the bootable device is ready, you need to boot by pressing F12 on my laptop; your boot options key might be different depending on the model. It can be F2, F9, F10, or F10. So try them all. Once you are booted into the operating system, you will enter the live environment. and from there you can click on "Install Fedora. 

To install Fedora, all you need are three partitions, and to learn about these partitions, check out my blog on [Install Linux](https://future-insight.blog/install-linux/). Once all the partitions are set, you can press install, and you will begin to install Fedora. For me, it took only five minutes, but depending on your SSD speed, this will take some time.

The install that Fedora uses is called **Anaconda**.I don't know why people hate it, but it's clean and gets the job done. Over all, I like the installer, and it installs the operating system without any problem.

## Seamless Application installation
Operating System is nothing with applications and there are alot of applications that I use day in day out and if they are not available then I can't do my job so installing application is important but more over how you can install application is also important.To install application for Arch Linux there is AUR and arch repository, For debian there is Pastall and debian repository and if you can't find the application on any platform there is options to use flatpaks and for Fedora there are multiple options. 

On fedora you can find and install applicatioon by using four ways.
1. [Fedora Repository](https://packages.fedoraproject.org/) 
2. [RPM Fusion](https://rpmfusion.org/)
3. [Coper](https://copr.fedorainfracloud.org/coprs/)
4. [Flatpaks](https://flatpak.org/)

### Fedora Repository
The Fedora built-in repository offers a wide range of software, but by default, only free and open-source software is available. Non-free and closed-source software requires enabling third-party installation during the initial setup process. However, even with the available software, there are instances where you may need closed-source applications to accomplish certain tasks, such as Google Chrome, MS Office Suite, Microsoft Teams, and more. This is where RPM Fusion comes into play.

### RPM Fusion
RPM Fusion is a repository that provides both free and non-free software for Fedora. It offers a broader selection of software that you can download and install on your system. With RPM Fusion, you can find various applications, including NVIDIA drivers, Hugo for development purposes, Visual Studio Code, Brave browser, GitHub Desktop, Figma, Filmora, nodejs, npm, and much more. Personally, I have found everything I need from the RPM Fusion repository, and I use these applications on a daily basis.

### Copr
Copr is similar to AUR (Arch User Repository), but tailored specifically for Fedora. While it may resemble Fedora, the underlying mechanisms are different from AUR. Installing packages from Copr follows a distinct procedure. Each package is deployed by the author and resides in a repository. To install a particular package, you need to enable the corresponding repository from the author. Then, the package manager, **dnf**, can install the desired software seamlessly.

### Flatpak
Flatpak is a universal package format that can be installed on any Linux distribution. It serves as an excellent alternative if certain software is not available in the default repositories. Personally, I utilize Flatpak to install applications like Spotify, Android Studio, Unity Hub, and many others. It's a convenient solution that keeps your system fast and efficient.

## Unwavering System Stability
It has been approximately a week since I started using Fedora as my operating system, and I must say, I am absolutely loving it. Currently, I have two desktop environments set up: Gnome 43 and Awesome Window Manager. Both desktop environments sport the beautiful Toky Night theme. One thing that stands out to me is the seamless performance of the operating system. I meticulously checked the system logs, and there is no sign of any lag or performance issues.

As I spend most of my time in the Awesome Window Manager, I am delighted to report that I haven't encountered any problems so far. However, if I do come across any issues in the future, I will be sure to update this blog post with the relevant information.

Now, let's delve into Wayland on Fedora. If you happen to have integrated graphics or AMD drivers on your laptop, you're in luck! Wayland works flawlessly in such cases. However, if, like me, you possess an NVIDIA card, brace yourself because using Wayland with an NVIDIA driver can be quite challenging. While it is possible to find an NVIDIA driver that supports Wayland, the overall experience may not be optimal. In such situations, you'll need to resort to installing Xorg or X11 drivers for your system.

In my case, when I installed the NVIDIA driver, I also opted for X11, and the combination of X11 with Gnome has been an absolute breeze. Both the desktop environment and the awesome window manager work flawlessly without any issues. Personally, I am utilizing NVIDIA graphics with X11, and my system is performing exceptionally well.

On a daily basis, I receive around 30 packages of updates, and I prefer to use the command line to update and upgrade my operating system. However, if you are not familiar with window managers, Gnome 43 is an excellent choice that gets the job done efficiently.

## Performance: A Solid Foundation
As I write this blog, I am currently engrossed in a website and machine learning model project on Fedora 38, and I must say, the performance has been rock solid. The swiftness and responsiveness of the system have left a positive impression on me. During boot-up, the total RAM usage hovers around 1.5GB, even after installing numerous applications and their dependencies. While I didn't note the RAM usage immediately after a fresh install, the system maintains its efficiency even with a substantial number of applications.

In terms of battery life, Fedora 38 pleasantly surprised me. With NVIDIA graphics and intense usage, the battery lasts for approximately 5 hours. For day-to-day tasks, the battery performance is more than satisfactory, enabling me to accomplish my work seamlessly. I haven't had the opportunity to test video editing yet, but once I do, I will provide an update to this blog post. However, thus far, I have no complaints. The performance has been stellar.

Fedora 38 has established itself as a dependable foundation for my projects. Its speed, reliability, and resource management have created a favorable environment for both web development and machine learning endeavors. I eagerly anticipate exploring its potential further and pushing the boundaries of what I can achieve.

Stay tuned for more updates on my experiences with Fedora 38 as I continue to delve into its capabilities.

# Conclusion:
After spending considerable time with Fedora 38, I can confidently say that my experience has been nothing short of exceptional. This operating system has captivated me, inviting me to immerse myself in its boundless possibilities day after day.

Linux has always been an enticing realm for me, and Fedora 38 has deepened my affection for it. Its seamless performance, stability, and vast software repositories have made my computing journey a joyous one. Whether I opt for the sleek and modern Gnome 43 or the efficient and customizable Awesome Window Manager adorned with the enchanting Tokyo Night theme, Fedora 38 delivers a flawless user experience with no discernible lag.

While Wayland gracefully integrates with integrated graphics and AMD drivers, NVIDIA card users may face minor hurdles. Yet, by adroitly installing Xorg or X11 drivers alongside the NVIDIA driver, I seamlessly embraced Gnome without encountering any hindrances.

Regular updates are a testament to Fedora's commitment to security and enhancement. Whether I choose to update via the command line, reveling in the command's efficiency, or prefer the user-friendly Gnome interface, Fedora 38 ensures my system stays up-to-date and safeguarded.

Overall, my love affair with Fedora 38 continues to blossom. It combines stability, flexibility, and an extensive software ecosystem, empowering users with an unparalleled Linux experience. I wholeheartedly invite you to explore Fedora 38, believing that it will captivate you just as it has captivated me.

With that, I bid you adieu until next time, as we embark on new adventures in the ever-evolving world of Linux. ❤️❤️


# Credit:
This article was written by [Abdul Rafay](https://future-insight.blog/author) and published on [Future Insight](https://futureinsight.blog).

# Contact Us: 
If you encounter any issues or have any questions regarding any of the articles on this website, please do not hesitate to contact the website's support team. Your feedback is important and the team is dedicated to providing prompt and effective assistance to ensure a positive user experience.

To access the contact page, simply click on the "Contact" tab in the navigation menu or visit the following URL: [contact page](https://future-insight.blog/contact). From there, you can fill out a contact form or find additional information on how to get in touch with the support team.

Don't let any questions or concerns go unanswered - reach out to the support team for help and guidance. They are committed to providing excellent customer service and will do everything possible to ensure that you have a seamless experience on the website.

<!-- # References: -->
<!-- Here are all of the links and references that I used to write this blog, so feel free to visit them to get some more help. -->
<!-- ## Articles references: -->
<!-- - [Article 1]() -->

<!-- ## GitHub Repository: -->
<!-- - [GitHub Repository 1]() -->

<!-- ## WalkThrough Video: -->
<!-- <iframe width="800" height="450" src="https://www.youtube.com/embed/YT-link" frameborder="1" allowfullscreen></iframe> -->
