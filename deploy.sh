#!/usr/bin/env sh

et -e

npm run build

cd dist

git init
git add -A
git commit -m 'deploy'

git push -f https://github.com/axoft1/test-task-prof.git master:gh-pages
# git push -f git@github.com:axoft1/test-task-prof.git master:gh-pages

cd -