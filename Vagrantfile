# -*- mode: ruby -*-
# vi: set ft=ruby :

require 'socket'

Vagrant.configure("2") do |config|
    config.vm.box = "precise64"

    config.vm.provider :virtualbox do |vb|
        vb.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
    end
end

