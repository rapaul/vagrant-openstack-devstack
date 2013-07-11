#!/bin/bash

set -o errexit

# http://devstack.org/guides/single-vm.html

apt-get update || yum update -y
apt-get install -qqy git || yum install -y git
git clone https://github.com/openstack-dev/devstack.git
cd devstack
echo ADMIN_PASSWORD=password > localrc
echo MYSQL_PASSWORD=password >> localrc
echo RABBIT_PASSWORD=password >> localrc
echo SERVICE_PASSWORD=password >> localrc
echo SERVICE_TOKEN=tokentoken >> localrc
./stack.sh
