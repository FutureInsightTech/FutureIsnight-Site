---
title: "Image Optimization"
date: 2023-05-23T00:26:19+05:00
draft: false
type: "post"
tags: ["blog" ,"linux"]
description: "Optimize Your Images for Better Performance"
showTableOfContents: true
url: /image-optimization/
image: "/images/2023/image-optimization/Image-Optimization.png"
---
<link rel="stylesheet" href="/css/style.css">

-----
Over the years, I have witnessed significant changes in the world of images, from 5-megapixel images to 200-megapixel captures right from our smartphones. Image sizes have grown from a couple of megabytes to several gigabytes. Technology has truly transformed the way we capture and store images.

When writing blog posts with multiple images, the size of the images becomes a crucial factor. Large image sizes can slow down website loading times, impacting user experience. To optimize website performance, we need to address various aspects, including image optimization.

In this blog post, I will provide a custom script that can help you optimize images for your social media posts, blog articles, or any other purpose you desire.

# Operating System
For this optimization process, I will be using Linux. I highly recommend using Linux for the best performance and optimization results. However, if you are using Windows, there are two options available:

1. **PowerToys**: PowerToys is a collection of utilities for power users that enhance productivity on Windows. It provides a range of tools that offer additional functionality and customization options to optimize your workflow. You can install PowerToys using Winget. Open your PowerShell and enter the following command:
   ```ps1
   winget install Microsoft.PowerToys
   ```

2. **WSL**: Windows Subsystem for Linux (WSL) is a compatibility layer in Windows that allows you to run a Linux environment directly on your Windows machine. It enables you to use command-line tools, utilities, and applications from various Linux distributions without the need for virtual machines or dual-boot setups. To install WSL on your system, you can follow this [guide](https://learn.microsoft.com/en-us/windows/wsl/install).

# Dependencies
Before using the optimization script, ensure that you have the following dependencies installed:
- Imagemagick
- Optipng
- Jpegoptim

## Debian Install
Open your terminal and run the following commands:
```bash
sudo apt install jpegoptim optipng imagemagick webp -y
git clone https://github.com/VirtuBox/img-optimize.git $HOME/.img-optimize
sudo ln -s $HOME/.img-optimize/optimize.sh /usr/local/bin/img-optimize
sudo chmod +x /usr/local/bin/img-optimize
```

## Arch Install
Open your terminal and run the following commands:
```bash
yay -S jpegoptim optipng imagemagick webp -y
git clone https://github.com/VirtuBox/img-optimize.git $HOME/.img-optimize
sudo ln -s $HOME/.img-optimize/optimize.sh /usr/local/bin/img-optimize
sudo chmod +x /usr/local/bin/img-optimize
```

## Fedora Install
Open your terminal and run the following commands:
```shell
sudo dnf install jpegoptim optipng ImageMagick webp-pixbuf-loader
git clone https://github.com/VirtuBox/img-optimize.git $HOME/.img-optimize
sudo ln -s $HOME/.img-optimize/optimize.sh /usr/local/bin/img-optimize
sudo chmod +x /usr/local/bin/img-optimize
```

# Custom Script
Below is a customizable script that can be used to optimize images. Remember to change the variables for FOLDER, WIDTH, and HEIGHT to suit your needs.

```bash
#!/bin/bash
# Dependencies:
# - img-optimize: https://virtubox.github.io/img-optimize/
# - Imagemagick
# - Jpegoptim
# - Optipng

FOLDER="/home/prometheus/GitHub-Projects/Blog-website/static/images"

# Max width
WIDTH=800

# Max height
HEIGHT=600

# Resize PNG or JPG to either height or width while maintaining proportions using Imagemagick
find ${FOLDER} -iname '*.jpg' -o -iname '*.png' -exec convert \{} -verbose -resize $WIDTHx$HEIGHT\> \{} \;
img-optimize --std --path "$(pwd)"
```

This script is currently being used on [Future Insight](https://future-insight.blog). You can find the source code in the references section.

# Conclusion
Optimizing images is crucial for improving website performance and user experience. By reducing image sizes without compromising quality, you can significantly enhance the loading speed of your website. The custom optimization script provided in this blog post offers a convenient way to optimize images for various purposes.

Remember, optimizing your website goes beyond just images. There are many other techniques and best practices to explore. Stay tuned for more insights and tips to improve your website's performance.

We hope you found this blog post helpful. Feel free to reach out if you have any questions or need further assistance.

See you next time! ❤️❤️

# Credit:
This article was written by [Abdul Rafay](https://rafay99.info) and published on [Future Insight](https://futureinsight.blog).

# Contact Us: 
If you encounter any issues or have any questions regarding any of the articles on this website, please do not hesitate to contact the website's support team. Your feedback is important and the team is dedicated to providing prompt and effective assistance to ensure a positive user experience.

To access the contact page, simply click on the "Contact" tab in the navigation menu or visit the following URL: [contact page](https://future-insight.blog/contact). From there, you can fill out a contact form or find additional information on how to get in touch with the support team.

Don't let any questions or concerns go unanswered - reach out to the support team for help and guidance. They are committed to providing excellent customer service and will do everything possible to ensure that you have a seamless experience on the website.

# References:
Here are all of the links and references that I used to write this blog, so feel free to visit them to get some more help.
## GitHub Repository:
- [Source Code](https://github.com/rafay99-epic/Future-Insight/blob/main/reduce_image.sh)

# Thumbnail:
<!-- ![image](/images/2023/image-optimization/iMAGE-opTIMIZATION.png) -->
![image](/images/2023/image-optimization/Image-Optimization.png)


<!-- ## WalkThrough Video: -->
<!-- <iframe width="800" height="450" src="https://www.youtube.com/embed/YT-link" frameborder="1" allowfullscreen></iframe> -->
