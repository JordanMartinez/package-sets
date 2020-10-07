# Workflow

1. Look at `libDeps.txt` to see what to work on next

2. Install the package and its dependencies and set up its git remotes
```bash
# Install a package and its dependencies
./genSpagoFile.sh packageName
./compile.sh packageName

# Setup a remote to your fork of the repo
# if package is stored at ``.spago/packageName/version`
# run `ls .spago/packageName` to see what the version is
./setupRemote.sh packageName versionName
```

3. Do your updates locally

```bash
cd .spago/packageName/versionName
#   make changes via your editor
```

4. Create a PR

```bash
git push -u origin updateTo14

# Create a PR on GitHub
```
