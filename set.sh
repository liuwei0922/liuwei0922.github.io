#!/bin/bash

rm -rf docs
hugo -d docs
cp googlec86aa04042151a36.html docs/
cp CNAME docs/
git commit -am "updatefile time:'date+%F'"
git push origin master
