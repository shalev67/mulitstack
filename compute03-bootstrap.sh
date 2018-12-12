#!/usr/bin/env bash
cd devstack
mv /vagrant/compute03-local.conf ./local.conf
su - vagrant -c '/home/vagrant/devstack/stack.sh'

