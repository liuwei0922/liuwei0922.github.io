#!/bin/bash

time=$(date +%F)
rm -rf docs
hugo -d docs
cp googlec86aa04042151a36.html docs/
cp CNAME docs/
git add .
git commit -am "updatefile time:$time"
git push origin master
