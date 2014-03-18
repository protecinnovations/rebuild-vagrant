#!/bin/bash

vagrant up
vagrant ssh -c "sudo /vagrant/update-box.sh"
vagrant package default

