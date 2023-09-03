---
title: "Hyprland Window Manager Tour: A New Desktop Experience"
date: 2023-08-25T23:45:20+05:00
draft: false
type: "post"
tags: ["blog" ,"linux", "window-manager", "operating system"]
description: "My new Desktop Environment"
showTableOfContents: true
url: /OS/linux/hyprland/
image: "/images/2023/Operating-System/Linux/Wayland-Window-Manager/thubnail-hyper-land-vm.png"
---

<link rel="stylesheet" href="/css/reference-content/reference-content.css">

-----------
<style>
    .gdoc-tabs-container {
    display: flex;
    overflow-x: auto;
    background-color: transparent;
    margin: 20px;
    width: 100%;
  }
  .gdoc-tabs {
    display: flex;
    flex-direction: column;
    min-width: 200px;
  }
  .gdoc-tabs__control {
    display: none;
  }
  .gdoc-tabs__label {
    padding: 10px;
    border-bottom: 1px solid #ccc;
    cursor: pointer;
    text-align: center;
    color: white;
    transition: background-color 0.2s, color 0.2s, box-shadow 0.2s;
  }
  .gdoc-tabs__control:checked + .gdoc-tabs__label {
    background-color: #000;
    color: #fff;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
  }
  .gdoc-tabs__content {
    display: none;
    flex-shrink: 0;
    padding: 20px;
    background-color: transpant;
    border: 1px solid #ccc;
    border-radius: 4px;
    margin-top: 10px;
  }

  .gdoc-tabs__control:checked + .gdoc-tabs__label + .gdoc-tabs__content {
    display: block;
  }
</style>
<script>
      window.addEventListener('DOMContentLoaded', (event) => {
          const tabControls = document.querySelectorAll('.gdoc-tabs__control');
          const tabContents = document.querySelectorAll('.gdoc-tabs__content');

          tabControls.forEach((control, index) => {
              control.addEventListener('change', () => {
                  tabContents.forEach((content, contentIndex) => {
                      if (contentIndex === index) {
                          content.style.display = 'block';
                      } else {
                          content.style.display = 'none';
                      }
                  });
              });
          });

          // Set the default tab's content to be visible on page load
          const defaultTabIndex = Array.from(tabControls).findIndex(control => control.checked);
          if (defaultTabIndex !== -1) {
              tabContents[defaultTabIndex].style.display = 'block';
          }
      });
</script>


# Hyprland Window Manager Tour: A New Desktop Experience

As many of you may already know, I have been using Linux for several years now, both on servers and desktop systems. Throughout my journey, I have transitioned from a full-fledged desktop environment to a minimalistic setup tailored specifically for my needs.

In this ongoing exploration, I recently made a significant switch in my window manager choice. While I had been using the Awesome Window Manager for quite some time, I decided to shift gears and embrace the relatively new and rapidly evolving hyprland Window Manager. hyprland has been in development for about a year, and its developers and community are highly active and enthusiastic.

Join me in this blog post as I delve into my experiences with hyprland Window Manager and the reasons behind my decision to make the switch.


## Hyprland Installation Choices 
Hyprland is a relatively new development that demands a host of fresh dependencies with updated versions. To install hyprland on your system, you have three viable options:

1. **Arch Linux**
2. **Fedora Linux**
3. **Nix-OS**

For an optimal experience, I would recommend using Arch Linux. While I've experimented with Fedora, it's worth noting that you may need to build packages from source since hyprland is not readily available in the Fedora Repository. On the other hand, Nix OS offers a different approach with its package management system. Although I haven't personally tried it, based on other articles, it appears to be a viable option for installing hyprland, offering a distinct package management experience.

## Installation: 
You can install hyprland by following the official guide on their [website](https://wiki.hyprland.org/Getting-Started/Installation/). However, here's a simplified guide for installing hyprland:

<div class="gdoc-tabs-container">
  <div class="gdoc-tabs">
    <input type="radio" class="gdoc-tabs__control" name="tabs-uniqueid" id="tabs-uniqueid-0">
    <label for="tabs-uniqueid-0" class="gdoc-tabs__label">Arch Linux</label>
    <input type="radio" class="gdoc-tabs__control" name="tabs-uniqueid" id="tabs-uniqueid-1" checked>
    <label for="tabs-uniqueid-1" class="gdoc-tabs__label">Nix</label>
    <input type="radio" class="gdoc-tabs__control" name="tabs-uniqueid" id="tabs-uniqueid-2">
    <label for="tabs-uniqueid-2" class="gdoc-tabs__label">openSUSE</label>
    <input type="radio" class="gdoc-tabs__control" name="tabs-uniqueid" id="tabs-uniqueid-3">
    <label for="tabs-uniqueid-3" class="gdoc-tabs__label">Fedora</label>
  </div>
  <div class="gdoc-tabs__content">
    <p>Use AUR to install hyprland</p>
    <pre>yay -S hyprland-git </pre>
  </div>
  <div class="gdoc-tabs__content">
    <p>Enable Hyprland in your NixOS configuration:</p>
    <pre>programs.hyprland.enable = true;</pre>
  </div>
  <div class="gdoc-tabs__content">
    <p>To install it simply use zypper</p>
    <pre>sudo zypper in hyprland</pre>
  </div>
  <div class="gdoc-tabs__content">
    <p>Install hyprland on Fedora</p> 
      <a href="https://github.com/hyprwm/Hyprland/discussions/284">https://github.com/hyprwm/Hyprland/discussions/284</a>
  </div>
</div>

These are a couple of ways you can install hyprland on your system but checkout the office installing processor on there [website](https://wiki.hyprland.org/Getting-Started/Installation/)

## My Desktop Environment
So this my current hyprland window manager setup.
- Home Page
![Home-Page](/images/2023/Operating-System/Linux/Wayland-Window-Manager/Home-Screen.png)

- Terminal View
![Terminal View](/images/2023/Operating-System/Linux/Wayland-Window-Manager/Terminal.png)

- Multiple Terminal 
![Terminal View](/images/2023/Operating-System/Linux/Wayland-Window-Manager/Three-Terminal.png)

- Neovim 
![Neovim](/images/2023/Operating-System/Linux/Wayland-Window-Manager/Neovim.png)

- Visual Studio Code
![Terminal View](/images/2023/Operating-System/Linux/Wayland-Window-Manager/VS-Code.png)

## My Experience with hyprland

I'll be honest here; the installation process for hyprland is straightforward. Using a script from an online source to set up hyprland was quite convenient, and I made some modifications to the script to tailor my system to my needs.

hyprland, being based on Wayland, offers some remarkable and visually stunning animations that I had never experienced or seen in a window manager before. While I did manage to incorporate some animations in Awesome Window Manager, I couldn't achieve the same level of richness.

In the past, I've been a user of Awesome Window Manager, which is solid and Lua-based, running on Xorg. It was an awesome experience, and you can read more about it in my [blog post](/OS/linux/MidnightTokyoWM/).

The key difference here is that hyprland is based on Wayland, which is relatively new. Some features I used with Xorg work differently or aren't possible with Wayland. Nevertheless, I love hyprland for its animations, workflow, straightforward config file, and live reloading feature. It has been a delightful experience.

On hyprland, I've developed multiple Flutter applications, and with Wayland, I've had to use PipeWire, opening up opportunities to learn new things.

## Pros of hyprland

Here are some pros of the hyprland window manager:

1. **Amazing Looks**
   - Incredible animations
   - Smooth transitions between virtual desktops
   - Rounded corners
   - Excellent integration with Waybar and Wayland utilities

2. **Debugging**
   - Simple config file
   - Live reloading
   - Options for different statuses

These are some of the advantages of hyprland window manager. As I mentioned earlier, the animations and overall feel of this window manager are stunning.

## Cons of hyprland

Here are some cons of the hyprland window manager:

1. **Nvidia Driver Support**
   - We all know that Nvidia drivers can be a nightmare on Linux. If you're using hyprland, good luck with Nvidia drivers. As of this date, Nvidia driver support can be hit or miss. Older cards might work, but if you have something newer like my RTX 3060, you might face issues.

2. **Config File**
   - The issue with the config file is that even though it's live-reloaded, if you assign a shortcut to an application, you can't use the same key for another application. For instance, if you set certain keys for a game, you won't be able to use those same keys for other functions in OBS. hyprland will only detect one input for a key.

3. **PipeWire**
   - While I appreciate PipeWire and its functionality, on Wayland, you can't perform screen sharing or screen recording using the traditional methods. To screen share and record, you need to use PipeWire, and that's something I find cumbersome. Why should I rely on another application as a middleman for screen recording and sharing?
   - PipeWire works well most of the time, around 90 percent, but occasionally it doesn't. However, I believe that over time, these issues will be resolved.

# Final Thoughts
In all honesty, I absolutely love using hyprland. It's the perfect fit for me. I went ahead and set up an Arch Linux server, building my system from the ground up, including only the things I truly appreciate. There's no bloat, no unnecessary applications cluttering my system—just the essentials that I use daily. 

hyprland's stunning aesthetics have enhanced my overall computing experience, encouraging me to use my system more frequently. The project on GitHub is performing admirably, and I believe it will only get better with time. However, I do have one important piece of advice: please steer clear of Nvidia cards when using hyprland. That's the only downside I have to mention.

Overall, my experience with hyprland has been fantastic, and I couldn't be happier with my choice.

With that, we will see you next time.❤️❤️

# Credit
This article was written by [Abdul Rafay](/author) and published on [Future Insight](https://future-insight.blog/).

# Contact Us 
If you encounter any issues or have any questions regarding any of the articles on this website, please do not hesitate to contact the website's support team. Your feedback is important and the team is dedicated to providing prompt and effective assistance to ensure a positive user experience.

To access the contact page, simply click on the "Contact" tab in the navigation menu or visit the following URL: [contact page](https://future-insight.blog/contact). From there, you can fill out a contact form or find additional information on how to get in touch with the support team.

Don't let any questions or concerns go unanswered - reach out to the support team for help and guidance. They are committed to providing excellent customer service and will do everything possible to ensure that you have a seamless experience on the website.


# Supporting Materials
Here are all of the links and references that I used to write this blog, so feel free to visit them to get some more help.
<!-- ## Knowledge Nexus -->
<!-- <div class="cards-container"> -->
<!--   <a class="card" href=" "> -->
<!--     <img src="/images/content-icons/19197011.jpg" alt="Article 1"> -->
<!--     <h3 class="title">Article 1</h3> -->
<!--   </a> -->
<!--   <a class="card" href=" "> -->
<!--     <img src="/images/content-icons/20944335.jpg" alt="Article 2"> -->
<!--     <h3 class="title">Article 2</h3> -->
<!--   </a> -->
<!--   <a class="card" href=" "> -->
<!--     <img src="/images/content-icons/2936024.jpg" alt="Article 3"> -->
<!--     <h3 class="title">Article 3</h3> -->
<!--   </a> -->
<!--   <a class="card" href=" "> -->
<!--     <img src="/images/content-icons/8767135.jpg" alt="Article 3"> -->
<!--     <h3 class="title">Article 3</h3> -->
<!--   </a> -->
<!-- </div> -->
<!---->
## GitHub Repository
<div class="cards-container">
  <a class="card" href="https://github.com/rafay99-epic/Hyprland-Config/">
    <img src="/images/content-icons/Github-Logo.png" alt="GitHub Repo 1">
    <p class="title">My Configuration & Setup script </p>
  </a>
</div>

<!-- ## Video WalkThrough -->
<!-- <iframe width="800" height="450" src="https://www.youtube.com/embed/YT-link" frameborder="1" allowfullscreen></iframe> -->
