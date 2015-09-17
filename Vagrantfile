# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|

  config.vm.box = "jhcook/centos7"

  config.vm.network "forwarded_port", guest: 30000, host: 30000

  config.vm.network "private_network", ip: "192.168.33.20"

  config.ssh.username = "vagrant"
  config.ssh.password = "vagrant"

  config.vm.synced_folder "./code", "/vagrant/code"

  config.vm.provider "virtualbox" do |vb|
    # Customize the amount of memory on the VM:
    vb.memory = 2048 
    vb.cpus = 2
  end

  config.vm.provision "file", source: "~/.ssh/id_rsa", destination: "~/.ssh/id_rsa"

  config.vm.provision :ansible do |a|
    a.playbook = "playbook.yml"
  end

  config.ssh.forward_agent = true
  # config.vm.provision :shell, path: "bootstrap.sh"
end
