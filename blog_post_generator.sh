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
warning="⚠️"

# Check if Hugo is installed
if ! command -v hugo &> /dev/null; then
    echo "${warning} Hugo is not installed on your system."
    echo "Please install Hugo before running this script."
    echo "You can install Hugo from: https://gohugo.io/installation/"
    exit 1
fi

# Section: Category Selection
echo "=== ${rocket} Category Selection ==="
echo "Please select a category:"
echo "1. ${rocket} machine-learning"
echo "2. ${rocket} essential-skills"
echo "3. ${rocket} Web-Development"
echo "4. ${rocket} OS"
echo "5. ${rocket} linux"
echo "6. ${rocket} windows"
echo "7. ${rocket} Code-Report"
echo "8. ${rocket} Write your Ownn Category"

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
    read -rp "${pencil} Enter the number corresponding to your choice: " category
    validate_number "$category"
    if [ $? -eq 0 ]; then
        case $category in
            1) category="machine-learning"; break;;
            2) category="essential-skills"; break;;
            3) category="Web-Development"; break;;
            4) category="OS"; break;;
            5) category="linux"; break;;
            6) category="windows"; break;;
            7) category="Code-Report"; break;;
            8) read -rp "${pencil} Enter the name of the category: " category; break;;
            *) echo "Invalid choice. Please enter a valid number.";;
        esac
    else
        echo "Invalid input. Please enter a number."
    fi
done

echo

# Section: Blog Post Name
echo "=== ${rocket} Blog Post Name ==="

# Loop until a valid blog post name is entered
while true; do
    read -rp "${pencil} Enter the name of the blog post: " blog_post_name

    # Validate the blog post name
    if [[ -z "$blog_post_name" ]]; then
        echo "${warning} Blog post name cannot be empty."
        echo "Please enter a valid blog post name."
    else
        break
    fi
done

echo

# Section: Creating Blog Post
echo "=== ${rocket} Creating Blog Post ==="
# Use the variables to generate the command
if [ "$category" = "Code-Report" ]; then
    date=$(date +%Y-%m-%d)
    command="hugo new post/${year}/${category}/${date}-${blog_post_name}.md"
elif [ "$category" = "windows" ];then
    command="hugo new post/${year}/OS/windows/${blog_post_name}.md"
elif [ "$category" = "linux" ];then
    command="hugo new post/${year}/OS/linux/${blog_post_name}.md"
else
    command="hugo new post/${year}/${category}/${blog_post_name}.md"
fi

# Execute the command
output=$(eval "$command")

if [ $? -eq 0 ]; then
    # Extract the path from the command output
    path=$(echo "$output" | cut -d' ' -f2)
    
    echo
    # Section: Success Message
    echo "=== ${rocket} Success! ==="
    echo "${thumbs_up} New blog post created successfully!"
    echo "Blog post location: $path"
else
    # Section: Error Message
    echo
    echo "=== ${rocket} Error! ==="
    echo "An error occurred while creating the blog post."
    echo "Please see the error message above for details."
    exit 1
fi

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

echo "=== ${rocket} Nice Message ==="
echo "${random_message}"

echo 