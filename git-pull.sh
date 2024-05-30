#!/bin/bash

for repo in */
do
    repo="${repo%/}"
    cd "$repo" || { echo "Unable to navigate to directory $repo"; exit 1; }
    echo "################################################################################# $repo"
    git pull
    cd ..
done
