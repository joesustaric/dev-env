#!/usr/bin/env bash

# echo "#Configure Git---------------------------------------------"
/bin/git config --global push.default simple
/bin/git config --global color.ui true
/bin/git config --global core.editor "vim"
/bin/git config --global alias.lg "log --oneline --decorate --all --graph"
/bin/git config --global alias.s "status -s"
#----------------------------------------------------------
