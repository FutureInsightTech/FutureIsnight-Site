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
# Version 2.0.1:
# Problem: 
# In this patch add log ssytem for only git commit and not for others
# Section: System Check
echo "=== System Check ==="
echo "Checking system status..."

# Check if git is installed
if ! command -v git &> /dev/null; then
    echo "❌ Git is not installed. Please install Git to use this script."
    exit 1
fi

echo "✅ Git is installed."

echo

# Section: Commit Message
echo "=== Commit Message ==="
read -rp "✏️ Enter your commit message: " message

echo

# Section: Git Commit
echo "=== Git Commit ==="
git add .
git commit -m "$message" &> commit.log

echo

# Section: Check Commit Success
echo "=== Check Commit Success ==="
if [ $? -eq 0 ]; then
    echo "Commit successful! 🎉"
    rm commit.log
else
    echo "Commit failed. Please check your changes and try again. ❌"
    echo "Errors encountered during commit. Please check commit.log for more details."
fi

echo

# Section: Push Commit
echo "=== Push Commit ==="
current_branch=$(git symbolic-ref --short HEAD)

if git show-ref --verify --quiet "refs/heads/$current_branch"; then
    # Local branch exists
    echo "🌿 Local branch detected. Publishing branch..."
    git branch --set-upstream-to=origin/"$current_branch" "$current_branch"
    git push -u origin "$current_branch"
    echo "Branch published and commit pushed successfully! 🚀"
else
    # Remote branch exists
    echo "🔗 Remote branch detected. Pushing commit..."
    git push
    echo "Commit pushed successfully! 🚀"
fi

echo
