#!/usr/bin/env bash

#This is configuration needed for Golang and Chruby for both zsh and bash

# ZSH --------------------------------------------------------------------------
# Configure zsh
sudo -u vagrant zsh <<'EOF'
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"

setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done
EOF
chsh -s /bin/zsh vagrant
#-------------------------------------------------------------------------------

#Golang-------------------------------------------------------------------------
mkdir /vagrant/projects/go_code
GOPATH=/vagrant/projects/go_code
GOROOT=/usr/local/go
#-------------------------------------------------------------------------------

echo "#GOPATH needed for golang workspace" >> /home/vagrant/.bash_profile
echo "export GOPATH=$GOPATH" >> /home/vagrant/.bash_profile
echo "export GOROOT=$GOROOT" >> /home/vagrant/.bash_profile
echo "export PATH=$PATH:$GOPATH/bin" >> /home/vagrant/.bash_profile

if [ -f /home/vagrant/.zshrc ]; then
  echo "#GOPATH needed for golang workspace" >> /home/vagrant/.zshrc
  echo "export GOPATH=$GOPATH" >> /home/vagrant/.zshrc
  echo "export GOROOT=$GOROOT" >> /home/vagrant/.zshrc
  echo "export PATH=$PATH:$GOROOT/bin:$GOPATH/bin" >> /home/vagrant/.zshrc
fi
#-------------------------------------------------------------------------------

#Chruby Config------------------------------------------------------------------
mkdir /vagrant/projects/ruby
echo "#--Chruby--------------------------------" >> /home/vagrant/.bash_profile
echo "source /usr/local/share/chruby/chruby.sh" >> /home/vagrant/.bash_profile
echo "source /usr/local/share/chruby/auto.sh" >> /home/vagrant/.bash_profile
echo "#----------------------------------------" >> /home/vagrant/.bash_profile

if [ -f /home/vagrant/.zshrc ]; then
  echo "#--Chruby--------------------------------" >> /home/vagrant/.zshrc
  echo "source /usr/local/share/chruby/chruby.sh" >> /home/vagrant/.zshrc
  echo "source /usr/local/share/chruby/auto.sh" >> /home/vagrant/.zshrc
  echo "#----------------------------------------" >> /home/vagrant/.zshrc
fi
#-------------------------------------------------------------------------------

#Change to any ruby version-----------------------------------------------------
echo "chruby ruby" >> /home/vagrant/.bash_profile
if [ -f /home/vagrant/.zshrc ]; then
    echo "#chruby ruby" >> /home/vagrant/.zshrc
fi
#-------------------------------------------------------------------------------
