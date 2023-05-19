Write-Host"
                    ███████╗██╗   ██╗████████╗██╗   ██╗██████╗ ███████╗    ██╗███╗   ██╗███████╗██╗ ██████╗ ██╗  ██╗████████╗
                    ██╔════╝██║   ██║╚══██╔══╝██║   ██║██╔══██╗██╔════╝    ██║████╗  ██║██╔════╝██║██╔════╝ ██║  ██║╚══██╔══╝
                    █████╗  ██║   ██║   ██║   ██║   ██║██████╔╝█████╗      ██║██╔██╗ ██║███████╗██║██║  ███╗███████║   ██║   
                    ██╔══╝  ██║   ██║   ██║   ██║   ██║██╔══██╗██╔══╝      ██║██║╚██╗██║╚════██║██║██║   ██║██╔══██║   ██║   
                    ██║     ╚██████╔╝   ██║   ╚██████╔╝██║  ██║███████╗    ██║██║ ╚████║███████║██║╚██████╔╝██║  ██║   ██║   
                    ╚═╝      ╚═════╝    ╚═╝    ╚═════╝ ╚═╝  ╚═╝╚══════╝    ╚═╝╚═╝  ╚═══╝╚══════╝╚═╝ ╚═════╝ ╚═╝  ╚═╝   ╚═╝                                                                                                      
                                            "Unlocking the Future, One Insight at a Time"                                                                                      
"
$year = Get-Date -Format "yyyy"

# Emojis
$rocket = "🚀"
$pencil = "✏️"
$thumbs_up = "👍"

# Section: Category Selection
Write-Host "=== $rocket Category Selection ==="
Write-Host "Please select a category:"
Write-Host "1. $rocket machine-learning"
Write-Host "2. $rocket essential-skills"
Write-Host "3. $rocket Web-Development"
Write-Host "4. $rocket linux"

# Function to validate user input as a number
function Validate-Number {
    param (
        [Parameter(Mandatory=$true)]
        [string]$input
    )
    if ($input -match "^\d+$") {
        return $true
    }
    else {
        return $false
    }
}

# Prompt the user for category until a valid number is entered
while ($true) {
    $category = Read-Host "$pencil Enter the number corresponding to your choice"
    if (Validate-Number $category) {
        switch ($category) {
            1 { $category = "machine-learning"; break }
            2 { $category = "essential-skills"; break }
            3 { $category = "Web-Development"; break }
            4 { $category = "linux"; break }
            default { Write-Host "Invalid choice. Please enter a valid number." }
        }
        break
    }
    else {
        Write-Host "Invalid input. Please enter a number."
    }
}

Write-Host

# Section: Blog Post Name
Write-Host "=== $rocket Blog Post Name ==="
$blog_post_name = Read-Host "$pencil Enter the name of the blog post"

Write-Host

# Section: Creating Blog Post
Write-Host "=== $rocket Creating Blog Post ==="
# Use the variables to generate the command
$command = "hugo new post/$year/$category/$blog_post_name.md"

# Execute the command
$output = Invoke-Expression -Command $command

# Extract the path from the command output
$path = $output.Split(' ')[1]

Write-Host

# Section: Success Message
Write-Host "=== $rocket Success! ==="
Write-Host "$thumbs_up New blog post created successfully!"
Write-Host "Blog post location: $path"

Write-Host

# Random Nice Message
$nice_messages = @(
    "Great job! Keep up the amazing work!",
    "Your insights are valuable and appreciated!",
    "You're making a positive impact with your writing!",
    "Continue sharing your knowledge and inspiring others!",
    "Congratulations on another fantastic blog post!"
)

# Select a random message from the array
$random_index = Get-Random -Minimum 0 -Maximum $nice_messages.Count
$random_message = $nice_messages[$random_index]

Write-Host "=== $rocket Nice Message ==="
Write-Host $random_message

Write-Host
