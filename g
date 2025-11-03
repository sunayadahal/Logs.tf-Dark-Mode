#!/bin/bash
# Simple auto-commit and push script for Logs.tf-Dark-Mode

# Move to script directory (so it runs from anywhere)
cd "$(dirname "$0")"

# Stage all changes
git add .

# Commit with default message or first argument
commit_message=${1:-"script"}
git commit -m "$commit_message"

# Push to GitHub main branch
git push origin main

# Optional success message
echo "✅ Changes pushed to GitHub with commit message: \"$commit_message\""