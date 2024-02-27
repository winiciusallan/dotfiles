#/bin/bash

REPO_PATH=~/dotfiles/
COMMIT_MESSAGE=$(echo "changes in $(git status -s | cut -d' ' -f3 | tr '\n' ' \n' | tr -d '\n')")

echo $COMMIT_MESSAGE
git add $REPO_PATH
git commit -m "$COMMIT_MESSAGE"
# git push origin main
