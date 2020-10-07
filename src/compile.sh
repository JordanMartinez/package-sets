#!/usr/bin/env bash

# Builds a given library by using its `<packageName>.dhall` file
#
# Ideal workflow:
#  ./genSpagoFile.sh prelude
#  ./compile.sh prelude

export PATH=".:$PATH"
spago -x $1.dhall build
