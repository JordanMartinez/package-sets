#!/usr/bin/env bash

# Generates a `spago.dhall` file for a given package, `p`,
# that will download and install its dependencies. The outputted
# file will be called `<packageName>.dhall`
#
# Ideal workflow:
#  ./genSpagoFile.sh prelude
#  ./compile.sh prelude

node ./package-query.js --input ./packageSet.json genSpagoFiles --dir ./ --whitelist $1
