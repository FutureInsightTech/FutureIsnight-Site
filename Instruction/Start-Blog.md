# Blog Post Generator

This Bash script, called "Blog Post Generator," is designed to assist you in creating a new blog post quickly and easily. The script is available on GitHub at [https://github.com/rafay99-epic/Future-Insight](https://github.com/rafay99-epic/Future-Insight), and it is authored by Abdul Rafay.

To use the script, you will be prompted to answer a few important questions to generate your blog post. These questions include:

1. Selecting the category
2. Entering the Blog Post Name

Please note that both of these fields are mandatory, and without providing valid inputs, the script will not proceed with creating the blog post.

# Sections of the Script
The script is divided into several sections, each serving a specific role or purpose to help streamline the blog post creation process.

## Section 1: Year Check
This section retrieves the current year from your system, which is used for organizing the blog posts. It ensures that the blog post is assigned to the correct year.

## Section 2: Checking Hugo
Before proceeding further, the script checks if Hugo is installed on your system. If it is not found, the script provides a reference for installing Hugo on your system. It ensures that you have the necessary tools to create the blog post.

## Section 3: Category Selection
In this section, you will be prompted to choose a category for your blog post. The script currently supports four categories:

1. Machine Learning
2. Essential Skills
3. Web Development
4. Linux

You can select the desired category by entering the corresponding number. If an invalid input is provided, the script will continue to prompt you until a valid category is selected.

## Section 4: Blog Post Name
This section asks for the name of your blog post. It keeps asking for input until a name is provided, ensuring that the blog post has a meaningful title.

## Section 5: Creating Blog Post
Once all the necessary information is gathered, including the year, category, and blog post name, the script utilizes Hugo commands to generate the blog post. It creates the necessary files and structure for your new blog post.

## Section 6: Nice Message & Blog Post Location
In this section, the script provides a nice message to acknowledge your successful blog post creation. Additionally, it provides the location where your blog post has been created, allowing you to access and further edit it if needed.

To run the script, follow these steps:

1. Open your Terminal.
2. Clone the repository using the following command:
   ```bash
   git clone https://github.com/rafay99-epic/Future-Insight.git
   ```
3. Enter the cloned folder using:
   ```bash
   cd Future-Insight
   ```
4. Finally, execute the script by running the following command in your Terminal:
   ```bash
   ./blog_post_generator.sh
   ```

Please refer to this documentation and make any necessary adjustments to ensure it meets your requirements. Happy blogging!