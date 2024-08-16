#!/bin/bash

# Script to add, commit, and push changes in a Git repository

# Check if a commit message was provided
if [ -z "$1" ]
then
  echo "Error: No commit message provided."
  echo "Usage: ./git-update.sh \"Your commit message\""
  exit 1
fi

# Add all changes to the staging area
git add .

# Commit the changes with the provided message
git commit -m "$1"

# Push the changes to the remote repository
git push origin main

# If your branch is different, replace 'main' with your branch name:
# git push origin your-branch-name

echo "Changes have been pushed to the remote repository."
