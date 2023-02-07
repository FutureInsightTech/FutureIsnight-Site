---
title: "Support Vector Machine"
date: 2023-02-07T20:13:50+05:00
draft: true
type: "post"
tags: ["blog" ,"machine learning"]
description: ""
showTableOfContents: true
url: /Support-Vector-Machine/
---
# Introduction:
So you are working on text identification or face detection, and the question that arises is which algorithm to use and what will be the performance.

I am doing a project where I need to use SVM for detecting cyber attacks, but in order to identify them, I need to learn what makes this algorithm so good. For this project, I will be learning the basics of SVM with real-world examples, and once we are done with the examples, we will try the real project.

# What is SVM?
 Before we begin, we should understand what SVM is. In my opinion, SVM is a machine learning model that can be used for classification or regression problems.

What exactly is classfication and regression? In simpliest term Regression alogrothium is when there is a relatin between two variable, **for example** the price house and the size of the house. Classfication alogrothium are those alogo that will find a function and then using that function dvide the data set into two main parts, then alog will train on that sub data set and will identify the 0 value or 1 value. 

A support vector machine (SVM) is a supervised machine learning model that uses classification algorithms for two-group classification problems. After giving an SVM model sets of labeled training data for each category, they’re able to categorize new text.

# How does SVM Work? 
The basics of the support vector machine and how it will work can be easily explained with an example. Consider a data set that contains two features, x and y, each represented by a different colour (red or blue) and each with its own shape (circle or triangle, respectively). Now we will plot the dataset, and we will get this graph.
![image](/images/Ml-algo/SVM/image-01.png)

A Support Vector Machine tasks those data points and then uses a function called hyperplane to create a best sperate boundary with tags. This line is the **decision boundary**. Everything on the right side is considered blue, and everything on the left side is considered red. 
![image-02](/images/Ml-algo/SVM/image-02.png)
