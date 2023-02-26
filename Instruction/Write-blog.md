# Writting Blog:
If you love to write blog, Join us. 

# Getting the File:
First you need to get the file from the github. To do that follow this guide.
1. Clone the repo or Fork it.
2. Switch to Blog branch using this command ```git checkout Blog```.
3. Now you want to create a new blog Post. To do that Just follow this  guide.
    - Open your Terminal.
    - Enter this command to run this script
        ```bash
        sh start-blog.sh
        ```
    - You can find this script in the main folder. 
    - This script will ask you butch of questions about your blog post and will create a new blog post accordingly.
    - Your blog post is created then it will ask you to run the server.

4. New Blog will be created in the content folder with your tag and blog post name.
5. Open the file and write your blog in MarkDown format.

Note: 
If you are new to MarkDown, you can learn it from [here](https://www.markdownguide.org/cheat-sheet/). 

# Important Things:
1. Need to your url in on the Top of the file.
2. Enter the Title of the Blog.
3. Enter your Name in the Author Section.
4. Add some kind of thubnail image in the static folder.
5. Add the image in the blog using this syntax ```![Image Name](/image-name.png)```.
6. To see the blog on your local machine, please change the draft from true to false.

# Submitting the Blog:
You can submit the blog by creating a pull request to the Blog branch.
To do that enter the following command into the terminal.
```bash
git add * 
git commit -m "Your Commit Message"
git push 
```

OR

- You can run this script called **run.sh**.
    - You can run this script by entering the following command
    ```bash
    sh run.sh
    ```
    - The script can be found in the main folder.

    
- This script will ask you butch of questions and upload your blog post to github. 
- After that all you need to create a pull request from blog branch to Main repository.

- If you have any doubt, you can ask in the issue section on Github or Email Me.