#!/bin/bash
git config --local pull.rebase true
git config --local core.hooksPath .husky
echo "Hooks configured."
npm install
echo "Dev environment setup complete."
