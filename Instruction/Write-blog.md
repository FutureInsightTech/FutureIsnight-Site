# Writting Blog:
If you love to write blog, Join us. 

# Getting the File:
First you need to get the file from the github. To do that follow this guide.
1. Clone the repo or Fork it.
2. Switch to Blog branch using this command ```git checkout Blog```.
3. Create a new Blog Post using this command ```hugo new post/year/tag/your-blog-name.md```.
**Note: Enter the Year, Right Now there are three tags, 1. machine-learning, 2. essential-skills 3.Web-Development**
- Example would be ```hugo new post/2023/machine-learning/Big-o.md```.
4. New Blog will be created in the content folder with your tag and blog post name.
5. Open the file and write your blog in MarkDown format.

If you are new to MarkDown, you can learn it from [here](https://www.markdownguide.org/cheat-sheet/).

# Important Things:
1. Need to your url in on the Top of the file.
2. Enter the Title of the Blog.
3. Enter your Name in the Author Section.
4. Add some kind of thubnail image in the static folder.
5. Add the image in the blog using this syntax ```![Image Name](/image-name.png)```.

# Submitting the Blog:
You can submit the blog by creating a pull request to the Blog branch.
To do that enter the following command into the terminal.
```
git add * 
git commit -m "Your Commit Message"
git push 
```
- In order to create a pull request, you need to go to the github repo and click on the pull request button.
- Also, you can create a pull request from the terminal using this command ```git pull origin Blog```.
- If you have any doubt, you can ask in the issue section on Github or Email Me.