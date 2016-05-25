#!/usr/bin/env bash
set -e
# echo "#Configure Git---------------------------------------------"
git config --global push.default simple
git config --global color.ui true
git config --global core.editor "vim"
git config --global alias.lg "log --oneline --decorate --all --graph"
git config --global alias.s "status -s"
#----------------------------------------------------------
