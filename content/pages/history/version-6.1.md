---
# title: "Version 6.1"
date: 2023-06-17T02:11:45+05:00
draft: false
type: "page"
url: /building-legacy/version-6.1/
---
# Version 6.1
## Code Improvement: Performance Optimization and Code Cleanup

## Problems:
There are two main issues in the codebase that need to be addressed:
1. Repeating Height for Every Service Page.
2. Handling Height and Mobile View Detection.

## 1. Repeating CSS Files:
In the previous codebase, the CSS for the price table in the service pages was repeated for each page due to the changing height attribute. This resulted in multiple CSS files for each service page, negatively impacting performance.

### Solution:
To solve this problem, we can refactor the code and introduce a JavaScript file called "height.js" that handles the dynamic height and mobile view detection logic.

- In "height.js", we can implement functions to:
   - Modify the height of the price table using the `data-height` attribute passed to the function.
   - Detect multiple screen sizes and, if the screen size is for a mobile device, set the height according to the mobile view using the `data-height` attribute.

## 2. Mobile View Handling:
In the previous codebase, mobile view was managed using CSS media queries, but now it has been shifted to JavaScript. JavaScript will detect the screen size and set the height for the mobile view based on the height of the price card.

## Code Cleanup:
In addition to the above improvements, we can perform some code cleanup:

- Remove unrelated CSS files from the codebase since the logic is now handled by JavaScript.
- Add comments to make the code more readable and enhance understanding.
- Include the previous version of the commented code for reference.
- Implement error handling to gracefully handle any potential errors that may occur.

By addressing these improvements, we can optimize the performance of the website, remove unnecessary files, and make the code more maintainable and readable.