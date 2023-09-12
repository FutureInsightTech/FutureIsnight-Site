---
title: "Secure Linux The 3 Biggest Security Mistakes Linux Users Make"
date: 2023-07-20T16:55:10+05:00
draft: false
type: "post"
tags: ["blog" ,"Operating-System", "Linux", "security"]
description: "Security is a Journey not a destination"
showTableOfContents: true
url: /OS/linux/secure-linux
image: "/images/2023/Operating-System/Linux/Secure-Linux/Secure-Linux-3.png"
---

<style>
.video-container {
  position: relative;
  padding-bottom: 56.25%; /* 16:9 aspect ratio (h/w) */
  padding-top: 30px;
  height: 0;
  overflow: hidden;
}

.video-container iframe {
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
}
</style>


-----------

After using a Linux system for a while, I've noticed that there are some common mistakes people make that can compromise the security of their Linux installations. In this blog post, I will address the three most significant security mistakes that Linux users often make. These mistakes can be exploited by hackers, making them essential points to consider for basic security layers.

# Base Security Layer

The base security layer is the first line of defense against attackers and consists of three components: Network Security Layer, Operating System Security Layer, and Application Security Layer.

## Network Level

Managing a firewall on a system can be a daunting task, but it is crucial for maintaining security. In this section, we will discuss the two most common types of firewalls in Linux: ***ufw*** and ***fail2ban***.

### UFW (Uncomplicated Firewall)

UFW is easy to set up and understand. It efficiently blocks and allows network traffic.

#### Installing UFW

To install UFW on major Linux distributions, use the following commands:

- ##### Debian/Ubuntu
  ```bash
  sudo apt-get install ufw
  ```
  ![image](/images/2023/Operating-System/Linux/Secure-Linux/debian-install-ufw.png)
  
- ##### Fedora
  ```bash
  sudo dnf install ufw
  ```

- ##### Arch
  ```bash
  sudo pacman -S ufw
  ```
  ![image](/images/2023/Operating-System/Linux/Secure-Linux/Arch-linux-ufw-insitall.png)

#### Recommended UFW Rules

Here are some effective UFW rules to secure your system:

```bash
sudo ufw limit 22/tcp
sudo ufw allow 80/tcp
sudo ufw allow 443/tcp
sudo ufw default deny incoming
sudo ufw default allow outgoing
sudo ufw enable
```
![image](/images/2023/Operating-System/Linux/Secure-Linux/enable-firewall.png)

### Fail2Ban

Fail2Ban is an excellent intrusion prevention utility present in almost all Linux servers. It blocks IP addresses attempting to brute force your server and releases the block after a certain time.

#### Installing Fail2Ban

To install Fail2Ban on major Linux distributions, use the following commands:

- ##### Debian/Ubuntu
  ```bash
  sudo apt-get install fail2ban
  ```
  ![image](/images/2023/Operating-System/Linux/Secure-Linux/fail2ban-debian.png)
- ##### Fedora
  ```bash
  sudo dnf install fail2ban
  ```

- ##### Arch
  ```bash
  sudo pacman -S fail2ban
  ```
  ![image](/images/2023/Operating-System/Linux/Secure-Linux/fail2ban-arch.png)

#### Configuring Fail2Ban

Fail2Ban requires configuration to be effective. Here's a sample configuration that you can use on your servers and computers:

Create or edit the file: ```/etc/fail2ban/jail.local```
```conf
[DEFAULT]
ignoreip = 127.0.0.1/8 ::1
bantime = 3600
findtime = 600
maxretry = 5

[sshd]
enabled = true
```

#### Enabling Fail2Ban

To enable Fail2Ban, run the following commands:

```bash
sudo systemctl enable fail2ban
sudo systemctl start fail2ban
```
![image](/images/2023/Operating-System/Linux/Secure-Linux/Enable-fail2ban.png)

## Operating System Level - Adding Repositories

Adding untrusted repositories can lead to serious security issues. It's crucial to only add repositories that are trustworthy and safe.

### Prioritizing Repositories

On Debian-based systems, you can set priority preferences for repositories. Example: ***volian.pref***

```conf
Package: *
Pin: origin deb.volian.org
Pin-Priority: 100
```

- Set specific packages to only install with the Package: * Line
- Pin: Origin is the address of the repo
- Pin-Priority is generally 100 which means it will update packages NOT in base repos.
    - 1 = do not auto-update
    - 100 = update if not in other repos
    - over 100 = overwrite base repos

(Note: Arch Linux does not have built-in repository priorities in Pacman)

## Application Level - Not using AppArmor or SELinux

Many Linux distributions come with AppArmor or SELinux pre-installed, but some, like Arch Linux, may not. These tools are essential for sandboxing and limiting application access, even when they are elevated to higher privileges.

However, simply installing these tools in permissive modes is not enough to provide full protection. Users need to configure and customize application profiles to ensure proper security.

To learn more about using AppArmor or SELinux, refer to the respective documentation:
- [AppArmor Documentation](https://gitlab.com/apparmor/apparmor/-/wikis/Documentation)
- [SELinux Documentation](https://access.redhat.com/documentation/en-us/red_hat_enterprise_linux/7/html/selinux_users_and_administrators_guide/index)


# Conclusion
Securing your Linux system is essential to protect it from potential threats. By following best practices at the base security layer, prioritizing repositories, and using tools like AppArmor or SELinux, you can significantly enhance your system's security. Remember to stay informed about the latest security measures and keep your system up-to-date to stay ahead of potential attackers.

With that, we will see you next time.❤️❤️

# Credit
This article was written by [Abdul Rafay](https://future-insight.blog/author) and published on [Future Insight](https://future-insight.blog/).

# Contact Us 
If you encounter any issues or have any questions regarding any of the articles on this website, please do not hesitate to contact the website's support team. Your feedback is important and the team is dedicated to providing prompt and effective assistance to ensure a positive user experience.

To access the contact page, simply click on the "Contact" tab in the navigation menu or visit the following URL: [contact page](https://future-insight.blog/contact). From there, you can fill out a contact form or find additional information on how to get in touch with the support team.

Don't let any questions or concerns go unanswered - reach out to the support team for help and guidance. They are committed to providing excellent customer service and will do everything possible to ensure that you have a seamless experience on the website.

# Video WalkThrough
<div class="video-container">
  <iframe width="800" height="450" src="https://www.youtube.com/embed/KHGTRnUFbEE?si=xx1jy9Jelsr5djCk" frameborder="0" allowfullscreen></iframe>
</div>


