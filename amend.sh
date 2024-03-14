#!/bin/bash

# Amend the last commit by adding all .png files in docs/maps directory
git add docs/*.png

# Amend the last commit
git commit --amend --no-edit

# Push the changes to the remote repository
git push --force
