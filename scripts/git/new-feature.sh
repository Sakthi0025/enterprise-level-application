#!/bin/bash
read -p "Enter JIRA ticket (e.g., DEV-123): " ticket
branch_name="feat/${ticket}"
git checkout develop
git pull origin develop
git checkout -b "$branch_name"
git push -u origin "$branch_name"
echo "Branch $branch_name created from develop and pushed."
