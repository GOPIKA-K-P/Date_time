#!/bin/bash

# Set locale and time zone
export LC_TIME=en_IN.UTF-8
export TZ=Asia/Kolkata

# Generate dynamic content (current date and time in Indian Standard Time)
indian_time=$(date +'%Y-%m-%d %H:%M:%S %Z')

# Convert Indian time to UTC
utc_time=$(date -d "$indian_time" -u +'%Y-%m-%d %H:%M:%S %Z')

# Update README file
echo "# My Project" > README.md
echo -e "\nThis content is dynamically generated in Indian Time (IST): $indian_time" >> README.md
echo -e "Converted to UTC: $utc_time" >> README.md

# Commit and push changes
git config --local user.email "action@github.com"
git config --local user.name "GitHub Action"
git add README.md
git commit -m "Update README with dynamic content"
git push
