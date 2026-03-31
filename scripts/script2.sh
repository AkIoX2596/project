#!/bin/bash
if dpkg -l | grep -q git
then
 echo "Git is installed"
 git --version
else
 echo "Git is not installed"
fi
