# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
      config.vm.define "controller" do |controller|
        controller.vm.box = "shalev67/devstack-queens"
        controller.vm.hostname = "controller"
        controller.vm.provision "shell", path: "controller-bootstrap.sh"
        controller.vm.network "private_network", ip: "192.168.50.4"
        controller.vm.provider :libvirt do |domain|
          domain.memory = 8192
          domain.cpus = 4
          domain.nested = true
        end
      end

      config.vm.define "compute01" do |compute01|
        compute01.vm.box = "shalev67/devstack-queens"
        compute01.vm.hostname = "compute01"
        compute01.vm.provision "shell", path: "compute01-bootstrap.sh"
        compute01.vm.network "private_network", ip: "192.168.50.5"
        compute01.vm.provider :libvirt do |domain|
          domain.memory = 2048
          domain.cpus = 1
          domain.nested = true
        end
      end

      config.vm.define "compute02" do |compute02|
        compute02.vm.box = "shalev67/devstack-queens"
        compute02.vm.hostname = "compute02"
        compute02.vm.provision "shell", path: "compute02-bootstrap.sh"
        compute02.vm.network "private_network", ip: "192.168.50.6"
        compute02.vm.provider :libvirt do |domain|
          domain.memory = 2048
          domain.cpus = 1
          domain.nested = true
        end
      end

      config.vm.define "compute03" do |compute03|
        compute03.vm.box = "shalev67/devstack-queens"
        compute03.vm.hostname = "compute03"
        compute03.vm.provision "shell", path: "compute03-bootstrap.sh"
        compute03.vm.network "private_network", ip: "192.168.50.7"
        compute03.vm.provider :libvirt do |domain|
          domain.memory = 2048
          domain.cpus = 1
          domain.nested = true
        end
      end
end
