# Dev Env
### Vagrant CentOS7 Development Environment  

A little bit nicerer than my last attempt.  
This uses Ansible to just install the tools then runs a ```post-install.sh``` script to do some config for some of the apps.  

### How To Use
The scripts will attempt to mount your private key from your host machine.  
It assumes that its located at `~/.ssh/id_rsa`. This helps when using git from with in the VM and other key stuff.  
Also it will mount a project directory currently referenced from `~/projects`. If you want to change any of these two settings for your use, change them in the `Vagrantfile`.  
After thats complete do the following.  
* Install VirtualBox, Vagrant and Ansible
* Clone this repository
* `cd` into the directory and run `vagratn up` command  
* After the machine has been provisioned , `vagratn ssh` will connect you into it. 

### Whats Inside
(main stuff)  
* Golang
* Chruby
* Ruby
* Git
* Zsh
* Vim
* Docker & Docker Compose

### Non Standard App Installs
Docker and Docker compose were slightly tricky, so I've just scripted them out and put it under the `install-scripts` directory. I just call it's corresponding script file to do the install.

![Homer Hacking](http://asaph.zurds.com/data/images/2012/07/tumblr-m5v9uq55xj1rnx2mvo1-500.gif)
