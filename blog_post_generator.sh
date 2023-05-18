#!/bin/bash
# Banner
echo "
            ███████╗██╗   ██╗████████╗██╗   ██╗██████╗ ███████╗    ██╗███╗   ██╗███████╗██╗ ██████╗ ██╗  ██╗████████╗
            ██╔════╝██║   ██║╚══██╔══╝██║   ██║██╔══██╗██╔════╝    ██║████╗  ██║██╔════╝██║██╔════╝ ██║  ██║╚══██╔══╝
            █████╗  ██║   ██║   ██║   ██║   ██║██████╔╝█████╗      ██║██╔██╗ ██║███████╗██║██║  ███╗███████║   ██║   
            ██╔══╝  ██║   ██║   ██║   ██║   ██║██╔══██╗██╔══╝      ██║██║╚██╗██║╚════██║██║██║   ██║██╔══██║   ██║   
            ██║     ╚██████╔╝   ██║   ╚██████╔╝██║  ██║███████╗    ██║██║ ╚████║███████║██║╚██████╔╝██║  ██║   ██║   
            ╚═╝      ╚═════╝    ╚═╝    ╚═════╝ ╚═╝  ╚═╝╚══════╝    ╚═╝╚═╝  ╚═══╝╚══════╝╚═╝ ╚═════╝ ╚═╝  ╚═╝   ╚═╝                                                                                                      
                                       "Unlocking the Future, One Insight at a Time"                                                                                      
"
# Get the current year and store it in a variable
year=$(date +%Y)

# Emojis
rocket="🚀"
pencil="✏️"
thumbs_up="👍"

# Section: Category Selection
echo "=== ${rocket} Category Selection ==="
echo "Please select a category:"
echo "1. ${rocket} machine-learning"
echo "2. ${rocket} essential-skills"
echo "3. ${rocket} Web-Development"
echo "4. ${rocket} linux"

# Function to validate user input as a number
validate_number() {
    if [[ $1 =~ ^[0-9]+$ ]]; then
        return 0
    else
        return 1
    fi
}

# Prompt the user for category until a valid number is entered
while true; do
    read -p "${pencil} Enter the number corresponding to your choice: " category
    validate_number $category
    if [ $? -eq 0 ]; then
        case $category in
            1) category="machine-learning"; break;;
            2) category="essential-skills"; break;;
            3) category="Web-Development"; break;;
            4) category="linux"; break;;
            *) echo "Invalid choice. Please enter a valid number.";;
        esac
    else
        echo "Invalid input. Please enter a number."
    fi
done

echo

# Section: Blog Post Name
echo "=== ${rocket} Blog Post Name ==="
read -p "${pencil} Enter the name of the blog post: " blog_post_name

echo

# Section: Creating Blog Post
echo "=== ${rocket} Creating Blog Post ==="
# Use the variables to generate the command
command="hugo new post/${year}/${category}/${blog_post_name}.md"

# Execute the command
output=$(eval "$command")

# Extract the path from the command output
path=$(echo "$output" | cut -d' ' -f2)

echo

# Section: Success Message
echo "=== ${rocket} Success! ==="
echo "${thumbs_up} New blog post created successfully!"
echo "Blog post location: $path"

echo

# Random Nice Message
nice_messages=(
    "Great job! Keep up the amazing work!"
    "Your insights are valuable and appreciated!"
    "You're making a positive impact with your writing!"
    "Continue sharing your knowledge and inspiring others!"
    "Congratulations on another fantastic blog post!"
)

# Select a random message from the array
random_index=$((RANDOM % ${#nice_messages[@]}))
random_message=${nice_messages[$random_index]}
create-blog
echo "=== ${rocket} Nice Message ==="
echo "${random_message}"

echo