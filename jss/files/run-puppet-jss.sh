#!/bin/bash
cd /etc/puppetlabs/code/environments/github && git pull
/opt/puppetlabs/bin/puppet apply github/jss/manifests/
