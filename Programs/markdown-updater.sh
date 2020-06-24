#!/bin/bash
#   Source:     https://blog.gordonturner.com/2019/06/04/macos-markdown-header/
#   Function:   Script to change headers from == or -- to #, ##
#   Target:     All files named *.md from root folder
#   v2:         Elzinus
find . -type f -name *.md -exec sed -i -e :a -e '/^\n*$/{$d;N;};/\n$/ba' {} \;
find . -type f -name *.md -exec sed -i -e :a -e '$!N;s/\n===.*/===/;ta' -e 'P;D' {} \;
find . -type f -name *.md -exec sed -i -E 's/(.+)(\=\=\=)/#\ \1/g' {} \;
find . -type f -name *.md -exec sed -i -e :a -e '$!N;s/\n---.*/---/;ta' -e 'P;D' {} \;
find . -type f -name *.md -exec sed -i -E 's/(.+)(\-\-\-)/##\ \0/g' {} \;
#TODO: Fix above lines, so headers last three lines are removed below is a workaround
find . -type f -name *.md -exec sed -i 's/---//g' {} \;
