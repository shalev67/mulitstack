#!/usr/bin/env bash
cd devstack
mv /vagrant/controller-local.conf ./local.conf
su - vagrant -c '/home/vagrant/devstack/stack.sh'

