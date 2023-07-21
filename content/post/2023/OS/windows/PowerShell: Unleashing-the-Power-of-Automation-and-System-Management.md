---
title: "PowerShell: Unleashing the Power of Automation and System Management"
date: 2023-07-21T20:58:13+05:00
draft: false
type: "post"
tags: ["blog" ,"Operating System", "windows" , "scripting"]
description: "Power Shell Scripting"
showTableOfContents: true
url: /OS/windows/Power-Shell-Scripting/
image: "/images/2023/Operating-System/Windows/PowerShell-Script/PowerShell-Unleashing-the-Power-of-Automation-and-System-Management.png"
---

-----------

Windows, oh Windows! It may look like a friendly playground for beginners, but let me tell you, it's a true powerhouse under the hood, and today, we're diving into its secret weapons that every developer should know about!

1. **Introducing WSL (Windows Subsystem for Linux):**
Ever dreamed of having the best of both worlds? With WSL, you can seamlessly run a full-fledged Linux environment right inside your Windows system. It's like magic! Developers, this gem will revolutionize your workflow, and I'll guide you through the wonders it brings in my latest blog post on [WSL](/OS/windows/wsl-install/).

2. **PowerShell: A Powerful Tool for Windows System Management**
Get ready to unleash the ultimate developer tool – Power Shell Scripting! If you've ever felt the power of command-line tools, this will take it to a whole new level. But fear not, I've got you covered! In this blog post, I'll walk you through what Power Shell Scripting is, how to use it like a pro, and the reasons why it's an absolute game-changer for developers.

But wait, there's more! I won't just leave you with theory; we'll dive into some basic commands that will elevate your scripting skills from day one. From automating repetitive tasks to streamlining your workflows, Power Shell will be your new best friend.

And the cherry on top? I've got some exciting project ideas that you can embark on using Power Shell Scripting. Trust me; you'll be amazed at what you can achieve with this incredible tool in your arsenal.

So whether you're a seasoned developer or just starting your coding journey, join me in this adventure, and let's unlock the full potential of Windows together! Get ready to take your skills to new heights and make your development life a breeze with the power of WSL and Power Shell Scripting.

# PowerShell: A Powerful Tool for Windows System Management

PowerShell is a versatile command-line shell and scripting language developed by Microsoft. It is designed to assist IT professionals and system administrators in automating administrative tasks and managing configurations in Windows environments. PowerShell provides access to various system administration objects and APIs, enabling users to interact with and manipulate system components such as the file system, registry, services, processes, and more.

## Key Features of PowerShell

1. **Object-Oriented:** PowerShell treats data as objects rather than plain text, allowing easy manipulation and filtering of output using various cmdlets (commands).

2. **Cmdlets:** PowerShell cmdlets are small, single-function commands that perform specific tasks. They follow a Verb-Noun naming convention (e.g., Get-Process, Set-Item, New-Service), making it easier to understand their functions.

3. **Pipelining:** PowerShell allows you to chain commands together using pipes (|), passing the output of one cmdlet as the input to another. This enables users to perform complex operations by combining simple cmdlets.

4. **Scripting Language:** PowerShell is a full-fledged scripting language with features like variables, loops, conditional statements, functions, and error handling. This makes it ideal for writing automation scripts and managing repetitive tasks.

5. **Integration with .NET:** PowerShell leverages the .NET Framework, enabling users to access a wide range of .NET classes and assemblies for more advanced scripting capabilities.

6. **Remoting:** PowerShell supports remote administration, allowing users to execute commands on remote computers in the network.

7. **Desired State Configuration (DSC):** PowerShell DSC enables administrators to define the desired state of a system or application and ensure that the configurations remain consistent.

PowerShell is not limited to Windows environments. It is also available for cross-platform use, being open-source and available for macOS and various Linux distributions as PowerShell Core. With its rich set of features and capabilities, PowerShell has become an essential tool in the IT world for automation, administration, and management of Windows environments.

## Basic PowerShell Commands

PowerShell offers a wide range of commands to navigate and manage your system efficiently. Here are some essential basic commands to help you get started:

### Get-Command

The Get-Command cmdlet provides an easy-to-use reference of all available commands in your current session. Simply type this command in the PowerShell terminal to view the comprehensive list of commands at your disposal.

![get-command](/images/2023/Operating-System/Windows/PowerShell-Script/get-commands.png)

### Get-Help

The Get-Help command is a crucial tool for anyone using PowerShell. It grants access to the information you need to run and work with all available commands. To use this command, simply type it in the PowerShell terminal.

![get-help](/images/2023/Operating-System/Windows/PowerShell-Script/get-help-command.png)

### Set-ExecutionPolicy

PowerShell restricts scripting by default to prevent malicious scripts from executing in the environment. To run your own scripts, you'll need to enable scripting. The Set-ExecutionPolicy command allows you to control the level of security surrounding PowerShell scripts. You can set four security levels:

- **Restricted:** Default security level that blocks PowerShell scripts from running, allowing only interactive commands.
- **All Signed:** Permits scripts to run only if they are signed by a trustworthy publisher.
- **Remote Signed:** Allows locally-created scripts to run and remotely-created scripts if signed by a reputable publisher.
- **Unrestricted:** Permits all scripts to run by removing all restrictions from the execution policy.

To find out the current execution policy, use the Get-ExecutionPolicy command.

To read more about this command, you can use the Get-Help command or visit the [Microsoft Documentation](https://devblogs.microsoft.com/scripting/table-of-basic-powershell-commands/).

### Get-Service

The Get-Service command retrieves information about the services installed on your computer. It allows you to find out the status of a service, start or stop a service, and even change the properties of a service. To use this command, type it in the PowerShell terminal.

![get-service](/images/2023/Operating-System/Windows/PowerShell-Script/get-service.png)

### Get-EventLog

Use PowerShell to parse your machine’s event logs with the Get-EventLog cmdlet. For example, to view the Application log, use the following command:

```ps
Get-EventLog -Log "Application"
```

You can also use various options with this command for verbose output, error handling, and more.

![get-eventlog](/images/2023/Operating-System/Windows/PowerShell-Script/Get-Event-Log.png)

### Get-Process

The Get-Process command allows you to get a quick list of all the currently running processes. You can also filter processes based on specific criteria. For example, to get all processes with a working set greater than 20 MB, use the following command:

```ps
Get-Process | Where-Object {$_.WorkingSet -gt 20000000}
```

### Stop-Process

Stop-Process is used to terminate processes that are frozen or no longer responding. You can specify the process name or use wildcard characters to stop multiple processes simultaneously. For example:

```ps
Stop-Process -processname notepad
```

### Get-ChildItem

The Get-ChildItem cmdlet retrieves items in one or more specified locations, including files, directories, and other objects. It is a versatile tool for file and directory management. For example:

```ps
Get-ChildItem -Path C:\Test
```
#### Examples: Get child items from a file system directory
This example gets the child items from a file system directory. The filenames and subdirectory names are displayed. For empty locations, the command doesn't return any output and returns to the PowerShell prompt.

The ``Get-ChildItem`` cmdlet uses the Path parameter to specify the directory ``C:\Test``. ``Get-ChildItem`` displays the files and directories in the PowerShell console.
```ps
Get-ChildItem -Path C:\Test

Directory: C:\Test

Mode                LastWriteTime         Length Name
----                -------------         ------ ----
d-----        2/15/2019     08:29                Logs
-a----        2/13/2019     08:55             26 anotherfile.txt
-a----        2/12/2019     15:40         118014 Command.txt
-a----         2/1/2019     08:43            183 CreateTestFile.ps1
-ar---        2/12/2019     14:31             27 ReadOnlyFile.txt

```
By default Get-ChildItem lists the mode (Attributes), LastWriteTime, file size (Length), and the Name of the item. The letters in the Mode property can be interpreted as follows:

- l (link)
- d (directory)
- a (archive)
- r (read-only)
- h (hidden)
- s (system)



# Combine Commands with Scripts
PowerShell's true power lies in its ability to combine the simplicity of command-line commands with the flexibility of a full-fledged programming language. It empowers users to streamline their daily tasks, automate time-consuming processes, and unleash their creativity to build sophisticated solutions.

For instance, here are two custom scripts that demonstrate the power of PowerShell:

**1. Sudo Script**

The following script allows users to run a command or script with elevated privileges using Windows Terminal. It simplifies the process of running PowerShell commands with administrative privileges.

```ps
function sudo {
    if ($args.Count -gt 0) {
        $argList = "& '" + $args + "'"
        $wtExe = "wt.exe"
        Start-Process -FilePath $wtExe -ArgumentList "-p", "Windows PowerShell", "-NoExit", "-c", $argList -Verb RunAs
    }
    else {
        $wtExe = "wt.exe"
        Start-Process -FilePath $wtExe -ArgumentList "-p", "Windows PowerShell", "pwsh.exe" -Verb RunAs
    }
}
```

**2. Remove Item Script**

This script is a user-defined PowerShell function that simplifies the process of removing files and folders. It enforces mandatory parameter usage, allows users to pass the path as the first argument without specifying the

 parameter name, and ensures that a valid non-empty path is provided.

```ps
function rm {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory=$true, Position=0)]
        [ValidateNotNullOrEmpty()]
        [string]$Path
    )

    Remove-Item -Path $Path -Recurse -Force
}
```

# PowerShell Project Ideas

The flexibility and power of PowerShell open up a wide range of project possibilities. Here are some ideas to get you started:

1. **System Monitoring and Reporting:** Develop a script that monitors system health and performance, generating reports on CPU usage, memory, disk space, and network connectivity.

2. **Automated Backup and Restore:** Create a script to automate the backup and restoration of important files and directories.

3. **User Account Management:** Build a script to automate user account creation, modification, and deletion tasks on Windows.

4. **Software Deployment and Updates:** Develop a script to automate the deployment and updating of software applications on multiple computers.

5. **Log Analysis and Event Monitoring:** Create a script that monitors event logs and generates alerts or reports based on specific events or patterns.

6. **Network Configuration Management:** Build a script to manage network devices and configurations, such as routers and switches.

7. **Automated Testing:** Use PowerShell to automate the testing of software applications by simulating user interactions.

8. **Azure/AWS Cloud Automation:** Automate cloud infrastructure provisioning and management on platforms like Microsoft Azure or Amazon Web Services (AWS).

9. **Web Scraping and Data Retrieval:** Create a script to scrape data from websites and APIs for analysis or integration with other systems.

10. **Automated Email Notifications:** Develop a script that monitors specific events and sends automated email notifications to specified recipients.

11. **Scheduled Task Automation:** Build a script to manage scheduled tasks on Windows, creating, modifying, and deleting tasks as needed.

With PowerShell, the possibilities are endless. It is a powerful tool that allows you to automate tasks, manage Windows systems efficiently, and unleash your creativity to build innovative solutions.


# Conclusion:
PowerShell is a powerful and versatile tool that has become essential for IT professionals and system administrators. With its object-oriented approach, extensive cmdlets, and .NET integration, PowerShell offers an efficient way to manage Windows systems and automate tasks.

Throughout this blog post, we explored key PowerShell features, essential commands like Get-Command, Get-Help, Set-ExecutionPolicy, Get-Service, and Get-ChildItem, and how to combine commands with custom scripts.

PowerShell's scripting capabilities enable automation of repetitive tasks, ensuring consistent configurations and reliable processes. Exciting project ideas, from system monitoring to cloud automation, demonstrate its endless possibilities.

With cross-platform compatibility, PowerShell continues to be a go-to solution for automation and administration, making it an invaluable tool in the IT world. Embrace PowerShell to streamline operations and elevate system management to new heights.

With that, we will see you next time.❤️❤️

# Credit:
This article was written by [Abdul Rafay](https://future-insight.blog/author) and published on [Future Insight](https://future-insight.blog/).

# Contact Us: 
If you encounter any issues or have any questions regarding any of the articles on this website, please do not hesitate to contact the website's support team. Your feedback is important and the team is dedicated to providing prompt and effective assistance to ensure a positive user experience.

To access the contact page, simply click on the "Contact" tab in the navigation menu or visit the following URL: [contact page](https://future-insight.blog/contact). From there, you can fill out a contact form or find additional information on how to get in touch with the support team.

Don't let any questions or concerns go unanswered - reach out to the support team for help and guidance. They are committed to providing excellent customer service and will do everything possible to ensure that you have a seamless experience on the website.

# Supporting Materials
Here are all of the links and references that I used to write this blog, so feel free to visit them to get some more help.
## Knowledge Nexus

<style>
  .cards-container {
    display: flex;
    flex-wrap: wrap;
    justify-content: space-between;
    max-width: 1200px;
    margin: 0 auto;
  }

  .card {
    width: calc(29.33% - 20px); /* 3 cards in a single line with 20px space between each */
    background-color: white;
    padding: 20px;
    margin-bottom: 20px;
    border: 2px solid black; /* Add a strong black border around the card */
    border-radius: 4px;
    text-align: center; /* Center card content */
    text-decoration: none; /* Remove default underline for anchor links */
    color: black; /* Optional: Text color for the card content */
    transition: box-shadow 0.9s; /* Smooth transition for the hover effect */
  }

  .card:hover {
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.9); /* Hover effect: Slightly raise the card on hover */
    transform: translateY(-5px); /* Hover effect: Slightly move the card upwards */
  }

  .card img {
    max-width: 100%;
    height: auto;
    border-radius: 10px; /* Updated border-radius for a smoother appearance */
  }

  .card h3 {
    font-size: 18px;
    margin: 10px 0;
    /* Color removed to show the text in default color */
  }

  @media (max-width: 768px) {
    .card {
      width: calc(50% - 20px); /* 2 cards in a single line with 20px space between each for smaller screens */
    }
  }

  @media (max-width: 480px) {
    .card {
      width: 100%; /* 1 card taking full width for even smaller screens */
    }
  }
</style>

<div class="cards-container">
  <a class="card" href="https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.management/get-childitem?view=powershell-7.3">
    <img src="/images/content-icons/19197011.jpg" alt="Article 1">
    <h3 class="title">Article 1</h3>
  </a>
  <a class="card" href="https://superuser.com/questions/106360/how-to-enable-execution-of-powershell-scripts">
    <img src="/images/content-icons/20944335.jpg" alt="Article 2">
    <h3 class="title">Article 2</h3>
  </a>
  <a class="card" href="https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.management/get-process?view=powershell-7.3">
    <img src="/images/content-icons/2936024.jpg" alt="Article 3">
    <h3 class="title">Article 3</h3>
  </a>
  <a class="card" href="https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.management/get-process?view=powershell-7.3">
    <img src="/images/content-icons/8767135.jpg" alt="Article 3">
    <h3 class="title">Article 3</h3>
  </a>
</div>

## GitHub Repository:
<div class="cards-container">
  <a class="card" href="https://github.com/rafay99-epic/Window-DotFiles/blob/main/PowerShell/Microsoft.PowerShell_profile.ps1">
    <img src="/images/content-icons/Github-Logo.png" alt="GitHub Repo 1">
    <h3 class="title">GitHub Repository</h3>
  </a>
</div>

<!-- ## WalkThrough Video: -->
<!-- <iframe width="800" height="450" src="https://www.youtube.com/embed/YT-link" frameborder="1" allowfullscreen></iframe> -->

# Thumbnail
![image](/images/2023/Operating-System/Windows/PowerShell-Script/PowerShell-Unleashing-the-Power-of-Automation-and-System-Management.png)

