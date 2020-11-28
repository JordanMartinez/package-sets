#!/usr/bin/env bash

# Copied from .github/workflows/release.yml
# I modified the file name to include the 'prepare-0.14-' prefix
# so it's easier to know immediately which package set we're using
# if we look at a repo's `packages.dhall` file.
nix-shell --run '>prepare-0.14-packages.dhall dhall <<< ./src/packages.dhall'
