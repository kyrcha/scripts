#!/bin/bash

LOCAL_BRANCH=$1
REMOTE_BRANCH="developer"

git checkout $REMOTE_BRANCH
git merge --no-ff $LOCAL_BRANCH
