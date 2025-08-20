#!/bin/bash
# Simple deploy script - update REMOTE_URL before use
if [ ! -d .git ]; then
  git init
  git branch -M main
  git remote add origin https://github.com/Himanshu-pawar01/Himanshu-pawar01.github.io.git
fi
git add .
git commit -m "Deploy: update site"
git push -u origin main --force
echo "Deployed. Enable GitHub Pages for this repo (main branch -> root)."
