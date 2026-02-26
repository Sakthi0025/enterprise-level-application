#!/bin/bash
echo "The following branches are fully merged into develop:"
git branch --merged develop | grep -v '^\*\|master\|develop'
read -p "Are you sure you want to delete them? (y/n) " resp
if [ "$resp" = "y" ]; then
  git branch --merged develop | grep -v '^\*\|master\|develop' | xargs -n 1 git branch -d
  echo "Branches deleted."
else
  echo "Aborted."
fi
