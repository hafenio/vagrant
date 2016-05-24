# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/trusty64"

  config.vm.network "forwarded_port", guest: 64738, host: 64738, protocol: "tcp"
  config.vm.network "forwarded_port", guest: 64738, host: 64738, protocol: "udp"

  config.vm.provider "virtualbox" do |vm|
    vm.memory = 2048
    vm.cpus = 2
  end

  config.vm.provision "docker" do |docker|
    docker.pull_images "hafenio/murmur:latest"
  end

  config.vm.provision "shell", path: "install.sh", privileged: false

end
