#!/usr/bin/env bash
set -e

tee /etc/yum.repos.d/docker.repo <<-'EOF'
[dockerrepo]
name=Docker Repository
baseurl=https://yum.dockerproject.org/repo/main/centos/$releasever/
enabled=1
gpgcheck=1
gpgkey=https://yum.dockerproject.org/gpg
EOF

yum install -y docker-engine

# create docker group and add vagrant user to it so we dont need to sudo all the
# time
groupadd -f docker
usermod -aG docker vagrant

#start docker on startup
chkconfig docker on
#start docker
service docker start

# docker Compose
curl -L https://github.com/docker/compose/releases/download/1.7.0/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
