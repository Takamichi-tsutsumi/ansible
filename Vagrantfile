# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  # set vagrant box
  config.vm.box = "centos6.5.3"

  config.vm.network "private_network", ip: "192.168.33.10"

  config.vm.network "forwarded_port", guest: 8000, host: 8000 
  config.vm.network "forwarded_port", guest: 9000, host: 9000 

  # place your public key file into synced folder!!
  config.vm.synced_folder "./data", "/vagrant"

  # config.vm.provision "shell", inline: <<-SHELL
  #   cat /vagrant/vagrant.pub >> /home/vagrant/.ssh/authorized_key
  # SHELL
  
  config.vm.provision "ansible" do |ansible|
    ansible.playbook = "ansible/django-devel.yml"
    ansible.limit = 'all'
  end
end
