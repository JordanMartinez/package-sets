#!/usr/bin/env bash

# Reinstalls a dependency for a given package (e.g. if some more changes were
# made since you worked on it).
#
# Note: this will overwrite any prior work you made on it.
rm -rf .spago/$1
export PATH=".:$PATH"
spago -x $2.dhall install
