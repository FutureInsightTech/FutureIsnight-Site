---
title: "Writing Blogs: Join Us!"
date: 2023-06-21T17:11:24+05:00
draft: false
type: "page"
url: /Future-Insight-Wiki/StartBlogging/
---

If you love writing blogs, we invite you to join us and contribute your valuable insights. Here's a guide on how to get started:

## Getting the File:

To access the file, follow these steps:

1. Clone or fork the repository.
2. Switch to the "Blog" branch using the command: `git checkout Blog`.
3. Now, you can create a new blog post by following this guide.

## Creating a New Blog Post:

1. Open your terminal.
2. Run the following command to execute the script:
   ```bash
   ./blog_post_generator.sh
   ```
3. You can find the script in the main folder of the repository.
4. The script will prompt you with a series of questions about your blog post and generate a new blog post accordingly.
5. Once your blog post is created, you can open the file in your preferred text editor and start writing your blog.

The new blog post will be created in the "content" folder with your specified tags and blog post name. Open the file and start writing your blog using Markdown format.

**Note**: If you are new to Markdown, you can refer to the [Markdown Guide](https://www.markdownguide.org/cheat-sheet/) for a quick reference.

## Important Things to Consider:

1. Provide the URL of your blog on the top of the file.
2. Enter the title of your blog.
3. Fill in your name in the author section.
4. Add a thumbnail image in the "static" folder.
5. Include images in your blog using the following syntax: `![Image Name](/image-name.png)`.
6. To view the blog on your local machine, change the "draft" field from "true" to "false".

## Updating the Credit Section:

In the blog post, please ensure to change the name in the credit section to properly attribute the author. Replace the placeholder with your name or the desired name you want to be credited.

## Running Locally:

To run and check out your work on the Future Insight website locally, follow these steps:

1. Open your terminal or command prompt.

2. Navigate to the project's root directory using the `cd` command:
   ```bash
   cd /path/to/Future-Insight
   ```

3. Start the Hugo server by running the following command:
   ```bash
   hugo server
   ```

4. After executing the command, you should see output similar to the following:
   ```bash
   ...
   Web Server is available at //localhost:1313/ (bind address 127.0.0.1)
   ...
   ```

5. Open your preferred web browser and enter the following URL:
   ```
   http://localhost:1313/
   ```

6. The Future Insight website will now be running locally on your machine. You can explore the different pages, navigate through the site, and interact with its features.

7. As you make changes to the code or content, the Hugo server will automatically rebuild the site, and you can see the updates by refreshing your browser.

By running the website locally, you can test and preview your changes before deploying them to a live environment. This allows you to ensure everything looks and functions as intended. Enjoy exploring your work on the Future Insight website!

## Preview:
### Terminal Commands:
Terminal Command to run hugo server
![image](/images/doc_images/hugo_command.png)
### Local Server:
Browser view of the local server and port Number
![image](/images/doc_images/local-server.png)
## Submitting the Blog:

You can submit your blog by creating a pull request to the "Blog" branch. Follow these steps:

1. Use the following commands in your terminal:
   ```bash
   git add *
   git commit -m "Your Commit Message"
   git push
   ```
2. Alternatively, you can run the script called "run.sh" located in the main folder.
   ```bash
   ./git_commit.sh
   ```
   The script will prompt you with questions and upload your blog post to GitHub.
   
After creating the pull request from the "Blog" branch to the main repository, our team will review your blog post. If you have any doubts, feel free to ask in the issue section on GitHub or contact us via email.

Please refer to the documentation for the "git_commit" script to make any necessary improvements and enhancements. Happy blogging!

**Note:** 
To read about the script, refer to the documentation of [Blog generator Script](/Instruction/Write-blog.md).