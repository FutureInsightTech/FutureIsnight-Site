---
title: "Decision Tree Machine Learning Algorithm"
date: 2023-03-17T23:32:50+05:00
draft: false
type: "post"
tags: ["blog" ,"machine-learning"]
description: "Machine Learning Classifer"
showTableOfContents: true
url: /decision-tree/
image: "/images/2023/"
---
<link rel="stylesheet" href="/css/style.css">


# Introduction
I came across a project, and in that project, I have to different machine learning classifiers or machine learning algorithms. I know how to apply them, but it's been a while, so today I did it., We will revisit all of the concepts of the decision tree, from major terms to code implementation.

# Decision Tree
Decision Tree is a Supervised Learning technique that can be used for classification problems and regression problems, but mostly it is used for classification problems.
It is a tree-structured classifier, where internal nodes represent the features of a dataset, branches represent the decision rules, and each leaf node represents the outcome.

In a Decision tree, there are two nodes, which are the Decision Node and Leaf Node. Decision nodes are used to make any decision and have multiple branches, whereas Leaf nodes are the output of those decisions and do not contain any further branches. The decisions or the test are performed on the basis of features of the given dataset.

It is a graphical representation for getting all the possible solutions to a problem/decision based on given conditions. It is called a decision tree because, similar to a tree, it starts with the root node, which expands on further branches and constructs a tree-like structure.

In order to build a tree, we use the CART algorithm, which stands for Classification and Regression Tree algorithm. A decision tree simply asks a question, and based on the answer (Yes/No), it further split the tree into subtrees.

# Simple Explain:

A decision tree is a flowchart-like structure in which each internal node represents a test on a feature (e.g. whether a coin flip comes up heads or tails) , each leaf node represents a class label (decision taken after computing all features) and branches represent conjunctions of features that lead to those class labels. The paths from root to leaf represent classification rules. Below diagram illustrate the basic flow of decision tree for decision making with labels (Rain(Yes), No Rain(No)).

<img src="https://miro.medium.com/v2/resize:fit:700/0*PB7MYQfzyaLaTp1n"/>


Decision tree is one of the predictive modelling approaches used in statistics, data mining and machine learning.

Decision trees are constructed via an algorithmic approach that identifies ways to split a data set based on different conditions. It is one of the most widely used and practical methods for supervised learning. Decision Trees are a non-parametric supervised learning method used for both classification and regression tasks.

Tree models where the target variable can take a discrete set of values are called classification trees. Decision trees where the target variable can take continuous values (typically real numbers) are called regression trees. Classification And Regression Tree (CART) is general term for this.


# Making Decision in Decision Tree
While making decision tree, at each node of tree we ask different type of questions. Based on the asked question we will calculate the information gain corresponding to it.

## Information Gain
Information gain is used to decide which feature to split on at each step in building the tree. Simplicity is best, so we want to keep our tree small. To do so, at each step we should choose the split that results in the purest daughter nodes. A commonly used measure of purity is called information. For each node of the tree, the information value measures how much information a feature gives us about the class. The split with the highest information gain will be taken as the first split and the process will continue until all children nodes are pure, or until the information gain is 0.

Algorithm for constructing decision tree usually works top-down, by choosing a variable at each step that best splits the set of items. Different algorithms use different metrices for measuring best.

## Gini Impurity
First let’s understand the meaning of Pure and Impure.

## Pure
Pure means, in a selected sample of dataset all data belongs to same class (PURE).

## Impure
Impure means, data is mixture of different classes.

## Definition of Gini Impurity
Gini Impurity is a measurement of the likelihood of an incorrect classification of a new instance of a random variable, if that new instance were randomly classified according to the distribution of class labels from the data set.

If our dataset is Pure then likelihood of incorrect classification is 0. If our sample is mixture of different classes then likelihood of incorrect classification will be high.


# Advantage of Decision Tree

- Easy to use and understand.
- Can handle both categorical and numerical data.
- Resistant to outliers, hence require little data preprocessing.

# Disadvantage of Decision Tree

- Prone to overfitting.
- Require some kind of measurement as to how well they are doing.
- Need to be careful with parameter tuning.
- Can create biased learned trees if some classes dominate.

# Avoid  Stop Overfitting in Decision Tree
Overfitting is one of the major problem for every model in machine learning. If model is overfitted it will poorly generalized to new samples. To avoid decision tree from overfitting we remove the branches that make use of features having low importance. This method is called as Pruning or post-pruning. This way we will reduce the complexity of tree, and hence imroves predictive accuracy by the reduction of overfitting.

Pruning should reduce the size of a learning tree without reducing predictive accuracy as measured by a cross-validation set. There are 2 major Pruning techniques.

- **Minimum Error**: The tree is pruned back to the point where the cross-validated error is a minimum.
- **Smallest Tree**: The tree is pruned back slightly further than the minimum error. Technically the pruning creates a decision tree with cross-validation error within 1 standard error of the minimum error.

# Early Stop or Pre-pruning
An alternative method to prevent overfitting is to try and stop the tree-building process early, before it produces leaves with very small samples. This heuristic is known as early stopping but is also sometimes known as pre-pruning decision trees.

At each stage of splitting the tree, we check the cross-validation error. If the error does not decrease significantly enough then we stop. Early stopping may underfit by stopping too early. The current split may be of little benefit, but having made it, subsequent splits more significantly reduce the error.

Early stopping and pruning can be used together, separately, or not at all. Post pruning decision trees is more mathematically rigorous, finding a tree at least as good as early stopping. Early stopping is a quick fix heuristic. If used together with pruning, early stopping may save time.

# Implementation: 

# Conclusion:
In conclusion, a decision tree is a powerful tool for making decisions based on data. It is a visual representation of a decision-making process that allows us to weigh the consequences of different choices and select the best course of action. Decision trees are widely used in fields such as business, finance, healthcare, and engineering to solve complex problems and optimize decision-making. By breaking down a problem into smaller, more manageable parts, decision trees help us identify the most important factors that influence our decisions and find the optimal solution. However, it is important to keep in mind that decision trees are only as good as the data that they are based on, and the accuracy of their predictions depends on the quality and quantity of the data used. With careful planning and analysis, decision trees can be a valuable tool for making informed decisions and achieving desired outcomes.

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

## Video References:
- [Video Reference 1]()
# Thumbnail:
![image](/images/2023/)

