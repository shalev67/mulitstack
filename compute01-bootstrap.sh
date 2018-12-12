#!/usr/bin/env bash
cd devstack
mv /vagrant/compute01-local.conf ./local.conf
su - vagrant -c '/home/vagrant/devstack/stack.sh'

