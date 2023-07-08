---
title: "Top 5 Commands Linux"
date: 2023-04-13T22:40:06+05:00
draft: false
type: "post"
tags: ["blog" ,"Linux", "operating-system"]
description: "Learn Top 5 Commands in Linux"
showTableOfContents: true
url: /OS/linux/Top-5-linux-command/
image: "/images/2023/Operating-System/Linux/Top5-Commands/thumbnail/Top-5 Linux-Command.png"
---

----

For Today Linux commands, You will learn some cool commands and they can help your speed up your workflow and make you cool. 

# Commands
In this blog post you will learn how to use different commands in linux terminal, these commands will speed up your workflow by alot and I use them on daily basis as well.

## Command 1: tldr
The ``tldr`` command is a utility for quickly understanding how to use a particular command by providing simplified and practical examples. The name stands for "too long, didn't read," indicating that it is designed to provide quick and concise summaries of command usage.

When you run the tldr command followed by the name of a command you want to learn about, it will display a short and straightforward set of examples showing how to use the command. This can be helpful for new Linux users who are not familiar with the syntax and options of different commands.

The ``tldr`` command uses community-driven and maintained documentation, which is often easier to read and understand than the official manual pages. It is available for most Linux distributions and can be installed using the package manager.

### Install Process:
For Debain or Debian based Distro:
```bash
sudo apt install tldr
```
For arch or arch based distributions:
```bash
sudo pacman -S tldr
```
![tldr-image-01](/images/2023/Operating-System/Linux/Top5-Commands/tldr/tldr-image01.png)


## Command 2: htop
``htop`` is an amazing tool and I use like all the time to check the processes that are running on my system.

``htop`` is an interactive process monitoring command in Linux. It is similar to the top command, but provides more advanced features and a more user-friendly interface. Here are some of the key features of htop:

- Interactive Interface: htop has an interactive interface that allows you to scroll through processes, select processes, and perform actions on them, such as killing or renicing.

- Real-time Monitoring: htop updates its display in real-time, so you can see changes to the system as they happen.
- Colorful Display: htop uses colors to help you identify different types of processes, and the colors can be customized to your preferences.
- Process Sorting: htop allows you to sort processes by various criteria, such as CPU usage, memory usage, and process age.
- Tree View: htop displays processes in a tree view, which allows you to see how they are related to each other.
- Process Searching: htop allows you to search for processes by name, which can be useful when you want to find a specific process.
- Process Renicing: htop allows you to renice processes, which can be used to adjust their priority and resource usage.

``htop`` is available on most Linux distributions and can be installed using the package manager. To use htop, simply run the htop command in a terminal window. Once htop is running, you can use the keyboard to navigate and interact with the interface.

### Install Process:
Debian or debian bases distributions enter the following command in your terminal.
```bash
sudo apt install htop
```

Arch or Arch based distributions enter the following commans in your terminal.
```bash
sudo pacman -S htop
```

![htop-image-02](/images/2023/Operating-System/Linux/Top5-Commands/htop/htop-install-image-02.png)

![htop-run-image-03](/images/2023/Operating-System/Linux/Top5-Commands/htop/running-htop.png)

## Command 3: Fortune
``fortune`` is a command-line utility in Linux that displays random quotes, jokes, or ``fortunes`` in a terminal window. It is a simple and fun way to display interesting and often humorous messages on your screen.

The ``fortune`` command comes with a collection of text files containing thousands of quotes, proverbs, and jokes. When you run the fortune command, it selects a random quote from one of these files and displays it in the terminal window.

Here are some tips and tricks for using the fortune command:

- Running fortune with no options will display a random fortune.
- You can specify a particular category of fortunes to display by using the -m option followed by the category name. For example, fortune -m literature will display a random quote from the literature category.
- To display a specific fortune file, you can use the -f option followed by the file name. For example, fortune -f wisdom will display a random quote from the wisdom file.
- You can use the cowsay command to display the fortune in a speech bubble above a cow's head. For example, fortune | cowsay will display the fortune in a fun and whimsical way.

If you want to display a random fortune every time you open a terminal window, you can add the fortune command to your shell's startup script (such as .bashrc or .zshrc).
Overall, fortune is a fun and lighthearted command-line utility that can add some humor and inspiration to your day.

### Install Process:
Debain or debian bases distributions, enter the following commands in your terminal.
```bash
sudo apt install fortune
```

Arch or arch based distributions, enter the following commands in your terminal.
```bash
sudo pacman -S fortune
```

![fortune-image-04](/images/2023/Operating-System/Linux/Top5-Commands/fortuine/fortune.png)

## Command 4: trash-cli
``trash-cli`` is a command-line utility in Linux that provides a safer alternative to the rm command for deleting files and directories. Instead of permanently deleting files and directories, trash-cli moves them to the trash, which allows you to recover them later if needed.

Here are some features of trash-cli:

- Move files to trash: You can move files and directories to the ``trash`` using the trash command followed by the file or directory name. For example, ``trash file.txt`` will move the file file.txt to the trash.
- List trashed files: You can list the files that are currently in the trash using the ``trash-list`` command. This command displays the name of each file, the date it was trashed, and the original path.
- Restore trashed files: You can restore a file from the trash using the ``trash-restore`` command followed by the name of the file. This command moves the file back to its original location.
- Empty the trash: You can empty the trash using the ``trash-empty`` command. This permanently deletes all files in the trash, freeing up disk space.

Using trash-cli can help you avoid accidentally deleting important files and directories, and it provides an easy way to recover files that you didn't mean to delete. trash-cli is available on most Linux distributions and can be installed using the package manager.

### Install Process:
Debain or debian bases distributions, enter the following commands in your terminal.
```bash
sudo apt install trash-cli
```

Arch or arch based distributions, enter the following commands in your terminal.
```bash
sudo pacman -S trash-cli
```

![trash-cli-image-05](/images/2023/Operating-System/Linux/Top5-Commands/trash-cli/trash-cli.png)

## Command 5: tree
The ``tree`` command is a useful command-line utility that displays the contents of a directory in a tree-like format. It is available in Arch Linux and many other Linux distributions and can be installed using the package manager.

Here are some features of the ``tree`` command:

- Display directory contents: Running ``tree`` without any arguments will display the contents of the current directory in a tree-like format.
- Display subdirectories only: You can use the ``-d``option to display only the subdirectories of a directory, without showing the files.
- Limit depth: You can use the ``-L`` option followed by a number to limit the depth of the tree. For example, tree -L 2 will display the contents of the current directory and its immediate subdirectories.
- Show hidden files: You can use the ``-a`` option to display hidden files (files that start with a dot) in the tree.
- Colorize output: You can use the ``-C`` option to colorize the output of tree. This makes it easier to distinguish between different types of files and directories.
- Output to file: You can use the ``-o`` option followed by a filename to save the output of tree to a file instead of displaying it in the terminal.
- Follow symbolic links: You can use the ``-L`` option followed by the word ``follow`` to follow symbolic links and display their targets in the tree.

The ``tree`` command is a powerful and flexible tool for displaying the contents of a directory in a clear and organized way. It can be useful for navigating large and complex directory structures and for finding files and directories that are nested deep within a directory hierarchy.

### Install Process:
Debain or debian bases distributions, enter the following commands in your terminal.
```bash
sudo apt install tree
```

Arch or arch based distributions, enter the following commands in your terminal.
```bash
sudo pacman -S tree
```

![tree-image-06](/images/2023/Operating-System/Linux/Top5-Commands/tree/tree.png)

# Conclusion:
Overall, these commands are all useful tools that can make your Linux experience more efficient, productive, and enjoyable. Whether you're a new Linux user or an experienced system administrator, these commands can help you navigate the terminal, monitor system resources, and manage files and directories more effectively.

With that, we will see you next time.❤️❤️

# Credit:
This article was written by [Abdul Rafay](https://future-insight.blog/author) and published on [Future Insight](https://future-insight.blog).

# Contact Us: 
If you encounter any issues or have any questions regarding any of the articles on this website, please do not hesitate to contact the website's support team. Your feedback is important and the team is dedicated to providing prompt and effective assistance to ensure a positive user experience.

To access the contact page, simply click on the "Contact" tab in the navigation menu or visit the following URL: [contact page](https://future-insight.blog/contact). From there, you can fill out a contact form or find additional information on how to get in touch with the support team.

Don't let any questions or concerns go unanswered - reach out to the support team for help and guidance. They are committed to providing excellent customer service and will do everything possible to ensure that you have a seamless experience on the website.

<!-- ## WalkThrough Video: -->
<!-- <iframe width="800" height="450" src="https://www.youtube.com/embed/YT-link" frameborder="1" allowfullscreen></iframe> -->
