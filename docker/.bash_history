vim /etc/ssh/sshd_config 
systemctl restart sshd
hostnamectl set-hostname docker
bash
vim /etc/network/interfaces
ip a
systemctl restart networking.service 
reboot
ip a
cat /etc/network/interfaces
reboot
ip a
vim /etc/network/interfaces
reboot
ip a
ping 8.8.8.8
ping google.com.br
cat /etc/resolv.conf 
vim /etc/resolvconf/resolv.conf.d/base 
reboot
cat /etc/hosts
                                                                                  apt-get install python-minimal
apt-get install apt-transport-https ca-certificates curl software-properties-common -y
init 0
exit
puppet resource user
puppet resource user www-data
puppet resource user sysadmin
puppet resource user sysadmin ensure=present
puppet resource user sysadmin
puppet resource service ntp
puppet resource package
puppet resource package sl
puppet resource package sl ensure=present
puppet resource package sl ensure=absent
puppet resource package sl ensure=present
puppet resource package sl ensure=absent
puppet resource package sl
puppet resource package sl ensure=3.03-17build1
facter
facter hostname
facter ipaddress
hostname -f
puppet -v
puppet --version
exit
cd /etc/puppetlabs/
ls
cd puppet/
ls
vim puppet.conf 
puppet agent -t
exit
puppet resource package sl
puppet resource package sl ensure=absent
puppet agent -t
puppet resource package sl
exit
vim /etc/puppetlabs/puppet/puppet.conf 
puppet agent -t --noop
exit
puppet agent -t
docker --version
ssh automation
docker run -it --name hello ubuntu:xenial /bin/bash
docker container ps
docker container ls -a
docker container a551 start
docker container start a551
docker container ls
docker container attach hello
docker container ls
docker container exec -it hello /bin/bash
docker container ls
docker container exec -it hello /bin/bash
docker container exec -it hello /bin/sh
docker container exec -it hello /bin/bash
cd ..
exit
docker run -dit --name hello ubuntu:xenial /bin/bash
docker run -dit ubuntu:xenial /bin/bash
docker ps -a
docker container ls -a
docker container ls
docker container ls -a
docker container hello start
docker container start hello
docker run -dit --restart always ubuntu:xenial /bin/bash
docker container ls
ps aux | grep bin/bash
docker container hello down
docker container down hello
docker container stpop hello
docker container stop hello
ps aux | grep bin/bash
docker container stats 
docker container ls
docker container exec -it hello /bin/bash
docker container ls
docker container ls -a
docker container rm *
docker container rm a55170c77cc3 d2b9c7b0a60e 30a0f64b3d1b
docker container rm -f a55170c77cc3 d2b9c7b0a60e 30a0f64b3d1b
docker container ls
docker container ls -a
docker run -dit --restart always ubuntu:xenial /bin/bash
ps aux | grep docker
docker container rm a700ced827332f30474a6684c454ff9e9aeda27d74d64f89ed1b144b71a6d902
docker container rm -f a700ced827332f30474a6684c454ff9e9aeda27d74d64f89ed1b144b71a6d902
ps aux | grep docker
touch arq01
ls
cd /var/lib/docker/
ls -l
cd -
docker container ls
docker container ls -a
docker run -dit --name hello ubuntu:xenial /bin/bash
docker container cp arq01 hello:/tmp/
docker container exec hello ls -l /tmp
rm -rf arq01
ls
docker container cp hello:/tmp/arq01 arq01
ls
docker images ls
docker images ls -a
docker image
docker image ls
docker images
docker image ls
docker image pull nginx
docker image ls
docker search debian
docker image pull debian
docker image rm debian
ls
vim Dockerfile
scp root@devops:/etc/keys/key /root/id_rsa
ssh-keygen
cp ~/.ssh/id_rsa .
cp ~/.ssh/id_rsa.pub .
ls
vim puppet.conf
vim config
ip a
ls -l
vim Dockerfile 
docker build -t template .
cd /var/lib/docker/
ls
cd /var/log/
ls
docker container stats
ls
docker build -t template .
docker run -it --name puppet-teste template
vim Dockerfile 
docker build -t template .
docker run -it --name puppet template
vim Dockerfile 
docker container ls
docker attach c24924b0d845
docker commit puppet-teste template
docker images
docker image ls 
cd /var/lib/docker/
ls
cd image/
s
ls
cd overlay2/
ls
cd layerdb/
ls
cd ..
c d..
cd ..
ls
cd /etc/default/
ls
vim docker 
vim /etc/docker/key.json 
cd /etc/docker
ls
cd ..
ls
cd ~
docker volume create --name dados
cd /var/lib/docker/volumes/
ls
cd dados/
ls
cd _data/
ls
cd -
ls
cd ~
docker run -it --name hello3 -v dados:/dados ubuntu:xenial /bin/bash
ls /var/lib/docker/volumes/dados/_data/
ip a
docker network create --subnet 172.18.0.0/16 dexterlan
docker run -it --network dexterlan --ip 172.18.0.10 ubuntu:xenial /bin/bash
docker network ls
docker container inspect hell3
docker container inspect hello2
docker container ls
docker container inspect 000e01f83ef0
docker container ls
docker container rm 000e01f83ef0 79e6cc16018c
docker container rm -f 000e01f83ef0 79e6cc16018c
docker run -dit --name webnode -p 80:80 nginx
docker container ls
docker container attach webnode
docker container ls
iptables -L
iptables -t NAT
iptables -t
iptables -t nat
iptables -L -t nat
curl -L https://github.com/docker/compose/releases/download/1.12.0-rc2/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
vim docker-compose.yml
docker-compose up
docker-compose up -d
docker service ls
ls
docker-compose down
docker container ls -a
docker-compose up -d
docker container ls
docker container stop 11bf67855bf8
docker container ls
docker container start 11bf67855bf8
docker container ls
vim docker-compose.yml 
docker container ls
docker-compose up -d
vim docker-compose.yml 
docker-compose up -d
docker-compose up -d --file=docker-compose.yml
docker-compose up -d
vim docker-compose.yml
docker-compose down
docker run     -ti     -d     --restart=always     --name shipyard-rethinkdb     rethinkdb
docker container ls
docker run     -ti     -d     -p 4001:4001     -p 7001:7001     --restart=always     --name shipyard-discovery     microbox/etcd -name discovery
docker run -d -p 5000:5000 --name registry --restart always registry:2
exit
ls
mkdir app
ls
cd app/
vim index.php
vim Dockerfile
vim vhost.conf
vim entrypoint.sh
ls
chmod +x entrypoint.sh 
ls
docker build -t app .
docker run -it --name app -p 80:80 app
docker container s
docker container ls
docker container rm -f 2ecb1d182ee9 cf717c007a2e 5d1eb86d408b
docker container ls
docker run -it --name app -p 80:80 app
docker container ls
docker container ls -a
docker container rm a2203
docker run -it --name app -p 80:80 app
docker run -it --name app -p 80:80 app /bin/bash
docker container ls
docker container ls -a
docker container rm -f 22eb6cdf836e a4cf42e86363  c24924b0d845 bff0161733d1
docker run -it --name app -p 80:80 app /bin/bash
docker container ls
vim Dockerfile 
docker build -t app .
docker container rm app
docker run -it --name app -p 80:80 app /bin/bash
vim Dockerfile
vim entrypoint.sh 
docker build -t app .
docker run -it --name app -p 80:80 app
docker container rm app
ls
docker run -it --name app -p 80:80 app
vim entrypoint.sh 
docker build -t app .
docker container rm app
docker run -it --name app -p 80:80 app
vim entrypoint.sh 
vim Dockerfile 
docker build -t app .
docker container rm app
docker run -it --name app -p 80:80 app /bin/bash
docker container rm app
docker run -it --name app -p 80:80 app /bin/bash
vim Dockerfile 
vim Dockerfile
docker container rm app
docker run -it --name app -p 80:80 app /bin/bash

docker container rm app
docker run -it --name app -p 80:80 app /bin/bash
vim entrypoint.sh 
docker container rm app
vim entrypoint.sh 
docker container rm app
docker run -dit --name app -p 80:80 app
docker built -t app .
docker build -t app .
docker container rm app
docker run -dit --name app -p 80:80 app
docker container rm app
docker container rm -f app
docker run -dit --name app -p 80:80 app
docker container ls
vim Dockerfile 
vim entrypoint.sh 
vim Dockerfile 
vim entrypoint.sh 
docker build -t app .
docker container rm -f app
docker run -dit --name app -p 80:80 app
docker container ls
docker container rm -f app
docker run -dit --name app -p 80:80 app /bin/bash
docker attach app
docker container rm -f app
vim Dockerfile 
vim entrypoint.sh 
docker build -t app .
docker run -dit --name app -p 80:80 app
docker container ls
telnet localhost 80
docker container rm -f app
vim Dockerfile 
docker build -t app .
vim Dockerfile 
docker build -t app .
vim Dockerfile 
docker build -t app .
vim Dockerfile 
docker build -t app .
vim Dockerfile 
docker build -t app .
vim Dockerfile 
docker build -t app .
vim Dockerfile 
docker build -t app .
docker container rm -f app
docker run -dit --name app -p 80:80 app
docker container ls
cat Dockerfile 
ls
cat index.php 
vim docker-compose.yml
ls
cp ../docker-compose.yml .
vim docker-compose.yml 
cat docker-compose.yml 
LS
ls
git init
git add .
git commit -m 'Primeiro commit'
git config --global user.name "Gabriel Pimenta"
git config --global user.email "gabriel.bonfim@4linux.com.br"
git remote add origin http://devops.dexter.com.br/devops/app.git
git push origin master
exit
docker container ls -a
docker container rm -f 4b9fa65ac35b abfd9c4ae283 77441b0b52a8 5c23f214a352 11bc2b921984 63698aa7ede3
ls
cd app/
docker-compose up
ls
cd ..
rm -rf app
ls
mkdir /etc/key -p
scp root@devops:/etc/keys/* /etc/keys
mkdir /etc/keys -p
rm -rf /etc/key
mkdir /etc/keys -p
cat /etc/keys
rm -rf /etc/keys
mkdir /etc/keys -p
scp root@devops:/etc/keys/* /etc/keys/
cd /etc/kys
cd /etc/keys
ls
cd /root/
cd .ssh/
ls
scp root@devops:/root/.ssh/config .
ss -ntpl
cd /root/
ls
docker container ls
docker container ls -a
docker-compose donw
docker-compose down
docker container ls 
docker container bfb947291971
docker container rm -f bfb947291971
exit
cd /etc/
chmod 700 keys
chmod 600 keys/*
exit
git clone git@devops.dexter.com.br:devops/app.git
ls
rm -rf app/
exit
docker container ls
docker container rm -f 3e917d490711
cd /tmp/app/
docker-compose down
exit
cd app/
ls
vim Dockerfile 
vim docker-compose.yml
ls
cat index.php 
cat vhost.conf
exit
cd app/
git add .
git commit -m 'COmmit novo'
git remote add origin git@devops.dexter.com.br:devops/app.git
ssh automation
exit
