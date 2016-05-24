# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/trusty64"
  # Forward Ports to Host Machine
  config.vm.network "forwarded_port", guest: 8080, host: 8080 # RethinkDB Dashboard
  config.vm.provider "virtualbox" do |vm|
    vm.memory = 2048
    vm.cpus = 2
  end
  config.vm.provision "docker" do |docker|
    docker.pull_images "rethinkdb"
    docker.run "rethinkdb",
           args: "-d --restart=always --name rethinkdb-01 -p 8080:8080 -v '/home/vagrant/docker_data/rethinkdb/01:/data'"
  end
  config.vm.provision "docker"
  config.vm.provision "shell", path: "install.sh", privileged: false
end
