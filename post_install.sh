#!/usr/bin/env bash

# ZSH ------------------------------------------------------
# Configure zsh
sudo -u vagrant zsh <<'EOF'
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"

setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done
EOF
chsh -s /bin/zsh vagrant
#----------------------------------------------------------

#Golang----------------------------------------------------
mkdir /vagrant/code/go_code
echo "#GOPATH needed for golang workspace" >> /home/vagrant/.bash_profile
GOPATH=/vagrant/code/go_code
echo "export GOPATH=$GOPATH" >> /home/vagrant/.bash_profile
echo "export PATH=$PATH:$GOPATH/bin" >> /home/vagrant/.bash_profile
if [ -f /home/vagrant/.zshrc ]; then
  echo "#GOPATH needed for golang workspace" >> /home/vagrant/.zshrc
  echo "export GOPATH=/vagrant/code/go_code" >> /home/vagrant/.zshrc
  echo "export PATH=$PATH:$GOROOT/bin:$GOPATH/bin" >> /home/vagrant/.zshrc
fi
#-----------------------------------------------------------

#Configure Git---------------------------------------------
git config --global push.default simple
git config --global core.editor "vim"
#----------------------------------------------------------
