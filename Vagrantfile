# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = '2'

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = 'chef/centos-7.1'

  config.vm.network :private_network, ip: '192.168.33.16'

  config.vm.provision :ansible do |ansible|
    ansible.playbook = 'main.yml'
  end
end
