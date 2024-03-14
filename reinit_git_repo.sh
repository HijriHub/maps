#!/bin/bash

# Step 1: Delete .git folder
rm -rf .git

# Step 2: Initialize a new git repository
git init

# Step 3: Add remote URL
git remote add origin git@github.com:HijriHub/maps.git


# Step 4: Add and commit doc/*.png files
git add doc/*.png
git commit -m "generated maps"

# Step 5: Add and commit all other files
git add -A
git commit -m "first"

# Step 6: Force push to remote server
git push --force --set-upstream origin master
