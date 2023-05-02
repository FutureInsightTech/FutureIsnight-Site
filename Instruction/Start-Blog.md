# Script Documentation
This Bash script is called "Future Insight" and is available on GitHub at https://github.com/rafay99-epic/Future-Insight. The author of the script is Abdul Rafay.

The script creates a new blog post and asks the user whether they want to run the local server.

# Components
The script contains the following components:

## run_hugo_server()
This function runs the Hugo server and displays a message to indicate that the server is running.

## create_post()
This function prompts the user to enter the year and the name of the blog post, and then prompts the user to enter a tag name (machine-learning, essential-skills, or Web-Development). The function creates a new post with the specified tag, year, and post name.

## logic()
This function asks the user if they want to create a new blog post and if they want to run the Hugo server. Depending on the user's response, the function calls either create_post() or run_hugo_server().

## bye()
This function displays a message to indicate that all operations have been completed and the program is exiting.

## main()
This function calls the logic() function to begin the execution of the script.

# Usage
To use the script, simply run it in a Bash shell. The script will prompt the user for input as necessary. Once all operations have been completed, the script will exit.

# Example
An example of using this script:
```bash
chmod +x start-blog.sh
./start-blog.sh
```

The script will then display prompts for the user to enter information and make choices. Once all operations have been completed, the script will display a message indicating that it is exiting.