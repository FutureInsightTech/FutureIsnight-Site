---
title: "Window Package Manager: Winget"
date: 2023-07-13T12:51:13+05:00
draft: false
type: "post"
tags: ["blog" ,"windows", "Operating System"]
description: "winget the ultimate way to install applications"
showTableOfContents: true
url: /OS/windows/winget-package-manager
image: "/images/2023/"
---

-----------

For years, when it came to installing applications on Windows, we would visit the internet, like the Google Chrome website, and download the **.exe** file. Once downloaded, we would click and click until the application was installed on our system.

However, this method had its drawbacks. If you had a slow internet connection, it would take time to download all the exe files from the browser, and then you had to go through the clicking process to install each application. But no more! Introducing **Winget**.

# Winget

Winget is a command-line tool developed by Microsoft that allows users to quickly and easily install, update, and manage software packages on Windows 10 and Windows 11 operating systems. It provides a convenient way to discover and install applications from the Microsoft Store as well as third-party repositories.

Winget is designed to simplify the software installation process by using simple commands in the Windows command prompt or PowerShell. It leverages a repository-based model, where software packages are published in a structured format and can be easily accessed and installed using specific commands.

With Winget, users can search for available packages, view package details, install or uninstall software, update installed packages, and manage dependencies. It provides a consistent and streamlined approach to software management, similar to package managers found in other operating systems like Linux.

Winget supports both graphical and command-line interfaces, allowing users to choose their preferred method of interaction. It provides a growing catalog of software packages, including popular applications and developer tools, and also allows developers and organizations to publish their own packages.

Winget is awesome - with just one command, you can install all of your applications at once.

# Installing Winget

Installing Winget is very easy. If you are using Windows 11, Winget is already installed on your system. However, if you are using Windows 10, you might need to install Winget from the Microsoft Store.

To install Winget, follow these steps:

1. Search for "Microsoft Store" in the Windows search bar.
2. Open the Microsoft Store.
3. In the store, search for "App Installer".
4. Open the App Installer page. You can also visit this [link](https://apps.microsoft.com/store/detail/app-installer/9NBLGGH4NNS1?hl=en-us&gl=us).
5. Click on "Install". Winget should now be installed on your system.

# Using Winget

Using Winget is easy and can save you time. Here are some basic commands to get you started. If you don't know the name of the software, you can visit [winget.run](https://winget.run/) to search for all software and copy the command to install the application.

## Search

To search for any software using Winget, follow these instructions:

1. Open PowerShell or CMD.
2. Enter the following command to search:

   ```ps
   winget search <package_name>
   ```

   Replace `<package_name>` with the name of the software you're searching for.
   **Example:**

   ```ps
   winget search google-chrome
   ```

## Install

Once you have found your desired application, it's time to install it. To install the application, you need two pieces of information: the Application ID and the Application name. You can find both of these by searching for the application or copying the command from [winget.run](https://winget.run/). The installation command is as follows:

```ps
winget install -e --id <package_name>
```

**Example:**
To install the Brave browser, the command would be:

```ps
winget install -e --id Brave.Brave
```

## Upgrade

Now that you have all the applications installed on your system, it's essential to keep them updated. You can do this by entering the following command:

```ps
winget upgrade --all
```

This command will check the version numbers of all your applications and search for any available updates. If updates are found, Winget will download and install them on your system.

# Commands
The following table lists the commands that are available in the winget tool.
<table style="border-collapse: collapse; width: 100%; align: center">
  <tr>
    <th style="border: 1px solid #ddd; padding: 8px;">Command</th>
    <th style="border: 1px solid #ddd; padding: 8px;">Description</th>
  </tr>
  <tr>
    <td style="border: 1px solid #ddd; padding: 8px;">info</td>
    <td style="border: 1px solid #ddd; padding: 8px;">Displays metadata about the system (version numbers, architecture, log location, etc). Helpful for troubleshooting.</td>
  </tr>
  <tr>
    <td style="border: 1px solid #ddd; padding: 8px;">install</td>
    <td style="border: 1px solid #ddd; padding: 8px;">Installs the specified application.</td>
  </tr>
  <tr>
    <td style="border: 1px solid #ddd; padding: 8px;">show</td>
    <td style="border: 1px solid #ddd; padding: 8px;">Displays details for the specified application.</td>
  </tr>
  <tr>
    <td style="border: 1px solid #ddd; padding: 8px;">source</td>
    <td style="border: 1px solid #ddd; padding: 8px;">Adds, removes, and updates the Windows Package Manager repositories accessed by the winget tool.</td>
  </tr>
  <tr>
    <td style="border: 1px solid #ddd; padding: 8px;">search</td>
    <td style="border: 1px solid #ddd; padding: 8px;">Searches for an application.</td>
  </tr>
  <tr>
    <td style="border: 1px solid #ddd; padding: 8px;">list</td>
    <td style="border: 1px solid #ddd; padding: 8px;">Display installed packages.</td>
  </tr>
  <tr>
    <td style="border: 1px solid #ddd; padding: 8px;">upgrade</td>
    <td style="border: 1px solid #ddd; padding: 8px;">Upgrades the given package.</td>
  </tr>
  <tr>
    <td style="border: 1px solid #ddd; padding: 8px;">uninstall</td>
    <td style="border: 1px solid #ddd; padding: 8px;">Uninstalls the given package.</td>
  </tr>
  <tr>
    <td style="border: 1px solid #ddd; padding: 8px;">hash</td>
    <td style="border: 1px solid #ddd; padding: 8px;">Generates the SHA256 hash for the installer.</td>
  </tr>
  <tr>
    <td style="border: 1px solid #ddd; padding: 8px;">validate</td>
    <td style="border: 1px solid #ddd; padding: 8px;">Validates a manifest file for submission to the Windows Package Manager repository.</td>
  </tr>
  <tr>
    <td style="border: 1px solid #ddd; padding: 8px;">settings</td>
    <td style="border: 1px solid #ddd; padding: 8px;">Open settings.</td>
  </tr>
  <tr>
    <td style="border: 1px solid #ddd; padding: 8px;">features</td>
    <td style="border: 1px solid #ddd; padding: 8px;">Shows the status of experimental features.</td>
  </tr>
  <tr>
    <td style="border: 1px solid #ddd; padding: 8px;">export</td>
    <td style="border: 1px solid #ddd; padding: 8px;">Exports a list of the installed packages.</td>
  </tr>
  <tr>
    <td style="border: 1px solid #ddd; padding: 8px;">import</td>
    <td style="border: 1px solid #ddd; padding: 8px;">Installs all the packages in a file.</td>
  </tr>
  <tr>
    <td style="border: 1px solid #ddd; padding: 8px;">pin</td>
    <td style="border: 1px solid #ddd; padding: 8px;">Manage package pins.</td>
  </tr>
  <tr>
    <td style="border: 1px solid #ddd; padding: 8px;">configure</td>
    <td style="border: 1px solid #ddd; padding: 8px;">Configures the system into a desired state.</td>
  </tr>
</table>




# Windows Updates

It's important to note that Winget will not update your Windows operating system. You will need to perform Windows updates separately.

# Conclusion

In conclusion, Winget is a command-line tool developed by Microsoft that simplifies software installation, updates, and management on Windows 10 and Windows 11. It provides a convenient way to discover and install applications from the Microsoft Store and third-party repositories. With Winget, users can save time by installing multiple applications with a single command and easily manage software dependencies. It offers a streamlined approach to software management, similar to package managers in other operating systems. By leveraging Winget's capabilities, users can optimize their software management processes and enhance their Windows experience.

With that, we will see you next time.❤️❤️

# Credit

This article was written by [Abdul Rafay](https://future-insight.blog/author) and published on [Future Insight](https://future-insight.blog/).

# Contact Us

If you encounter any issues or have any questions regarding any of the articles on this website, please do not hesitate to contact the website's support team. Your feedback is important and the team is dedicated to providing prompt and effective assistance to ensure a positive user experience.

To access the contact page, simply click on the "Contact" tab in the navigation menu or visit the following URL: [contact page](https://future-insight.blog/contact). From there, you can fill out a contact form or find additional information on how to get in touch with the support team.

Don't let any questions or concerns go unanswered - reach out to the support team for help and guidance. They are committed to providing excellent customer service and will do everything possible to ensure that you have a seamless experience on the website.

# References

Here are all of the links and references that I used to write this blog, so feel free to visit them to get some more help.

## Articles references

- [Article 1](https://learn.microsoft.com/en-us/windows/package-manager/winget/#install-winget)
- [Article 2](https://www.windowscentral.com/how-use-winget-windows-10)
- [Article 3](https://pureinfotech.com/install-winget-windows-11/)

<!-- ## WalkThrough Video -->

<!-- <iframe width="800" height="450" src="https://www.youtube.com/embed/YT-link" frameborder="1" allowfullscreen></iframe> -->
