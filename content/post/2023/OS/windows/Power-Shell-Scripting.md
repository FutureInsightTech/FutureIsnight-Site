---
title: "Power Shell Scripting"
date: 2023-07-21T20:58:13+05:00
draft: false
type: "post"
tags: ["blog" ,"Operating System", "windows" , "scripting"]
description: "Power Shell Scripting"
showTableOfContents: true
url: /OS/windows/Power-Shell-Scripting/
image: "/images/2023/"
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


<!-- # What is PowerShell? -->
<!-- PowerShell is a powerful and versatile command-line shell and scripting language developed by Microsoft. It is designed to help IT professionals and system administrators automate administrative tasks and manage configurations in Windows environments. PowerShell provides access to various system administration objects and APIs, allowing users to interact with and manipulate system components, such as the file system, registry, services, processes, and more.

# Features of PowerShell
Some key features of PowerShell include:

1. **Object-Oriented:** PowerShell treats data as objects rather than plain text, which enables easy manipulation and filtering of output using various cmdlets (commands).

2. **Cmdlets:** PowerShell cmdlets are small, single-function commands that perform specific tasks. They follow a Verb-Noun naming convention (e.g., Get-Process, Set-Item, New-Service), making it easier to understand their functions.

3. **Pipelining:** PowerShell allows you to chain commands together using pipes (|), passing the output of one cmdlet as the input to another. This enables users to perform complex operations by combining simple cmdlets.

4. **Scripting Language:** PowerShell is a full-fledged scripting language with features like variables, loops, conditional statements, functions, and error handling. This makes it ideal for writing automation scripts and managing repetitive tasks.

5. **Integration with .NET:** PowerShell leverages the .NET Framework, which means users can access a wide range of .NET classes and assemblies for more advanced scripting capabilities.

6. **Remoting:** PowerShell supports remote administration, allowing users to execute commands on remote computers in the network.

7. **Desired State Configuration (DSC):** PowerShell DSC enables administrators to define the desired state of a system or application and ensure that the configurations remain consistent.

PowerShell is a significant tool for managing Windows-based systems and is also available for cross-platform use, being open-source and available for macOS and various Linux distributions (PowerShell Core). With its rich set of features and capabilities, PowerShell has become an essential tool in the IT world for automation, administration, and management of Windows environments.


# PowerShell basic Commands
PowerShell is a powerful command-line shell and scripting language that provides access to various system administration objects and APIs. It is designed to help IT professionals and system administrators automate administrative tasks and manage configurations in Windows environments and here are some basic commands that can help you to migrate through your system using PowerShell.

## Get-Command
Get-Command is an easy to use reference cmdlet that brings up all the commandss available for use in yout current session. 

To use this command, simple type this command in the powershell terminal.
```ps
Get-Command
```
![get-command](/images/2023/Operating-System/Windows/PowerShell-Script/get-commands.png)

## Get-Help
The Get-Help command is essential for anyone using PowerShell, providing access to the information you need to run and work with all of thr available commands.

To use this commadn, simply type this command in the powershell terminal.
```ps
Get-Help
```
![get-help](/images/2023/Operating-System/Windows/PowerShell-Script/get-help-command.png)


## Set-ExecutionPolicy
Microsoft disable scripting by default to prevent malicios scripts from ececuting in the PowerShell environment. It's a way to protect your system from malicious scripts. But if you want to run your own scripts, you'll need to enable scripting. With PowerShell you can give access to your whole computer so to protect yout system Microsoft disable scripting by default. 

So this command enable you to control the level of security surrounding PowerShell scripts. You can set ***four*** security levels:

- **Restricted:** 
    - This is the default security level which blocks PowerShell scripts from running. In this security level, you can only enter commands interactively.
- **All Signed:** 
  - This security level allows scripts to run only if they are signed by a trustworthy publisher.
- **Remote Signed:** 
  - In this security level, any PowerShell scripts that were created locally are permitted to run. Scripts created remotely are permitted to run only if they’ve been signed by a reputable publisher.
- **Unrestricted:**  
  - As its name suggests, the unrestricted security level permits all scripts to run by removing all restrictions from the execution policy.

Similarly, if you’re working in an unfamiliar environment, you can easily find out what the current execution policy is using this command:
```ps
Get-ExecutionPolicy
```
\* the level after the command is the current execution policy.
\* To readmore about this command, you can use the Get-Help command or visit [Microsoft Document](https://devblogs.microsoft.com/scripting/table-of-basic-powershell-commands/)



## Get-Service
The Get-Service command is used to retrieve information about the services installed on your computer. It can be used to find out the status of a service, start or stop a service, and even change the properties of a service.

To use this command, simply type this command in the powershell terminal.
```ps
Get-Service
```
![get-service](/images/2023/Operating-System/Windows/PowerShell-Script/get-service.png)

##  Get-EventLog

You can actually use PowerShell to parse your machine’s event logs using the Get-EventLog cmdlet. There are several parameters available. Use the -Log switch followed by the name of the log file to view a specific log. You’d use the following command, for example, to view the Application log:

```ps
Get-EventLog -Log "Application"
```
There are some options as well that can be used with this command, such as:

- Verbose
- Debug
- ErrorAction
- ErrorVariable
- WarningAction
- WarningVariable
- OutBuffer
- OutVariable

![get-eventlog](/images/2023/Operating-System/Windows/PowerShell-Script/Get-Event-Log.png)

## Get-Porcess
Much like getting a list of available services, it’s often useful to be able to get a quick list of all the currently running processes. The Get-Process command puts this information at your fingertips.

### Example: Get all processes with a working set greater than 20 MB

```ps
Get-Process | Where-Object {$_.WorkingSet -gt 20000000}
```

This command gets all processes that have a working set greater than 20 MB. It uses the ``Get-Process`` cmdlet to get all running processes. The pipeline operator (|) passes the process objects to the ``Where-Object`` cmdlet, which selects only the object with a value greater than 20,000,000 bytes for the WorkingSet property.

WorkingSet is one of many properties of process objects. To see all of the properties, type ``Get-Process | Get-Member``. By default, the values of all amount properties are in bytes, even though the default display lists them in kilobytes and megabytes.

## Stop-Process
Use Stop-Process to stop processes that are frozen or is no longer responding. If you’re not sure what process is holding you up, use Get-Process to quickly identify the problematic process. Once you have the name or process ID, use Stop-Process to terminate it.

```ps
Stop-Process -processname notepad
```

You can use wildcard characters, too, such as the following example which terminates all instances of Notepad as well as any other processes beginning with note:

```ps
Stop-Process -processname note*
```

## Get-ChildItem
The Get-ChildItem cmdlet gets the items in one or more specified locations. If the item is a container, it gets the items inside the container, known as child items. You can use the Recurse parameter to get items in all child containers and use the Depth parameter to limit the number of levels to recurse.

Get-ChildItem doesn't display empty directories. When a Get-ChildItem command includes the Depth or Recurse parameters, empty directories aren't included in the output.

### Examples: Get child items from a file system directory
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



So here are some of the top Commands that I use like everyday to get the Job Done.


# Combine Commands with Scripts
Absolutely! PowerShell's true power lies in its ability to combine the simplicity of command-line commands with the flexibility of a full-fledged programming language. It empowers users to streamline their daily tasks, automate time-consuming processes, and unleash their creativity to build sophisticated solutions.

Imagine a world where repetitive administrative tasks, such as file management, system configuration, and data analysis, can be accomplished with just a few lines of code. With PowerShell, this vision becomes a reality. The elegant Verb-Noun syntax of PowerShell commands makes it incredibly intuitive to interact with various components of the Windows environment.

But it doesn't stop there! PowerShell's scripting capabilities allow users to harness the power of loops, conditional statements, and functions, making complex automation projects accessible to even those with limited programming experience. Whether you need to process large datasets, manage user accounts, or configure network settings across multiple machines, PowerShell provides the tools to get the job done efficiently.

Beyond local administration, PowerShell's remoting capabilities enable seamless interaction with remote systems, making it an invaluable asset for managing networked environments. By executing commands on multiple machines simultaneously, administrators can save countless hours of manual effort, ensuring a consistent and error-free administration experience.

But perhaps the most remarkable aspect of PowerShell is its extensibility through .NET integration. This integration opens up a vast array of possibilities, enabling users to tap into the power of existing .NET libraries, create custom functions, and interact with a diverse range of APIs.

In essence, PowerShell is a true force multiplier for IT professionals and system administrators. It empowers them to go beyond the limitations of manual processes, unleashing their potential to solve complex challenges and create innovative solutions. By automating mundane tasks and combining simple programming concepts, PowerShell lets users unlock new levels of efficiency, creativity, and effectiveness in managing Windows environments. So whether you're a seasoned developer or just starting on your automation journey, PowerShell is your gateway to making the impossible possible and turning everyday tasks into something truly extraordinary.

## Script Example:

## sudo script
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
**Script Explain**
Explanation of the script:

1. The `sudo` function checks if any arguments are provided:
   - If arguments are present, it concatenates them into a single string, surrounded by single quotes, and saves it in the `$argList` variable.
   - It sets the `$wtExe` variable to the path of the Windows Terminal executable (`wt.exe`).

2. If there are arguments:
   - It starts a new instance of Windows Terminal (`wt.exe`) with PowerShell as the profile (`-p "Windows PowerShell"`).
   - It opens the terminal window with elevated privileges (Run as Administrator) using the `-Verb RunAs` parameter.
   - The concatenated command/script in `$argList` is executed in the new terminal window.

3. If no arguments are provided:
   - It starts a new instance of Windows Terminal (`wt.exe`) with PowerShell Core as the profile (`pwsh.exe`).
   - The terminal is opened with elevated privileges (Run as Administrator) using the `-Verb RunAs` parameter.

In essence, this `sudo` function simplifies the process of running PowerShell commands with administrative privileges by using the Windows Terminal to open an elevated PowerShell session, making it easier for administrators to manage tasks that require higher privileges.

## Remove Item Script
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
**Script Explain**
Explanation of the script:

1. `CmdletBinding()` Attribute:
   The script uses the `CmdletBinding()` attribute, which enables advanced parameter handling and provides additional features to the function, making it behave like a native PowerShell cmdlet.

2. `param` Block:
   The `param` block is used to declare the parameters that the function accepts. In this case, the function expects one mandatory parameter named `$Path`. The `[Parameter()]` attribute allows defining properties for the parameter.

3. Parameter Details:
   - `[Mandatory=$true]`: The `Mandatory` property is set to `$true`, meaning the function requires the user to provide a value for the `$Path` parameter when calling the function. If no value is provided, PowerShell will prompt the user to enter a valid value.
   - `[Position=0]`: The `Position` property is set to `0`, indicating that the `$Path` parameter can be provided as the first argument when calling the function without explicitly specifying the parameter name.

4. `[ValidateNotNullOrEmpty()]` Attribute:
   The `[ValidateNotNullOrEmpty()]` attribute ensures that the value passed to the `$Path` parameter is not null or an empty string. If the user provides an invalid value, PowerShell will display an error message and prompt for a valid value.

5. Function Body:
   The body of the `rm` function contains a single line of code:
   ```powershell
   Remove-Item -Path $Path -Recurse -Force
   ```

This line uses the native `Remove-Item` cmdlet to delete files and folders. The parameters used are as follows:
   - `-Path $Path`: Specifies the path of the file or folder to be deleted, taken from the `$Path` parameter passed to the function.
   - `-Recurse`: This parameter is used to delete directories and their contents recursively, including all subdirectories and files.
   - `-Force`: This parameter is used to force the deletion of read-only files or folders without prompting for confirmation.

In summary, the `rm` function is a user-defined PowerShell function that simplifies the process of removing files and folders. It enforces mandatory parameter usage, allows users to pass the path as the first argument without specifying the parameter name, and ensures that a valid non-empty path is provided. When executed, the function will forcefully delete the specified file or folder and all its contents if the path points to a directory.

# Project Ideas in PowerShell
PowerShell is very Powerfull and it can be used to do a lot of things, so here are some of the project ideas that you can do using PowerShell.

1. **System Monitoring and Reporting:** Develop a script that monitors various aspects of the system, such as CPU usage, memory, disk space, and network connectivity. Create reports that provide insights into system health and performance over time.

2. **Automated Backup and Restore:** Create a PowerShell script to automate the backup of important files and directories. Implement a restore mechanism that can quickly and easily recover data when needed.

3. **User Account Management:** Build a script to automate user account creation, modification, and deletion tasks on Windows. This could include setting up permissions, groups, and managing password policies.

4. **Software Deployment and Updates:** Develop a script that automates the deployment of software applications to multiple computers. Include version checking and update mechanisms to keep applications up to date.

5. **Log Analysis and Event Monitoring:** Create a script that monitors event logs on servers or systems and generates alerts or reports based on specific events or patterns.

6. **Network Configuration Management:** Build a script to manage network devices and configurations, such as routers and switches. Implement backup and restore functionalities for network device configurations.

7. **Automated Testing:** Use PowerShell to automate the testing of software applications. Create scripts that simulate user interactions and test various functionalities.

8. **Automated File Processing:** Develop a script to process large files, such as log files or CSV data. Automate data extraction, transformation, and loading processes.

9. **Azure/AWS Cloud Automation:** Use PowerShell to automate cloud infrastructure provisioning, configuration, and management tasks on platforms like Microsoft Azure or Amazon Web Services (AWS).

10. **Web Scraping and Data Retrieval:** Build a script to scrape data from websites and APIs, extracting information for analysis or integration with other systems.

11. **Automated Email Notifications:** Create a script that monitors specific events or conditions and sends automated email notifications to specified recipients.

12. **Scheduled Task Automation:** Develop a script to manage scheduled tasks on Windows, creating, modifying, and deleting tasks as needed.

Here are some of the cool Projects that you can do using PowerShell. Happy Coding! -->


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

In conclusion, PowerShell is a powerful and versatile tool that has become essential for IT professionals and system administrators. With its object-oriented approach, extensive cmdlets, and .NET integration, PowerShell offers an efficient way to manage Windows systems and automate tasks.

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

<!-- - [PowerShell Script](https://github.com/rafay99-epic/Window-DotFiles/blob/main/PowerShell/Microsoft.PowerShell_profile.ps1) -->

<!-- ## WalkThrough Video: -->
<!-- <iframe width="800" height="450" src="https://www.youtube.com/embed/YT-link" frameborder="1" allowfullscreen></iframe> -->
