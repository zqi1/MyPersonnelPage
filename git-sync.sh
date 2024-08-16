#!/bin/bash

# This script fetches the latest changes, merges them, stages local changes, commits, and pushes to the remote repository.

# Navigate to your Git repository directory (optional)
# Uncomment the next line and set the correct path if you want to ensure you're in the correct directory.
# cd /path/to/your/repository

# Fetch the latest changes from the remote repository
echo "Fetching the latest changes from the remote repository..."
git fetch origin

# Merge the fetched changes with your local branch
echo "Merging changes from origin/main..."
git merge origin/main

# Stage all changes (including new, modified, and deleted files)
echo "Staging all changes..."
git add .

# Commit the changes with a generic commit message
commit_message="Auto-sync: Fetch, merge, add, commit, and push local changes"
echo "Committing changes with message: '$commit_message'..."
git commit -m "$commit_message"

# Push the changes to the remote repository
echo "Pushing changes to remote repository..."
git push origin main

echo "All done! Your local changes are now synchronized with the remote repository."
