---
title: "Google Develops Quantum-Safe Security Keys"
date: 2023-11-07T11:52:32+05:00
draft: false
type: "post"
tags: ["blog" ,"MultiVerse-Insights"]
description: "A professional-grade authentication method gets a makeover fit for the quantum age."
showTableOfContents: true
url: /multiverse-insights/google-security-drive/
image: "/images/2023/MultiVerse-Insights/GoogleDevelops/thumbnail-google.png"
---

<link rel="stylesheet" href="/css/reference-content/reference-content.css">

-----------

# Cyber Security
There’s a race on to update the cybersecurity infrastructure before quantum computers become capable of cracking the current standards. 
Now Google has developed a quantum-resilient way of implementing the FIDO2 security key standard, an increasingly popular method of authentication that’s used as an alternative to passwords.

#  Security Keys
Security keys, like passwords, help users prove their identity so they can authenticate to digital services. But unlike passwords, security keys are unlikely to be compromised because they are physical devices built for the sole purpose of performing authentication. They are the size of USB sticks, and they plug into secondary devices like laptops when users need to perform authentication. Security keys are resistant to phishing attacks because they work in two directions: They help users authenticate services, and they authenticate users to services. Because authentication happens on a separate device that’s engineered to be hard to compromise, these keys are generally quite secure.

“Whenever you have a website that supports FIDO2 authentication, you can use your security key,” said quantum security researcher Tommaso Gagliardoni, who works at Kudelsky Security. “It’s still a very small number of people who are using that, but among security professionals I think they are becoming more and more common.”

# Services
Services are slowly adding support for security keys, starting with the big operators like Google, Microsoft, and Facebook. Drawbacks include their cost—most other forms of authentication are free—and the potential for users to misplace their security keys and need to replace them.

> Google took a hybrid approach that combines a traditional public-key cryptography algorithm with Dilithium for authentication.

# Public Keys
Public-key cryptography is the technology that makes security keys possible, by providing the proof-of-identity logic to authenticate users and services using digital signatures. That technology is also what makes security keys vulnerable to quantum attacks, because ultimately, quantum computers will break all current forms of public-key cryptography, researchers say.

# Google’s implementation
Google’s implementation uses one of the post-quantum cryptography algorithms approved by the National Institute of Standards and Technology (NIST) for standardization last year. The algorithm, called Dilithium, is designed specifically for digital signatures. Because Dilithium is not yet an official standard and has not long been in use under real-world conditions, Google took a hybrid approach that combines a traditional public-key cryptography algorithm with Dilithium for authentication.

Gagliardoni said Google’s biggest contribution is in finding a way to optimize the Dilithium algorithm so that it can run on the hardware of a typical security key, which has limited memory and processing power.

> “If you take the implementation of the quantum-resistant scheme as it is published by NIST and you try to put it in hardware, it will not work because it will require too much memory,” 

he said. To make it work, Google reduced the amount of memory Dilithium is supposed to run on in exchange for a slightly slower operation. David Turner, senior director of standards development at FIDO Alliance, which manages password-free authentication standards, said postquantum changes to security keys are expected to come with challenges. In order to create a more secure connection, new algorithms could increase the complexity of authentication protocols and require a longer time to process the authentication.

Google’s implementation still lacks a protection against side-channel attacks, Gagliardoni said. That’s where hackers break the cryptography by gaining direct physical access to the security keys. A stereotypical side-channel attack might involve a hacker breaking into the hotel room of a target and hacking into their security key left unguarded on a desk, stealing their target’s digital signature, then leaving the key intact without the target ever knowing. Google’s implementation ignores those types of local threats and focuses only on remote attacks—which makes some sense because it would be difficult to sneak a quantum computer into a hotel room.


# Conclusion
The implementation was released through Google’s open-source project for security keys, OpenSK. Many platforms that rely on public-key cryptography will soon need to make the transition to postquantum algorithms, particularly platforms that handle highly sensitive encrypted information and important services that have long life spans, such as satellites. Services and data with long life spans are vulnerable to quantum attacks even if threats take decades to materialize, which is why they should be prioritized. Security keys can be in use for many years but are only just gaining in popularity, so they are a good early choice for transitioning.

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
  <a class="card" href="https://spectrum.ieee.org/fido2-security-key">
    <img src="/images/content-icons/19197011.jpg" alt="Article 1">
    <h3 class="title">Article 1</h3>
  </a>
</div>

## Thunmbnail
![image](/images/2023/MultiVerse-Insights/GoogleDevelops/thumbnail-google.png)
