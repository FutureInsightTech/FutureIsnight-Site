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
# Version 2.0.2:

# Problem:
# In this patch I added the log system for commit, and push and git add but no check if there is error or not.

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

# Section: Git Add
echo "=== Git Add ==="
git add . &> add.log

echo

# Section: Check Git Add Success
echo "=== Check Git Add Success ==="
if [ $? -eq 0 ]; then
    echo "Git add successful! ✅"
    rm add.log
else
    echo "Git add failed. Please check your changes and try again. ❌"
    echo "Errors encountered during git add. Please check add.log for more details."
fi

echo

# Section: Git Commit
echo "=== Git Commit ==="
git commit -m "$message" &> commit.log

echo

# Section: Check Git Commit Success
echo "=== Check Git Commit Success ==="
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

git push &> push.log

echo

# Section: Check Push Commit Success
echo "=== Check Push Commit Success ==="
if [ $? -eq 0 ]; then
    echo "Commit pushed successfully! 🚀"
    rm push.log
else
    echo "Push failed. Please check your network connection and try again. ❌"
    echo "Errors encountered during push. Please check push.log for more details."
fi

echo

# Section: Push Commit Upstream
echo "=== Push Commit Upstream ==="

git push -u origin "$current_branch" &> push_upstream.log

echo

# Section: Check Push Commit Upstream Success
echo "=== Check Push Commit Upstream Success ==="
if [ $? -eq 0 ]; then
    echo "Branch published and commit pushed successfully! 🚀"
    rm push_upstream.log
else
    echo "Push upstream failed. Please check your network connection and try again. ❌"
    echo "Errors encountered during push upstream. Please check push_upstream.log for more details."
fi

echo
