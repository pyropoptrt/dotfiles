#!/bin/bash


###############################################################################
# Sublime Text
###############################################################################
echo ""
echo "Do you use Sublime Text 3 as your editor of choice, and is it installed?"
read -r response
if [[ $response =~ ^([yY][eE][sS]|[yY])$ ]]; then
  # Installing from homebrew cask does the following for you!
  # echo ""
  # echo "Linking Sublime Text for command line usage as subl"
  # ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" /usr/local/bin/subl
  # updated for M1 processors
  # ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" /opt/homebrew/bin/subl

  echo ""
  echo "Setting Git to use Sublime Text as default editor"
  git config --global core.editor "subl -n -w"
fi