# CentOS AWS Docker Instance script

Shell script to craete centos instance with docker, docker-compose.  

[__userData.sh__](userData.sh)   

```
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
```

Test the setup :

```
sudo docker run hello-world 
```

To add regular user to docker group use 

```
sudo usermod -aG docker $USER
```  

Reboot the system and test the setup  

```
docker run hello-world 
```

