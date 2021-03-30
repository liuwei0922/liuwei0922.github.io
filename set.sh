#!/bin/bash

rm -rf public resources
hugo
cp googlec86aa04042151a36.html public/
cp CNAME public/
cd public
git init
git add -A
git commit -am "updatefile"
git remote add origin git@github.com:liuwei0922/liuwei0922.github.io
git push -u --force origin master
cd ..
