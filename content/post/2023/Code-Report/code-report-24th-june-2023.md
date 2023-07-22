---
title: "Code Report: 24th June 2023"
date: 2023-06-24T22:51:59+05:00
draft: false
type: "post"
tags: ["blog" ,"code-report"]
description: "This is the code report for 24th June 2023"
showTableOfContents: true
url: /code-report/24th-June-2023/
image: "/images/2023/code-report/2023/24th-june/red-hat.png"
---
<link rel="stylesheet" href="/css/reference-content/reference-content.css">
-----------

Today, on June 24th, 2023, an unexpected and deeply saddening event took place within the Linux community. Red Hat Linux, known for its open-source nature, has made the surprising decision to transition to a closed-source, proprietary model.

This announcement raises several crucial questions:

1. What is closed-source software?
2. What is the significance of Red Hat Linux?
3. What actions are they taking?
4. What is the problem?
5. Should i be worry?
6. But what about licensing? 
7. Where do we go from here? 

In this report, we will explore these questions and attempt to comprehend the broader implications of this significant development.

# What is Closed Source Software? 
Closed-source software, also known as proprietary software, refers to computer programs whose source code is not freely available or accessible to the public. In this model, the source code, which is the human-readable instructions that make up the software, is kept private and controlled by the company or organization that developed it.

In closed-source software, users are typically provided with executable or compiled versions of the software, which they can install and use, but they do not have access to the underlying source code. This means that users cannot view, modify, or distribute the source code of closed-source software without explicit permission from the software's owner.

Closed-source software is often developed by commercial entities who retain exclusive rights over the software and its distribution. This allows the company to protect their intellectual property, maintain control over the software's development, and potentially generate revenue through licensing or sales.

***Examples*** 
Exmaple of closed-source software include proprietary operating systems like Microsoft Windows and macOS, as well as commercial applications like Adobe Photoshop and Microsoft Office.

# What is the significant of Red Hat Linux?
Red Hat is a software company that combines open source Linux operating system components with related programs into a distribution package that customers can order.

The Red Hat business model is based on an open source ecosystem, where collaborative development occurs within a community of professionals focused on providing quality assurance, testing and customer support.

Red Hat offers a variety of open source software that DevOps engineers and businesses use. These include operating system platforms, storage, middleware, management products, as well as training, support and consulting services.

Currently, Dell, IBM and Oracle support the Red Hat platform and open source community of applications.

# What actions are they taking?

Red Hat has announced it will be limiting public access to Red Hat Enterprise Linux (RHEL) source code to CentOS Stream.

The move will make CentOS Stream the sole repository for public RHEL-related source code releases, according to the company. 

Paying customers will still have access to source code via the Red Hat Customer Portal.

Public sources for RHEL had been pushed to git.centos.org by Red Hat, maintained even after the focus of the CentOS project was shifted to CentOS Stream. The latest announcement indicates that this will no longer be the case.

<div style="display: flex; justify-content: center;">
    <blockquote class="twitter-tweet" data-lang="en" data-dnt="true" data-theme="dark">
        <p lang="en" dir="ltr">Redhat RHEL 9 going closed source? At least public... probably still get source if you have an active redhat subscription. <br>Probably means the death of Rocky, Alma, and Oracle Linux though... 
        <a href="https://t.co/1QiM1mDuSO">https://t.co/1QiM1mDuSO</a>
        </p>&mdash; Chris Titus Tech (@christitustech) 
        <a href="https://twitter.com/christitustech/status/1671758445966512130?ref_src=twsrc%5Etfw">June 22, 2023</a>
    </blockquote>
    <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>
</div>

“The engagement around CentOS Stream,” said Red Hat, “the engineering levels of investment, and the new priorities we’re addressing for customers and partners now make maintaining separate, redundant, repositories inefficient”.

Two years ago, the decision was made to move from CentOS - which was effectively a free version of RHEL - to CentOS Stream, the development branch.

That change caused anguish for some in the community who were accustomed to having access to a free version of RHEL - without Red Hat support. 

CentOS tracked RHEL closely while CentOS Stream is development code and so not necessarily suited to production workloads.

The change also spawned a number of distributions. For example, Alma Linux and Rocky Linux, aim for 1:1 binary compatibility with RHEL as replacements for CentOS. 

The removal of public access to the RHEL source as per Red Hat’s announcement will make maintaining these distributions challenging.

***You can read more details about this announcement by clicking here to visit the Red Hat blog post: [Red Hat Blog Post](https://www.redhat.com/en/blog/furthering-evolution-centos-stream?sc_cid=701f2000000tyBjAAI)***

# Why is this a problem?
In a word, compatibility. Distributions that are binary compatible with RHEL currently make use of the RHEL source. 

While the content of CentOS Stream will, by design, make its way into future versions of RHEL, maintaining 1:1 binary compatibility with existing releases without access to the source used will present a challenge.

# Should this worry me?
It all depends on if you are a paying RHEL customer or not. If you have opted to use one of the compatible distributions to replace CentOS then yes, things could change in the future as the RHEL-compatible distributions get to grips with the change.

However, even after all the furor over recent years, CentOS 7 - which is based on RHEL 7 - continues to be maintained and has over a year of support remaining.

# But what about licensing? 
RHEL is licensed under several open source licenses, including the GNU General Public License. 

However, Red Hat’s change does not violate the GPL and the source code will remain available via the customer portal.

# Where do we go from here?
It is difficult to see this change as anything other than an attempt by Red Hat to make life more difficult for the RHEL clones, although the company itself said “we want to sharpen our focus on CentOS Stream as the backbone of enterprise Linux innovation”.

“We are continuing our investment in and increasing our commitment to CentOS Stream.”

# Conclusion
In Pakistan, if you are a casual Linux user, this announcement may not have a significant impact on you. However, if you are a business relying on Red Hat software, the transition to closed-source may pose challenges. The extent of the impact is yet to be determined, and it remains to be seen how the community will respond and find solutions to mitigate any potential issues. The future will shed light on how things unfold in response to this development.

With that, we will see you next time.❤️❤️

# Credit
This article was written by [Abdul Rafay](https://future-insight.blog/author) and published on [Future Insight](https://future-insight.blog/).

# Contact Us
If you encounter any issues or have any questions regarding any of the articles on this website, please do not hesitate to contact the website's support team. Your feedback is important and the team is dedicated to providing prompt and effective assistance to ensure a positive user experience.

To access the contact page, simply click on the "Contact" tab in the navigation menu or visit the following URL: [contact page](https://future-insight.blog/contact). From there, you can fill out a contact form or find additional information on how to get in touch with the support team.

Don't let any questions or concerns go unanswered - reach out to the support team for help and guidance. They are committed to providing excellent customer service and will do everything possible to ensure that you have a seamless experience on the website.


# Supporting Materials
Here are all of the links and references that I used to write this blog, so feel free to visit them to get some more help.
## Knowledge Nexus

<div class="cards-container">
  <a class="card" href="https://news.itsfoss.com/red-hat-restricts-source-code/">
    <img src="/images/content-icons/19197011.jpg" alt="Article 1">
    <h3 class="title">Article 1</h3>
  </a>
  
  <a class="card" href="https://www.itpro.com/software/open-source/what-red-hats-source-code-restrictions-mean-for-businesses">
    <img src="/images/content-icons/20944335.jpg" alt="Article 2">
    <h3 class="title">Article 2</h3>
  </a>
  
</div>

# Thumbnail
![Thumbnail](/images/2023/code-report/2023/24th-june/red-hat.png)

<!-- ## WalkThrough Video: -->
<!-- <iframe width="800" height="450" src="https://www.youtube.com/embed/YT-link" frameborder="1" allowfullscreen></iframe> -->