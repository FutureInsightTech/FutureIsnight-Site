---
title: "2023 JavaScript Updates: Enhancements Empowering Web Development"
date: 2024-01-02T23:20:30+05:00
draft: false
type: "post"
tags: ["blog" ,"web-development"]
description: "Check out these new things in JavaScript"
showTableOfContents: true
url: /web-development/2023-javascript-updates
image: "/images/2024/Web-Development/js-new-things/thumbnail.png"
---

<link rel="stylesheet" href="/css/reference-content/reference-content.css">

<style>
.video-container {
  position: relative;
  padding-bottom: 56.25%; 
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
As we bid farewell to this year, JavaScript unveils its latest update, presenting innovations I haven't explored in a while. In this blog post, I'll delve into the advancements that have enhanced JavaScript, making it a more powerful and refined language. Are you ready to discover something new? Let's dive in!

# Features
In the recent updates to JavaScript, several noteworthy changes have emerged, simplifying the development process and enhancing practical application. Among these, a few standout features include:

1. **groupBy:** This function enables the grouping of elements, streamlining data organization and manipulation.
  
2. **toSorted, toSpliced, and toReversed:** These methods offer streamlined operations for sorting, splicing, and reversing arrays, enhancing the efficiency of data manipulation.

3. **New HTML:** There have been introductions of new HTML functionalities, enriching the language's capabilities and expanding possibilities for web development.

4. **iOS Web Push:** The inclusion of iOS Web Push functionality opens doors for better engagement and communication possibilities within web applications on iOS devices.

These additions in JavaScript bring about considerable ease and efficiency in real-life development applications. While there are numerous other updates, these mentioned features notably contribute to a more streamlined and practical approach to JavaScript development.


## groupBy 
Every year, new language features get standardized in ECMAScript, at which point they’re implemented in browsers. One of my favourite new features this year is object groupBy.

Imagine you have an array of objects where the objects share a similar schema. These might be records from a database where every object has a field of age.

You can use groupBy to separate the children from the adults by defining a function that groups anyone under 21 into children and anyone over that into adults.


![image](/images/2024/Web-Development/js-new-things/app-code.png)

The end result is an object organized into groups.

### Code Base
```js
const pp1= [
    {name: 'Peter', age: 2},
    {name: 'Tony', age: 19},
    {name: 'Bruce', age:65},
];

function adults({age}){
    if(age >= 21){
        return 'adults';
    }
    else{
        return 'children';
    }
};

const organized = Object.groupBy(pp1, adults);
console.log(organized);

```


## toSorted, toSpliced, toReversed

This is a cool little utility that I use when working with arrays in JavaScript. There are multiple ways to sort, splice, and reverse arrays in JavaScript, but this utility wasn't built-in initially. Now, it's available in JavaScript.

Along with toSpliced and toReversed. JavaScript already had methods for sorting and reversing, but the problem is that they mutate the original array in place.

And that’s confusing because other methods like map and filter don’t do that. Instead, they copy the array and return a new one.

With these methods, you can now sort, reverse, and splice an array by treating the original as an immutable value, which tends to be the more sane way to write your code.

Here is the output

![image](/images/2024/Web-Development/js-new-things/output.png)

### Code Base

```js

const months = ["Mar", "Jan", "Feb", "Dec"];
const sortedMonths = months.toSorted();
console.log(sortedMonths); // ['Dec', 'Feb', 'Jan', 'Mar']
console.log(months); // ['Mar', 'Jan', 'Feb', 'Dec']

const values = [1, 10, 21, 2];
const sortedValues = values.toSorted((a, b) => a - b);
console.log(sortedValues); // [1, 2, 10, 21]
console.log(values); // [1, 10, 21, 2]

```

## New HTML
Web developers received some exciting updates through brand-new HTML elements. While the search tag offers a more semantic definition for a website's search box, it can effectively substitute the more generic form tag.

However, the dialogue element stands out as considerably more potent. It grants the capability to create genuine modal dialogues and subsequently manage them using JavaScript through inherent methods like show modal and close.

## ISO Web Notification
Push notifications are one of the best things; they're how an application tells its users that something important has happened. It's an important feature of every application, and if you are a web developer, pushing notifications is a nightmare, just because of the overall notification work in JavaScript. We can send notifications on Android applications and web applications using JavaScript, but not on iOS. You can send notifications to iOS devices using JavaScript.

After years of begging and pleading with Apple, IOS finally allows push notifications to come from web apps. And that’s a huge win for the .0001 % of website users who allow websites to send them push notifications, which is most likely your grandpa who accidentally clicked the allow button and now has no idea how to turn it off.


# Conclusion

The latest advancements unveiled in JavaScript mark a significant stride towards a more powerful and refined programming experience. From innovative features like groupBy that streamline data organization to the convenience offered by toSorted, toSpliced, and toReversed for array manipulation, JavaScript emerges as a more versatile language for developers.

Moreover, the introduction of new HTML elements, such as the more semantic search tag and the dynamic dialogue element, propels web development possibilities to new heights. These additions enable developers to craft more efficient and user-centric web experiences.

The inclusion of iOS Web Push in JavaScript broadens the horizons for communication and engagement within web applications, even on Apple devices, marking a significant step forward in user interaction.

As we bid farewell to this year, it's evident that JavaScript and HTML continue to evolve, offering developers an array of tools and functionalities to craft innovative, efficient, and engaging web solutions. Let's embrace these advancements and continue to explore the endless possibilities they bring to our development journey.

Cheers to a future filled with limitless creativity and possibilities in web development!
With that, we will see you next time.❤️❤️

# Credit
This article was written by [Abdul Rafay](https://future-insight.blog/author) and published on [Future Insight](https://future-insight.blog/).

# Contact Us 
If you encounter any issues or have any questions regarding any of the articles on this website, please do not hesitate to contact the website's support team. Your feedback is important and the team is dedicated to providing prompt and effective assistance to ensure a positive user experience.

To access the contact page, simply click on the "Contact" tab in the navigation menu or visit the following URL: [contact page](https://future-insight.blog/contact). From there, you can fill out a contact form or find additional information on how to get in touch with the support team.

Don't let any questions or concerns go unanswered - reach out to the support team for help and guidance. They are committed to providing excellent customer service and will do everything possible to ensure that you have a seamless experience on the website.


# Supporting Materials
Here are all the links and references that I used to write this blog, so feel free to visit them to get some more help.
## Knowledge Nexus
<div class="cards-container">
  <a class="card" href="https://dev.to/johnrushx/21-mind-blowing-web-features-you-probably-havent-heard-of-2b77">
    <img src="/images/content-icons/19197011.jpg" alt="Article 1">
    <h3 class="title">Article 1</h3>
  </a>
  <a class="card" href="https://medium.com/@imransheikho0306/10-javascript-changes-you-missed-in-2023-71252c44ede9">
    <img src="/images/content-icons/20944335.jpg" alt="Article 2">
    <h3 class="title">Article 2</h3>
  </a>
  <a class="card" href="https://blog.saeloun.com/2023/08/11/2023-ECMAScript-2023-new-features/">
    <img src="/images/content-icons/2936024.jpg" alt="Article 3">
    <h3 class="title">Article 3</h3>
  </a>
</div>

# Thumbnail
![image](/images/2024/Web-Development/js-new-things/thumbnail.png)
<!-- ## Video Walkthrough

<div class="video-container">
  <iframe width="800" height="450" src="https://www.youtube.com/embed/YT-LINK" frameborder="1" allowfullscreen></iframe>
</div> -->
