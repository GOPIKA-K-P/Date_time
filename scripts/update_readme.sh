#!/bin/bash

# Set locale and time zone
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8
export LC_TIME=en_US.UTF-8
export TZ=Asia/Kolkata

# Generate dynamic content (current date and time in Indian Standard Time)
indian_time=$(date +'%Y-%m-%d %H:%M:%S %Z')

# Convert Indian time to UTC
utc_time=$(date -u +'%Y-%m-%d %H:%M:%S %Z')

# Update README file
echo "# My Project" > README.md
echo -e "\nThis content is dynamically generated in Indian Time (IST): $indian_time" >> README.md
echo -e "Converted to UTC: $utc_time" >> README.md

# Configure Git
git config --global user.email "action@github.com"
git config --global user.name "GitHub Action"

# Pull latest changes from the remote repository
git pull origin main

# Commit changes
git add README.md
git commit -m "Update README with dynamic content"

# Push changes
git push origin main
