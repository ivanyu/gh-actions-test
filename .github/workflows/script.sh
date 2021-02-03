#!/bin/bash
set -e

COMMIT_TITLE=$(git log --pretty=format:%s -1 d72c12a3efa087a8070d8926af6bcb5dc42c361a)
echo "Commit title: $COMMIT_TITLE"
if [[ $COMMIT_TITLE =~ ^Release\ version\ [0-9]*\.[0-9]*\.[0-9]*$ ]]; then
	echo "Valid commit title"
else
	echo "Invalid commit title"
	exit 1
fi
