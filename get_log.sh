#!/bin/sh
vagrant destroy -f
vagrant up
vagrant ssh -- sudo cat /var/log/salt/minion > minion-all.log
