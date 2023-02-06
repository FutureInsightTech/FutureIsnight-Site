---
title: "Web Scrapper"
date: 2023-01-28T16:09:03+05:00
draft: false
type: "post"
tags: ["blog" ,"Web Development"]
description: "Using the Power of JavaScript we will Build a web Scrapper to get some informations"
showTableOfContents: true
url: /web-scrapper/
---


# Introducation
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
``` shell
brew install node
```
#### Linux:
##### Debian/Ubuntu:
To install on ubuntu or Debian then open a terminala nd then enter the following commands.
```shell
sudo apt-get install nodejs npm
```
##### Arch Linux:
If you are using arch Linux then open a terminal and then enter the following command.
```shell
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

``` node
npm install puppeteer
```
Once you have installed Puppeteer, you can create a new file with the following code to launch a headless Chrome browser:


```node

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


``` Node
const data = await page.$eval("div.data-class", (el) => el.innerText);
console.log(data);
```
This code selects a div element with a data-class class and retrieves its inner text. You can use this method to extract any data from the website that you need.

# Conclusion

Web scraping with JavaScript is a powerful tool for extracting data from websites. With Puppeteer, you can automate the Chrome browser and extract data from websites with ease. Whether you're using the data for market research, competitor analysis, or lead generation, web scraping can provide you with valuable insights into your business or industry.

![image](/images/web-scrapper/web-scrapper.png)



<!-- # Introducation:
So, I have been working in the field of machine learning and web development for a while, and I am still looking for great options. To get more options, I need to see what is out there.

So to get what I want, I need to send emails and gather data so that I can apply for different jobs and see what's out there. So I need data, and I can get data by going to the multiple websites and applying one by one. It's hard, and I don't want to work like that.

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
``` shell
brew install node
```
#### Linux:
##### Debian/Ubuntu:
To install on ubuntu or Debian then open a terminala nd then enter the following commands.
```shell
sudo apt-get install nodejs npm
```
##### Arch Linux:
If you are using arch Linux then open a terminal and then enter the following command.
```shell
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

# A Web Scraper
So this is the main deal I will be designing a web scrapper, I will be hosting all of my code on [GitHub](https://github.com/rafay99-epic). The Job of this Web Scrapper is to get a couple of information from the given website and then store them in the form of json file pattern. The data will be stored in a variable for now but later it will saved in an excel shell, where it'll be stored.


So for this Project I will using **thee** npm packages and those packages are stated bellow:

1. Express
2. Axios
3. Cherio

## Whole Story:
So the entire process will be as follows: I will obtain website code, and once I have the code in HTML, I will search for specific things in that code, and once the entire website has been searched, I will store all the relative data into a variable.

All the data from the variable will be stored in the form of JSON, and then the JSON will be saved into the Excel sheet.

## Starting An NPM Project
### Crearing a Project
So in order to create a node application, you need to open your terminal and then enter the following command:
```shell
npm init
```
Once you have entered the command then You need to answer a couple questions about the project. Once you have answer the question then a packages.json file will be created. 
### Installing Package
Now we can start installing packages from npm.
#### Downloading Package: Express
So in order to create a node application, you need to open your terminal and then enter the following command:
```node
npm install express
```
#### Downloading Package: Cherio
So in order to create a node application, you need to open your terminal and then enter the following command:
```node
npm install cherio
```
#### Downloading Package: Axios
So in order to create a node application, you need to open your terminal and then enter the following command:
```node
npm install axios
```
### Creating Files:
Now we need to creat some javaScript files that will contain our code. So enter the following command into your terminal
```shell
touch index.js
```
Once this command is executed then a file will be created called **index.js**

### Coding time:
Now it's time to code the application.
```javascript
//Loading the express for application
const port= 5000;
const express = require("express");
const axios= require("axios");
const cherrio= require("cheerio");


// Using express for run the application
var app = express();

//The url of different website
const url= "https://www.pakistanlawsite.com/Login/MainPage";


//axio will get the html data from the url
axios(url)
        .then(respond =>{
              const html_code= respond.data
              console.log(html_code);
  });



app.listen(port,()=>{
    console.log("The server is running on port:" + port)
});


``` -->









