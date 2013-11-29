# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "devstack"
  config.vm.box_url = "http://files.vagrantup.com/precise64.box"

  config.vm.network :public_network
  config.vm.provider :virtualbox do |vb|
    vb.customize ["modifyvm", :id, "--memory", "3072"]
  end

  config.vm.provision :shell, :path => 'stack.sh', :privileged => false
end
