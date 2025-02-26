#!/bin/bash

# Script to push changes to GitHub
# Repository: https://github.com/eworkforce/BridgingGapCollect

echo "Pushing changes to GitHub repository: https://github.com/eworkforce/BridgingGapCollect"

# Set up the remote URL with credentials embedded
GITHUB_URL="https://sergeziehi%40eworkforce.africa:${PASSWORD}@github.com/eworkforce/BridgingGapCollect.git"

# Check if .git directory exists
if [ ! -d ".git" ]; then
    echo "Initializing Git repository..."
    git init
    git remote add origin "$GITHUB_URL"
else
    echo "Git repository already initialized."
    # Update the remote URL with credentials
    git remote set-url origin "$GITHUB_URL"
fi

# Set user information
git config --local user.name "Serge Ziehi"
git config --local user.email "sergeziehi@eworkforce.africa"

# Add all changes
echo "Adding changes to Git..."
git add .

# Commit changes
echo "Committing changes..."
git commit -m "Update app with vibrant lime green theme and black text for better visibility"

# Push to GitHub
echo "Pushing to GitHub..."
git push -u origin master

echo "Done!"
