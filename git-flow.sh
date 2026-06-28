#!/bin/bash

# Exit if any command fails
set -e
trap 'echo "❌ A command failed. Exiting..."' ERR


echo "Current branch: $(git branch --show-current)"

# Stage all changes
git add .

# Prompt for commit message
while true; do
    read -p "Enter a commit message: " commitMessage

    if [ -n "$commitMessage" ]; then
        break
    fi

    echo "Commit message cannot be empty."
done

# Commit and push
git commit -m "$commitMessage"
git push

echo "✅ Changes committed and pushed successfully."