#!/bin/bash

# Generates markdown text for all images inside images/ directory.
# Redirect the content to a .md file

for file in images/*
do
  thename=$(echo $file | cut -d. -f1 | rev | cut -d/ -f1 | rev)
  echo "**$thename**  "
  echo "![$thename theme](images/$thename.png)"
  echo
done
