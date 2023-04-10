#!/bin/bash

# Build the Flutter app for the web
flutter build web

# Move into the build directory
cd build/web

# Initialize a new Git repository
git init

# Add the files in the build directory to the Git repository
git add .

# Commit the changes
git commit -m "Deploy to GitHub Pages"

# Push the changes to the gh-pages branch on GitHub
git push --force "https://${GH_TOKEN}@github.com/${TRAVIS_REPO_SLUG}.git" master:gh-pages
