#!/bin/bash    

## Change the version to latest release 
## git url : https://github.com/docker/compose/releases
VERSION=v2.14.0

sudo yum update -y    
sudo yum install -y yum-utils    
sudo yum-config-manager \     
    --add-repo \    
    https://download.docker.com/linux/centos/docker-ce.repo     
sudo yum install -y docker-ce docker-ce-cli containerd.io docker-compose-plugin   
curl -L https://github.com/docker/compose/releases/download/$VERSION/docker-compose-linux-x86_64 -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
