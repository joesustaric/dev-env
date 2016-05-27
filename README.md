# Dev Env
### Vagrant Ubuntu Development Environment  

A little bit nicerer than my last attempt.  
This uses Ansible to just install the tools then runs a ```post-install.sh``` script to do some config for some of the apps.  

### How To Use  


The scripts will attempt to mount your private key from your host machine.  
It assumes that its located at `~/.ssh/id_rsa`. This helps when using git from with in the VM and other key stuff.  
Also it will mount a project directory currently referenced from `~/projects`. If you want to change any of these two settings for your use, change them in the `Vagrantfile`.  
After thats complete do the following.  

You will need to install [VirtualBox](https://www.virtualbox.org/wiki/Downloads), [Vagrant](https://www.vagrantup.com/downloads.html) and [Ansible](https://github.com/ansible/ansible).  
Then you will need to install the Docker Ansible playbook.  
* `$ ansible-galaxy install angstwad.docker_ubuntu`
* Clone this repository `$ git clone https://github.com/joesustaric/dev-env.git`
* `cd` into the directory and run `$ vagrant up` command  
* After the machine has been provisioned , `$ vagrant ssh` will connect you into it.

### Whats Inside
(main stuff)  
* Golang
* Ruby
* Git
* Zsh
* Vim
* Docker & Docker Compose

![Homer Hacking](https://frinkiac.com/gif/S07E07/646745/650716.gif?b64lines=QUxMIFRISVMgQ09NUFVURVIgSEFDS0lORyBJUwogTUFLSU5HIE1FIFRISVJTVFkuIEkKIFRISU5LIEknTEwgT1JERVIgQSBUQUIu)
