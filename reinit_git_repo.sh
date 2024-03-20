#!/bin/bash

# Step 1: Delete .git folder
rm -rf .git

# Step 2: Initialize a new git repository
git init

# Step 3: Add remote URL
git remote add origin git@github.com:HijriHub/maps.git

branch_name="maps_$(date +"%Y-%m-%d")"
git checkout -b "$branch_name"

# Add doc/*.png files and commit with message "generated maps"
git add doc/*.png
git commit -m "generated maps"

# Add the rest of the files and commit with message "first"
git add .
git commit -m "first"

# Push the branch to remote
git push -u origin "$branch_name"

# Step 7: Change pages branch from https://github.com/HijriHub/maps/settings/pages

# Step 8: Delete old branch from https://github.com/HijriHub/maps/branches
