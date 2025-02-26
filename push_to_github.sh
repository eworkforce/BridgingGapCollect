#!/bin/bash

# Script to push changes to GitHub
# Repository: https://github.com/eworkforce/BridgingGapCollect

echo "Pushing changes to GitHub repository: https://github.com/eworkforce/BridgingGapCollect"

# Set git credentials (temporarily)
git config --local credential.helper store
echo "https://sergeziehi%40eworkforce.africa:$PASSWORD@github.com" > ~/.git-credentials
chmod 600 ~/.git-credentials

# Check if .git directory exists
if [ ! -d ".git" ]; then
    echo "Initializing Git repository..."
    git init
    git remote add origin https://github.com/eworkforce/BridgingGapCollect.git
else
    echo "Git repository already initialized."
    # Check if remote exists
    if ! git remote | grep -q "origin"; then
        echo "Adding remote origin..."
        git remote add origin https://github.com/eworkforce/BridgingGapCollect.git
    fi
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

# Clean up credentials
rm ~/.git-credentials
git config --local --unset credential.helper

echo "Done!"
