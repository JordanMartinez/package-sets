#!/usr/bin/env bash

# $1 = the name of the package (e.g. prelude)
# $2 = the name of the folder that stores the main content (e.g. output of `ls .spago/prelude`)

# The GitHub Owner for a repo you wish to update
BASE_GH_ORG=purescript

# Your GitHub username
GH_USERNAME=JordanMartinez

# change directory into that folder in the `.spago` folder
cd .spago/$1/$2

# Intialize folder as a git repo
git init

# Fork the repo using GitHub's CLI tool, but don't `git clone` it here
gh repo fork $BASE_GH_ORG/purescript-$1 --clone=false

# Add two remotes: one for the base and one for your own fork
# and fetch their commit history
git remote add upstream https://github.com/$BASE_GH_ORG/purescript-$1.git
git remote add origin git@github.com:$GH_USERNAME/purescript-$1.git
git fetch upstream
git fetch origin

# Update master in case one already forked this repo in the past
git checkout --force origin/master
git pull origin master

# Checkout a new branch based on the current `master` branch
git checkout -b updateTo14
