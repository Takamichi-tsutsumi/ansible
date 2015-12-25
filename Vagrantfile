# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  USER = "host_username" 
  # set vagrant box
  config.vm.box = "centos6.5.3"

  config.vm.network "private_network", ip: "192.168.33.10"

  # place your public key file into synced folder!!
  config.vm.synced_folder "./data", "/vagrant"

  config.vm.provision "shell", inline: <<-SHELL
    cat /vagrant/vagrant.pub >> /home/vagrant/.ssh/authorized_key
  SHELL

  config.vm.provision "ansible" do |ansible|
    # your ansible file
    ansible.playbook = "/Users/" + USER + "/ansible/main.yml"
    ansible.inventory_path = "/Users/" + USER + "/ansible/hosts"
    ansible.limit = 'all'
  end
end
