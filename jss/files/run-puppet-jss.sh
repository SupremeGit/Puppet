#!/bin/bash
#script to apply puppet to setup jss environment.

cd /etc/puppetlabs/code/environments/github && git pull
/opt/puppetlabs/bin/puppet apply jss/manifests/
