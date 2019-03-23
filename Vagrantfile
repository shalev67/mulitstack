# -*- mode: ruby -*-
# vi: set ft=ruby :


$controllerScript = <<-SCRIPT
    #!/usr/bin/env bash
    cd devstack
    mv /vagrant/controller-local.conf ./local.conf
    su - vagrant -c '/home/vagrant/devstack/stack.sh'
SCRIPT

$computeScript = <<-SCRIPT
    #!/usr/bin/env bash
    cd devstack
    mv /vagrant/compute-local.conf ./local.conf
    su - vagrant -c '/home/vagrant/devstack/stack.sh'
SCRIPT

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
      config.vm.define "controller" do |controller|
          controller.vm.box = "shalev67/devstack-queens"
          controller.vm.hostname = "controller"
          controller.vm.provision "shell", inline: $controllerScript
          controller.vm.network "private_network", ip: "192.168.50.4"
          controller.vm.provider :libvirt do |domain|
              domain.memory = 8192
              domain.cpus = 4
              domain.nested = true
          end
      end

      (1..3).each do |i|
          config.vm.define "compute0#{i}" do |subconfig|
              subconfig.vm.box = "shalev67/devstack-queens"
              subconfig.vm.hostname = "compute0#{i}"
              subconfig.vm.provision "shell", inline: $computeScript
              subconfig.vm.network "private_network", ip: "192.168.50.1#{i}"
              subconfig.vm.provider :libvirt do |domain|
                  domain.memory = 2048
                  domain.cpus = 1
                  domain.nested = true
              end
          end
      end
end
