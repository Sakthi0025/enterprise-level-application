#!/bin/bash
read -p "Enter new release version (e.g., v1.2.0): " version
branch_name="release/${version}"
git checkout develop
git pull origin develop
git checkout -b "$branch_name"
echo "Creating release commit..."
git commit --allow-empty -m "chore: initial commit for $branch_name"
git push -u origin "$branch_name"
echo "Release branch $branch_name created."
