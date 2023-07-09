---
title: "Midnight Tokyo: Awesome Window Manager"
date: 2023-05-26T16:36:17+05:00
draft: false
type: "post"
tags: ["blog" ,"linux", "Window-Manager", "operating-system"]
description: "Embrace the midnight allure of Tokyo on your Linux desktop"
showTableOfContents: true
url: /OS/linux/MidnightTokyoWM/
image: "/images/2023/my-new-desktop/Midnight-Tokyo.png"
---

   
-----------

Linux has become an integral part of my daily computing routine. I find immense joy in using it, and there is no doubt that it has transformed my computing experience. I embarked on my Linux journey approximately three years ago, and since then, I have explored a multitude of distributions, seeking to understand what makes each one tick and what sets them apart. Some have proven to be less than satisfactory, while others have truly impressed me.

My first foray into the Linux world began with Ubuntu, a distribution that introduced me to the open-source software ecosystem. From there, I ventured into the realms of Zorin, Manjaro, Arch, and Debian, eager to uncover the unique offerings of each. However, it was during my experiences with Arch Linux and Debian that I discovered the enchanting realm of window managers.

Intrigued by the allure of customization and personalization, I delved into various window managers, exploring their capabilities and transforming them into full-fledged desktop environments. This journey proved to be both challenging and rewarding as I acquired the skills to configure and tailor these window managers to suit my preferences.

Although I have experimented with different distributions, I have yet to find the perfect desktop environment that truly inspires me and enhances my workflow. While options like Gnome and Plasma are undoubtedly excellent, they can sometimes feel monotonous. I yearned for something unique and captivating. This led me on a path to discover alternative solutions, specifically window managers.

My quest to find an exceptional window manager introduced me to a myriad of options, each with its own distinct appeal. After thorough exploration, I eventually settled on the Awesome Window Manager. Its innovative design, flexibility, and seamless workflow integration captivated me and transformed my Linux experience.

Through my continuous exploration of Linux and its vast possibilities, I have not only found a reliable operating system but also discovered a passion for customization and personalization. It is this journey of constant discovery and adaptation that fuels my love for Linux and motivates me to share my experiences with others.

# My Desktop Environment

For my ideal desktop environment, I have chosen to use the Awesome Window Manager alongside a curated selection of applications and extensions. With each iteration and version of my desktop environment, I have come closer to achieving the perfect balance, but the journey of customization and refinement is never truly complete. There is always an urge to tweak or change something, seeking that next level of personalization.

The current version of my desktop environment, however, represents a significant milestone in my pursuit of the perfect setup. The combination of the Awesome Window Manager with carefully chosen applications and extensions has culminated in a highly productive and visually pleasing environment. The window tiling and management capabilities of Awesome, along with its extensibility, provide a seamless and efficient workflow.

To complement the Awesome Window Manager, I have handpicked a suite of applications and extensions that perfectly align with my needs and preferences. From productivity tools to system utilities, each application serves a specific purpose and contributes to the overall functionality and aesthetics of my desktop environment.

It is worth noting that the quest for the perfect desktop environment is an ongoing endeavor. As technology evolves and personal preferences shift, there will always be room for exploration and improvement. The flexibility and adaptability of Linux allow me to continue refining and tailoring my setup, ensuring that it remains an extension of my workflow and creativity.

# Look & Feel
At the time of writing this blog post, my desktop environment look like this, but with time I will be tweaking and making it better. 
- Full Desktop View
![first-look](/images/2023/my-new-desktop/home-screen.png)
- Tilting View
![titleing-view](/images/2023/my-new-desktop/terminal-look.png)
- Multiple Terminal
![multiple-terminal](/images/2023/my-new-desktop/multiple-terminal-look.png)

# Programming Language

Contrary to popular belief, creating a custom desktop environment does not necessarily require proficiency in a programming language. Instead, it primarily involves a solid understanding of how to read and modify existing code to align with your specific requirements. In the realm of window managers, Lua emerges as a scripting language of choice, offering an elegant and efficient solution for customization.

The Awesome Window Manager, being highly configurable, is designed and coded using Lua, making it a powerful and versatile tool for shaping your desktop environment. Lua's scripting capabilities enable seamless interaction with the system through the utilization of functions and libraries. As a result, the configuration files that govern the behavior and appearance of the window manager are written and tailored in the Lua programming language.

By leveraging Lua, you gain the ability to fine-tune and personalize your desktop environment to an extraordinary extent. The intuitive syntax and extensive documentation make Lua accessible for both beginners and experienced users, facilitating the customization process and enabling you to shape your desktop environment according to your unique workflow and preferences.

Moreover, the Lua ecosystem encompasses a rich collection of libraries and modules, offering additional functionalities and extending the capabilities of the Awesome Window Manager. This ecosystem provides a vast array of options to further enhance and refine your desktop environment, ensuring a seamless integration of applications, extensions, and utilities.

# File Structure
This is the folder structure so for the awesome Window manager. 

```
/home
 └─prometheus
    └─.config
       └─awesome
          ├─freedesktop
          │  ├─desktop.lua
          │  ├─init.lua
          │  └─menu.lua
          ├─lain
          │  ├─icons/
          │  ├─layouts/
          │  │  ├─cascade.lua
          │  │  ├─centerwork.lua
          │  │  ├─init.lua
          │  │  └─termfair.lua
          │  ├─util/
          │  │  ├─dkjson.lua
          │  │  ├─init.lua
          │  │  ├─markup.lua
          │  │  ├─menu_iterator.lua
          │  │  ├─quake.lua
          │  │  └─separators.lua
          │  ├─widget/
          │  │  ├─contrib/
          │  │  │  ├─init.lua
          │  │  │  ├─moc.lua
          │  │  │  ├─redshift.lua
          │  │  │  ├─task.lua
          │  │  │  └─tp_smapi.lua
          │  │  ├─alsa.lua
          │  │  ├─alsabar.lua
          │  │  ├─bat.lua
          │  │  ├─cal.lua
          │  │  ├─cpu.lua
          │  │  ├─fs.lua
          │  │  ├─imap.lua
          │  │  ├─init.lua
          │  │  ├─mem.lua
          │  │  ├─mpd.lua
          │  │  ├─net.lua
          │  │  ├─pulse.lua
          │  │  ├─pulsebar.lua
          │  │  ├─sysload.lua
          │  │  ├─temp.lua
          │  │  └─weather.lua
          │  ├─wiki/
          │  ├─helper/
          │  └─init.lua
          ├─scripts
          │  └─compton-toggle.sh
          ├─themes
          │  └─toky-night/
          │     ├─wallpapers/
          │     │  ├─witcher-1.png
          │     │  ├─witcher-2.png
          │     │  └─witcher-3.png
          │     ├─theme.lua
          │     └─icons/
          ├─brightness.sh
          └─rc.lua

```
## Folder Structure Explain
The diagram represents the file structure of the `/home/prometheus/.config/awesome` directory. It contains configuration files, scripts, themes, and resources for the Awesome Window Manager. Some notable items include:

- `freedesktop`: Directory with files related to the freedesktop.org standards, defining desktop behavior.
- `lain`: Directory with modules extending the functionality of the window manager.
- `themes`: Directory with themes, including the "toky-night" theme.
- `brightness.sh`: Shell script for controlling system brightness.
- `rc.lua`: Main configuration file for the Awesome Window Manager, written in Lua.

This directory structure and its contents contribute to configuring and customizing the behavior and appearance of the Awesome Window Manager.

# Experience Midnight Tokyo: Run the Desktop Script
To experience the enchanting Midnight Tokyo desktop environment on your Fedora or Fedora-based distribution, you can follow these simple steps:

1. Open your terminal and clone the Midnight Tokyo repository by executing the following command:
   ```bash
   git clone https://github.com/rafay99-epic/MidnightTokyo
   ```

2. Navigate to the cloned repository folder using the terminal:
   ```bash
   cd MidnightTokyo
   ```

3. Make the script executable by running the following command:
   ```bash
   chmod +x fedora.sh
   ```

4. Run the script to set up the Midnight Tokyo desktop environment:
   ```bash
   ./fedora.sh
   ```

**Note: Please ensure that you are running the script as a normal user and not as root. Running the script as root will terminate the execution.**

*Note: Currently, the script is available for Fedora and Fedora-based distributions only. However, a script for Arch Linux will be made available in the near future to enable Arch users to enjoy the Midnight Tokyo desktop environment as well.*

By following these instructions, you'll be able to effortlessly set up and experience the captivating Midnight Tokyo theme on your Fedora-based Linux distribution. Get ready to immerse yourself in the stunning visuals and unique desktop experience that Midnight Tokyo has to offer!

# Conclusion:
The Midnight Tokyo theme offers a captivating and immersive desktop environment for Linux users, particularly those utilizing the Awesome Window Manager. By following the installation instructions and running the provided script, you can effortlessly transform your Fedora or Fedora-based distribution into a visually stunning and highly customizable workspace.

With its mesmerizing visuals and unique design elements, Midnight Tokyo breathes new life into your desktop experience. The combination of the carefully crafted theme, wallpapers, and configuration files provides a seamless integration that captures the essence of the Midnight Tokyo atmosphere.

By embracing themes like Midnight Tokyo, we can personalize our Linux desktop environments and create a workspace that truly resonates with our individual style and preferences. The ability to modify and tweak every aspect of the environment allows us to tailor it to our needs, fostering a more productive and enjoyable computing experience.

As development continues, we can look forward to the expansion of the Midnight Tokyo project, including the availability of the script for Arch Linux users in the near future. This ensures that an even wider range of Linux enthusiasts can indulge in the captivating charm of Midnight Tokyo.

In conclusion, the Midnight Tokyo theme opens up a world of creativity and customization, allowing Linux users to transform their desktops into a visually stunning and immersive environment. It's a testament to the vibrant Linux community, which consistently produces remarkable projects that enhance the overall Linux experience. Embrace the Midnight Tokyo theme and embark on a journey of personalization, exploration, and inspiration in your Linux desktop realm.

With that, we will see you next time.❤️❤️

# Credit:
This article was written by [Abdul Rafay](https://future-insight.blog/author) and published on [Future Insight](https://future-insight.blog/).

# Contact Us: 
If you encounter any issues or have any questions regarding any of the articles on this website, please do not hesitate to contact the website's support team. Your feedback is important and the team is dedicated to providing prompt and effective assistance to ensure a positive user experience.

To access the contact page, simply click on the "Contact" tab in the navigation menu or visit the following URL: [contact page](https://future-insight.blog/contact). From there, you can fill out a contact form or find additional information on how to get in touch with the support team.

Don't let any questions or concerns go unanswered - reach out to the support team for help and guidance. They are committed to providing excellent customer service and will do everything possible to ensure that you have a seamless experience on the website.

# References:
Here are all of the links and references that I used to write this blog, so feel free to visit them to get some more help.
## GitHub Repository:
The source code for this project is available on the GitHub platform.
- [MidnightTokyoWM](https://github.com/rafay99-epic/MidnightTokyo)

# Thumbnail
![thumbnail](/images/2023/my-new-desktop/Midnight-Tokyo.png)

<!-- ## WalkThrough Video: -->
<!-- <iframe width="800" height="450" src="https://www.youtube.com/embed/YT-link" frameborder="1" allowfullscreen></iframe> -->
