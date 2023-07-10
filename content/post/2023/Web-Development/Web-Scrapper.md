---
title: "Web Scrapper"
date: 2023-01-28T16:09:03+05:00
draft: false
type: "post"
tags: ["blog" ,"Web Development"]
description: "Using the Power of JavaScript we will Build a web Scrapper to get some informations"
showTableOfContents: true
url: /web-development/web-scrapper/
---

----

Web scraping is the process of extracting data from websites. With the rise of big data, web scraping has become an essential tool for many businesses and individuals. The data that can be collected through web scraping can be used for a variety of purposes, such as market research, competitor analysis, and lead generation.

# Solution:
What the heck am I thinking? I am a developer,  so I can build what I want and make tasks easy. So here's the plan: I need a script that will visit multiple websites and download some of the data that is available for download.The data I need is

1. Email Address
2. Phone Numbers
3. Office Address

So are the things that I think I might need for now. If I need something else, then I will change the script.

# Exit Strategy:
So before I start to code, I need to see what's on the internet and check how people have implemented this solution. So I searched and got some answers. There are multiple options out there, each with its own features, and they are great, but I don't need those features, plus some of the products are expensive. So I will be coding the application myself. Furthermore, because I enjoy command-line programming and may learn something new, the application will be command-line-based.


# Technologies:
There are several programming languages available for this project, but I will use Python or JavaScript. I am a full stack developer who is comfortable with JavaScript and Node, so I will run and build this application using NodeJs.

1. Python
2. JavaScript

But for me, I will go with JavaScript because I like it, but if you are more comfortable with Python, then go for it; the logic remains the same.

So to get started, you need to have a couple of things installed on your system, which will be stated below:

1. Node.js for JavaScript or Python
2. Text Editor for Writing Code (Visual Studio Code)

## Install Programs:

### Python: 

### NodeJs:
#### Windows: 
To download NodeJs download the exe file from [here](https://nodejs.org/en/download/current/).
#### MacOS;
To download Node Js on Mac OS then open the terminal and enter the following command
``` bash
brew install node
```
#### Linux:
##### Debian/Ubuntu:
To install on ubuntu or Debian then open a terminala nd then enter the following commands.
```bash
sudo apt-get install nodejs npm
```
##### Arch Linux:
If you are using arch Linux then open a terminal and then enter the following command.
```bash
sudo pacman -S nodejs npm
```

### Python
#### Windows
To downloads and Install Python downloads the exe file from Python website and you can download the exe file by clicking [here](https://www.python.org/downloads/)
#### MacOS
To install python on your Mac then follow this [guide](https://docs.brew.sh/Homebrew-and-Python)
#### Linux
##### Debian/Ubuntu
```shell
sudo apt-get install python
```
###### Arch
```shell
sudo pacman -S python
```

# JavaScript
JavaScript has become a popular language for web scraping due to its versatility and ubiquity on the web. With JavaScript, you can easily extract data from websites and use it for various purposes. In this blog, we will explore how to create a web scraper using JavaScript.

**Puppeteer**: A Headless Chrome Library for Web Scraping

Puppeteer is a popular library for web scraping with JavaScript. It allows you to automate the Chrome browser and interact with websites as if you were a real user. This makes it an ideal tool for web scraping because it can handle the complexities of websites and provide you with the data you need.

# Getting Started with Puppeteer

To get started with Puppeteer, you will need to install the library using npm:

```bash
npm install puppeteer
```
Once you have installed Puppeteer, you can create a new file with the following code to launch a headless Chrome browser:


```javascript

const puppeteer = require("puppeteer");

async function run() {
  const browser = await puppeteer.launch();
  const page = await browser.newPage();
  await page.goto("https://example.com");
  await browser.close();
}

run();
```
# Code Explain
This code launches a headless Chrome browser and navigates to the specified URL. You can then use the page object to interact with the website and extract the data you need.

# Extracting Data from a Website

Puppeteer provides a number of methods for extracting data from a website, including $eval and evaluate. The $eval method allows you to select an element on the page and retrieve its properties, such as the text content or the value of an attribute. Here's an example:


``` javascript
const data = await page.$eval("div.data-class", (el) => el.innerText);
console.log(data);
```
This code selects a div element with a data-class class and retrieves its inner text. You can use this method to extract any data from the website that you need.

# Conclusion

Web scraping with JavaScript is a powerful tool for extracting data from websites. With Puppeteer, you can automate the Chrome browser and extract data from websites with ease. Whether you're using the data for market research, competitor analysis, or lead generation, web scraping can provide you with valuable insights into your business or industry.

With that, we will see you next time.❤️❤️

# Credit:
This article was written by [Abdul Rafay](https://rafay99.info) and published on [Future Insight](https://futureinsight.blog).

# Contact Us: 
If you have any questions, please contact
## Future Insight:
- [Email](mailto:fututeinsight@gmail.com)
## Author:
### Abdul Rafay:
- [Email](mailto:99marafay@gmail.com)
- [Personal-Website](https://rafay99.info)
- [GitHub](github.com/rafay99-epic) 


# Thumbnail:
![image](/images/2023/Web-Development/web-scrapper/web-scrapper.png)
