---
title: "Window Sub-System for Linux (WSL)"
date: 2023-07-07T23:04:42+05:00
draft: false
type: "post"
tags: ["blog" ,"windows"]
description: "Linux on Windows (WSL)"
showTableOfContents: true
url: /wsl-install/
image: "/images/2023/Widow-Sub-system-for-Linux/Window-Sub-System-for-Linux.png"
---

-----------
Linux is ubiquitous, and no matter how much we resist, there will come a point when we must embrace it. So, why not start now? In this article, we will explore the process of installing Linux on Windows.

As we embark on this journey, you may find yourself pondering various questions, such as:

1. What is WSL?
2. What is WSL2?
3. What sets WSL and WSL2 apart?
4. Why do I need WSL?
5. How can I install WSL?
6. Which Linux distribution is suitable for WSL?


# What is WSL?
The Windows Subsystem for Linux lets developers run a GNU/Linux environment -- including most command-line tools, utilities, and applications -- directly on Windows, unmodified, without the overhead of a traditional virtual machine or dualboot setup.

You can:

- Choose your favorite GNU/Linux distributions from the Microsoft Store.
- Run common command-line tools such as grep, sed, awk, or other ELF-64 binaries.
- Run Bash shell scripts and GNU/Linux command-line applications including:
  - Tools: vim, emacs, tmux
  - Languages: NodeJS, Javascript, Python, Ruby, C/C++, C# & F#, Rust, Go, etc.
  - Services: SSHD, MySQL, Apache, lighttpd, MongoDB, PostgreSQL.
- Install additional software using your own GNU/Linux distribution package manager.
- Invoke Windows applications using a Unix-like command-line shell.
- Invoke GNU/Linux applications on Windows.
- Run GNU/Linux graphical applications integrated directly to your Windows desktop
- Use GPU acceleration for machine learning, data science scenarios and more

You can do everything that you do in a linux environment, but on windows, without dual booting or using a virtual machine.

# What is WSL2?
WSL 2 is a new version of the Windows Subsystem for Linux architecture that powers the Windows Subsystem for Linux to run ELF64 Linux binaries on Windows. Its primary goals are to increase file system performance, as well as adding full system call compatibility.

This new architecture changes how these Linux binaries interact with Windows and your computer's hardware, but still provides the same user experience as in WSL 1 (the current widely available version).

Individual Linux distributions can be run with either the WSL 1 or WSL 2 architecture. Each distribution can be upgraded or downgraded at any time and you can run WSL 1 and WSL 2 distributions side by side. WSL 2 uses an entirely new architecture that benefits from running a real Linux kernel.

# Comparing WSL 1 and WSL 2
WSL 2 is a major overhaul of the underlying architecture and uses virtualization technology and a Linux kernel to enable its new features. WSL 2 is a new version of the architecture that powers the Windows Subsystem for Linux to run ELF64 Linux binaries on Windows. This new architecture changes how these Linux binaries interact with Windows and your computer's hardware, but still provides the same user experience as in WSL 1 (the current widely available version).

The primary differences between WSL 1 and WSL 2 are the use of an actual Linux kernel inside a managed VM, support for full system call compatibility, and performance across the Linux and Windows operating systems. WSL 2 is the current default version when installing a Linux distribution and uses the latest and greatest in virtualization technology to run a Linux kernel inside of a lightweight utility virtual machine (VM). If your distribution is currently running WSL 1

## Comparing features

In the bellow table you can see the difference between WSL 1 and WSL 2.

<table style="border-collapse: collapse; width: 100%;">
  <thead>
    <tr>
      <th style="border: 1px solid black; padding: 8px;">Feature</th>
      <th style="border: 1px solid black; padding: 8px;">WSL 1</th>
      <th style="border: 1px solid black; padding: 8px;">WSL 2</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="border: 1px solid black; padding: 8px;">Integration between Windows and Linux</td>
      <td style="border: 1px solid black; padding: 8px;">&#10004;</td>
      <td style="border: 1px solid black; padding: 8px;">&#10004;</td>
    </tr>
    <tr>
      <td style="border: 1px solid black; padding: 8px;">Fast boot times</td>
      <td style="border: 1px solid black; padding: 8px;">&#10004;</td>
      <td style="border: 1px solid black; padding: 8px;">&#10004;</td>
    </tr>
    <tr>
      <td style="border: 1px solid black; padding: 8px;">Small resource foot print compared to traditional Virtual Machines</td>
      <td style="border: 1px solid black; padding: 8px;">&#10004;</td>
      <td style="border: 1px solid black; padding: 8px;">&#10004;</td>
    </tr>
    <tr>
      <td style="border: 1px solid black; padding: 8px;">Runs with current versions of VMware and VirtualBox</td>
      <td style="border: 1px solid black; padding: 8px;">&#10004;</td>
      <td style="border: 1px solid black; padding: 8px;">&#10004;</td>
    </tr>
    <tr>
      <td style="border: 1px solid black; padding: 8px;">Managed VM</td>
      <td style="border: 1px solid black; padding: 8px;">&#10008;</td>
      <td style="border: 1px solid black; padding: 8px;">&#10004;</td>
    </tr>
    <tr>
      <td style="border: 1px solid black; padding: 8px;">Full Linux Kernel</td>
      <td style="border: 1px solid black; padding: 8px;">&#10008;</td>
      <td style="border: 1px solid black; padding: 8px;">&#10004;</td>
    </tr>
    <tr>
      <td style="border: 1px solid black; padding: 8px;">Full system call compatibility</td>
      <td style="border: 1px solid black; padding: 8px;">&#10008;</td>
      <td style="border: 1px solid black; padding: 8px;">&#10004;</td>
    </tr>
    <tr>
      <td style="border: 1px solid black; padding: 8px;">Performance across OS file systems</td>
      <td style="border: 1px solid black; padding: 8px;">&#10004;</td>
      <td style="border: 1px solid black; padding: 8px;">&#10008;</td>
    </tr>
  </tbody>
</table>

# Why do you need WSL?
The answer to this question is quite simple. If you are a developer who wants to utilize Linux commands on your Windows machine, WSL is the perfect solution. WSL is an incredibly powerful tool for developers as it enables them to seamlessly use Linux commands on their Windows machines. With WSL, developers can harness the full power of Linux commands without the need for dual booting or switching between operating systems. This convenience makes WSL an invaluable asset for developers seeking a unified and efficient development environment.

If you dislike dual booting, then WSL is a great solution for you. It allows you to enjoy all the features of Linux while occupying less space on your system. Linux excels in its command-line interface and offers a wide range of core applications, which can now be accessed through WSL.

# Install WSL
## Prerequisites 
You must be running Windows 10 version 2004 and higher (Build 19041 and higher) or Windows 11 to use the commands below. If you are on earlier versions please see the manual [install page](https://learn.microsoft.com/en-us/windows/wsl/install-manual).
## Install WSL command
You can now install everything you need to run WSL with a single command. Open PowerShell or Windows Command Prompt in **administrator** mode by right-clicking and selecting "Run as administrator", enter the `wsl --install` command, then restart your machine.
```powershell
wsl --install
```
## Change the default Linux distribution installed
By default, the installed Linux distribution will be Ubuntu. This can be changed using the -d flag.

- To change the distribution installed, enter: `wsl --install -d <Distribution Name>`. Replace `<Distribution Name> `with the name of the distribution you would like to install.
- To see a list of available Linux distributions available for download through the online store, enter: `wsl --list --online` or `wsl -l -o`.
- To install additional Linux distributions after the initial install, you may also use the command: `wsl --install -d <Distribution Name>`.

## Upgrade version from WSL 1 to WSL 2
New Linux installations, installed using the wsl --install command, will be set to WSL 2 by default.

The `wsl --set-version` command can be used to downgrade from WSL 2 to WSL 1 or to update previously installed Linux distributions from WSL 1 to WSL 2.

To see whether your Linux distribution is set to WSL 1 or WSL 2, use the command: `wsl -l -v`.

To change versions, use the command: `wsl --set-version <distro name> 2` replacing `<distro name>` with the name of the Linux distribution that you want to update. **For example**, `wsl --set-version Ubuntu-20.04 2` will set your Ubuntu 20.04 distribution to use WSL 2.


# Which Linux distribution should you choose?
When you install WSL by default, you will get Ubuntu. However, you can install any Linux distribution you want. You can install multiple Linux distributions and use them simultaneously. You can also set a default distribution that will be used when you run the `wsl` command without any arguments.

At the time of this writing of this articles the offical Linux distributions available for WSL are:
1. [Ubuntu](https://apps.microsoft.com/store/detail/ubuntu/9PDXGNCFSCZV)
2. [Debian](https://apps.microsoft.com/store/detail/debian/9MSVKQC78PK6) 
3. [Kali Linux](https://apps.microsoft.com/store/detail/kali-linux/9PKR34TNCV07)
4. [Opensuse](https://apps.microsoft.com/store/detail/opensuse-tumbleweed/9MSSK2ZXXN11)

All of these are aviable on the Microsoft Store.

By If you like Arch Linux or Fedora then there are also unofficial distributions available for WSL. You can find them on the Microsoft Store. 

5. [Arch Linux](https://apps.microsoft.com/store/detail/arch-wsl/9MZNMNKSM73X)
6. [Fedora Linux](https://apps.microsoft.com/store/detail/fedora-wsl/9NPCP8DRCHSN)


## Choosing a Linux distribution
Personally, I have found great success using Arch Linux and Fedora as my primary WSL distributions. They have proven to be reliable and efficient for my needs. Additionally, I have also experimented with Ubuntu and Debian, both of which have performed admirably. However, I have yet to try Kali Linux and Opensuse, but I plan to give them a try in the near future.

I highly recommend exploring all of these distributions and determining which one resonates with you the most. You can even install multiple Linux distributions and utilize them simultaneously. Furthermore, you have the option to set a default distribution that will be used when executing the `wsl` command without any arguments.

In my experience, if you prefer apt as the package manager, Debian is an excellent choice as it offers nearly the latest packages while maintaining exceptional stability. On the other hand, if you prefer pacman as the package manager, Arch Linux would be the way to go. If dnf is your preferred package manager, Fedora is a solid option. Lastly, if you favor zypper as the package manager, Opensuse is worth considering.

I do not personally recommend Ubuntu due to its package versions often being slightly outdated and potential stability issues. I encourage you to try out all of these distributions and discover which one aligns best with your preferences and requirements.

# Conclusion
Based on my personal experience, WSL has been a great addition to my workflow. Although I occasionally miss certain aspects of dual booting, I can confidently say that around 90% of my work can be accomplished using WSL. The remaining 10% is often reserved for exploring Linux and engaging in experimentation, which I thoroughly enjoy. Despite any challenges that may arise, my love for WSL remains unwavering. I sincerely hope that you, too, will find it to be a valuable tool. 

I trust that this article has provided you with the information you were seeking, and I genuinely hope it has been helpful. Thank you for reading, and until next time, take care! ❤️❤️

# Credit
This article was written by [Abdul Rafay](https://future-insight.blog/author) and published on [Future Insight](https://future-insight.blog/).

# Contact Us 
If you encounter any issues or have any questions regarding any of the articles on this website, please do not hesitate to contact the website's support team. Your feedback is important and the team is dedicated to providing prompt and effective assistance to ensure a positive user experience.

To access the contact page, simply click on the "Contact" tab in the navigation menu or visit the following URL: [contact page](https://future-insight.blog/contact). From there, you can fill out a contact form or find additional information on how to get in touch with the support team.

Don't let any questions or concerns go unanswered - reach out to the support team for help and guidance. They are committed to providing excellent customer service and will do everything possible to ensure that you have a seamless experience on the website.

# References
Here are all of the links and references that I used to write this blog, so feel free to visit them to get some more help.
## Articles references
- Microsoft Documentation
    - [WSL Install](https://learn.microsoft.com/en-us/windows/wsl/install)
    - [Features od WSL](https://learn.microsoft.com/en-us/windows/wsl/compare-versions#comparing-features)
    - [ About WSL](https://learn.microsoft.com/en-us/windows/wsl/about)
## GitHub Repository
- [Arch WSL Development](https://github.com/VSWSL/Arch-WSL)
- [Fedora WSL Development](https://github.com/VSWSL/Fedora-WSL)
# Thumbnail
![Image](/images/2023/Widow-Sub-system-for-Linux/Window-Sub-System-for-Linux.png)

<!-- ## WalkThrough Video: -->
<!-- <iframe width="800" height="450" src="https://www.youtube.com/embed/YT-link" frameborder="1" allowfullscreen></iframe> -->
