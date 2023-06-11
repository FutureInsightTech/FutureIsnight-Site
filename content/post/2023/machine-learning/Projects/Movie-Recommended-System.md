---
title: "Movie Recommended System"
date: 2023-04-30T22:31:36+05:00
draft: true
type: "post"
tags: ["blog" ,"machine-leaarning"]
description: " Build Movie Recommended System"
showTableOfContents: true
url: /build-movie-recommended-system/
image: "/images/2023/"
---

---
I always want to build a recommended system to practise my skills and make sure that I won't forget what I have learned in the past 2 years. So in this blog, I will be going through the plan and building a recommended system. I will be using a public dataset, which will be linked up in the references section of this blog.


# Basic info
Before we begin, there are a couple of important things that you should know about. First, what is a recommended system? How many types of recommended systems are there? How much data is required for this project? , How to deploy this machine learning model with a proper GUI as well. All of these questions will be answered below.

## What is a Recommended System?
Recommended systems use various algorithms and techniques, such as collaborative filtering, content-based filtering, and hybrid approaches, to generate personalized recommendations for users. The goal of a recommended system is to improve user engagement, satisfaction, and ultimately, increase revenue and user retention for the platform.

A recommended system is a computer program that helps suggest things to people, like products or content, based on their past behavior and preferences. It's often used by websites and apps to help users find things they might like and keep them coming back.

## Types of Recommended systems
The two main types of recommended systems are:

1.  **Content-based filtering:** This type of recommended system suggests items that are similar to the items a user has previously liked or interacted with. It works by analyzing the characteristics or attributes of the items, such as keywords, genres, or topics, and recommending items with similar attributes.
  - ***For example***, if a user has liked and watched several science fiction movies, a content-based filtering system will suggest other science fiction movies that share similar characteristics, such as futuristic settings, space travel, and advanced technology.

2. **Collaborative filtering:** This type of recommended system suggests items based on the collective behavior and preferences of similar users. It works by analyzing the past behavior and preferences of multiple users and recommending items that are popular or highly rated among similar users.
 - ***For example***, if a user has liked and purchased several books on cooking, a collaborative filtering system will recommend other books on cooking that are highly rated or popular among users who have similar preferences and behavior

## Data Collection
So, for the upcoming project, a publicly available dataset will be used as the primary source of data, and this dataset can be obtained from various sources such as Kaggle or other data provider websites. However, to ensure the reproducibility and transparency of the project's findings, the specific dataset used for this project will be linked in the reference section of this blog. By providing a direct link to the dataset, the readers can access and use the same data for their own analysis, which can help to promote open data sharing and collaborative research.

# Project Stages:
So the whole Project is divided into 4 parts:
```goat

                                             ┌────────────────────┐
            ┌───────────────────────────────►│    Data Gathering  │
            │                                │                    │
            │                                └─────────┬──────────┘
            │                                          │
            │                                          │
            │                                ┌─────────▼──────────┐
            │                                │  Training Model    │
            │                                │                    │
┌───────────┴─────────┐                      └─────────┬──────────┘
│    Project          │                                │
│                     │                                │
│                     │                      ┌─────────▼───────────┐
└─────────────────────┘                      │ Developing GUI      │
                                             │                     │
                                             └─────────┬───────────┘
                                                       │
                                                       │
                                             ┌─────────▼───────────┐
                                             │ Deploying The UI and│
                                             │ ML Model            │
                                             └─────────────────────┘
```

# Implementation: 


# Conclusion:
With that, we will see you next time.❤️❤️

# Credit:
This article was written by [Abdul Rafay](https://rafay99.info) and published on [Future Insight](https://futureinsight.blog).

# Contact Us: 
If you encounter any issues or have any questions regarding any of the articles on this website, please do not hesitate to contact the website's support team. Your feedback is important and the team is dedicated to providing prompt and effective assistance to ensure a positive user experience.

To access the contact page, simply click on the "Contact" tab in the navigation menu or visit the following URL: [contact page](https://future-insight.blog/contact). From there, you can fill out a contact form or find additional information on how to get in touch with the support team.

Don't let any questions or concerns go unanswered - reach out to the support team for help and guidance. They are committed to providing excellent customer service and will do everything possible to ensure that you have a seamless experience on the website.

# References:
Here are all of the links and references that I used to write this blog, so feel free to visit them to get some more help.
## Articles references:
- [Article 1]()

## GitHub Repository:
- [GitHub Repository 1]()

## WalkThrough Video:
<iframe width="800" height="450" src="https://www.youtube.com/embed/YT-link" frameborder="1" allowfullscreen></iframe>
