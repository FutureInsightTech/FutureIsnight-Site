---
title: "Flutter Kickstart: From Setup to Emulator in Style"
date: 2023-07-31T22:00:34+05:00
draft: false
type: "post"
tags: ["blog" ,"new-tech", "Flutter"]
description: "Setup Flutter & Emulator"
showTableOfContents: true
url: /tech-journey/Flutter/flutter-kickstart/
image: "/images/2023/Tech-Journey/Flutter/Setup-Flutter/Flutter-Setup.png"
---

<link rel="stylesheet" href="/css/reference-content/reference-content.css">

-----------

I must say that setting up Flutter is not easy. There are a lot of videos out there that claim to help you set up the Flutter SDK for Windows, Linux, or macOS, but they are often incomplete and don't answer the most basic questions you may have. So, I've decided to write this blog to help you guys out.

From day one, I've been a web developer, using React, HTML, CSS, and JavaScript to create websites. However, when it comes to Android applications, I've developed using Android Studio, which means managing two code bases: one for Android and one for the web. That's why I've chosen to learn Flutter for this purpose.

As a beginner in Flutter development, I had a lot of questions in my mind, and I'm sure many of you have similar questions. So, I've listed all the questions I had, and I'll be answering them in this blog.

# Questions
1. How to create a Flutter Project?
2. How to run a Flutter project on an emulator?
3. How to set up an emulator on Windows?

## Create a Flutter Project
To create a project in Flutter, there are multiple ways. The two main methods are:
1. Use Visual Studio Code to create a Flutter project.
2. Use Android Studio to create a Flutter project.

In this blog, I'll be using Visual Studio Code to create a Flutter project.

### Create a Flutter Project using Visual Studio Code
To create a Flutter project, you'll need to have VS Code installed on your system. If you haven't installed VS Code yet, make sure to do so. Once you have VS Code installed, you need to install the Flutter and Dart extensions. To install these extensions, follow these steps:

1. Open Visual Studio Code.
2. Open the Extensions sidebar by pressing `Ctrl+Shift+X` or by clicking the Extensions icon in the sidebar.
3. Search for "Flutter" in the extensions search bar.
  ![flutter](/images/2023/Tech-Journey/Flutter/Setup-Flutter/vs-code.png)
4. Once the Flutter extension is installed, search for "Dart" in the extensions search bar.
  ![dart](/images/2023/Tech-Journey/Flutter/Setup-Flutter/Dart-Programming.png)

Now that you have everything set up, you can create a Flutter project by following these steps:

1. In VS Code, press `Ctrl+Shift+P` to open the command palette.
2. Type "flutter" in the command palette and select "Flutter: New Project".
  ![image](/images/2023/Tech-Journey/Flutter/Setup-Flutter/flutter-project.png)
3. Select the location where you want to create your project.
4. Name the project and press enter.

With that, you have created your first Flutter project. You can now open the project in VS Code and start coding.

## Run a Flutter Project on an Emulator
To run a Flutter project, you'll need to have an emulator or a real device. In this blog, I'll show you how to run a Flutter project on an emulator. To install an emulator, you'll need to download Android Studio on your system.

Assuming you have already installed Android Studio on your system and set up an emulator, if you haven't, you can refer to my previous blog post on how to do that.

### Installing Emulator
If you want to install an emulator on your system, you'll need an extension that can help you run your Flutter project on an emulator. To install the extension, follow these steps:

1. Open Visual Studio Code.
2. Open the Extensions sidebar by pressing `Ctrl+Shift+X` or by clicking the Extensions icon in the sidebar.
3. Search for "Emulator".
   ![image](/images/2023/Tech-Journey/Flutter/Setup-Flutter/emulator.png)
4. Install the extension.
5. Now you need to set your emulator path in VS Code. To do that, follow these steps:
   1. Open VS Code.
   2. Press `Ctrl+Shift+P` to open the command palette.
   3. Type "Flutter: Select Device" and press enter.
   4. Select "Emulator" and press enter.
   5. Select your emulator and press enter.
   6. Now you have set your emulator path in VS Code.
   7. You need two paths:
      1. `~/Library/Android/sdk/tools/emulator`
      2. `C:\Users\{username}\AppData\Local\Android\Sdk\emulator`
      3. You need to change the username in the path to your username.
    8. Place these paths in the settings in VS Code.
      ![image](/images/2023/Tech-Journey/Flutter/Setup-Flutter/link-path.png)
    9. Now you can run your Flutter project on the emulator.

### Run a Flutter Project on an Emulator
To run a Flutter project on an emulator, follow these steps:

1. Open your Terminal in VS Code.
2. Run this command to launch your emulator:
   1. `flutter emulators --launch {emulator name}`
   2. Emulator name is the name of your emulator.
3. Now you can run your Flutter project on the emulator.
    1. `flutter run` is the command that will deploy your Flutter project on the emulator.
![image](/images/2023/Tech-Journey/Flutter/Setup-Flutter/Running-Project.png)

# Conclusion
Congratulations! You have now configured VS Code to run your Flutter project on an emulator. I hope this blog helps you set up your Flutter project. If you have any questions or suggestions, feel free to contact me.

Happy coding! 🙂

With that, we will see you next time.❤️❤️

# Credit
This article was written by [Abdul Rafay](https://future-insight.blog/author) and published on [Future Insight](https://future-insight.blog/).

# Contact Us 
If you encounter any issues or have any questions regarding any of the articles on this website, please do not hesitate to contact the website's support team. Your feedback is important and the team is dedicated to providing prompt and effective assistance to ensure a positive user experience.

To access the contact page, simply click on the "Contact" tab in the navigation menu or visit the following URL: [contact page](https://future-insight.blog/contact). From there, you can fill out a contact form or find additional information on how to get in touch with the support team.

Don't let any questions or concerns go unanswered - reach out to the support team for help and guidance. They are committed to providing excellent customer service and will do everything possible to ensure that you have a seamless experience on the website.


<!-- # Supporting Materials
Here are all of the links and references that I used to write this blog, so feel free to visit them to get some more help.
## Knowledge Nexus
<div class="cards-container">
  <a class="card" href=" ">
    <img src="/images/content-icons/19197011.jpg" alt="Article 1">
    <h3 class="title">Article 1</h3>
  </a>
  <a class="card" href=" ">
    <img src="/images/content-icons/20944335.jpg" alt="Article 2">
    <h3 class="title">Article 2</h3>
  </a>
  <a class="card" href=" ">
    <img src="/images/content-icons/2936024.jpg" alt="Article 3">
    <h3 class="title">Article 3</h3>
  </a>
  <a class="card" href=" ">
    <img src="/images/content-icons/8767135.jpg" alt="Article 3">
    <h3 class="title">Article 3</h3>
  </a>
</div> -->

# Thumbnail
![image](/images/2023/Tech-Journey/Flutter/Setup-Flutter/Flutter-Setup.png)