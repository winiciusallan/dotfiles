#/bin/bash

REPO_PATH=~/dotfiles/
COMMIT_MESSAGE=$(echo "changes in $(git status -s | awk '{print $2}' | cut -d'/' -f1 | tr '\n' ' ')")

echo $COMMIT_MESSAGE
git add $REPO_PATH
git commit -m "$COMMIT_MESSAGE"
git push origin main
