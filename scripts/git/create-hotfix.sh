#!/bin/bash
read -p "Enter hotfix issue number: " issue
branch_name="hotfix/patch-${issue}"
git checkout master
git pull origin master
git checkout -b "$branch_name"
echo "Hotfix branch $branch_name created from master."
