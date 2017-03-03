# https://docs.docker.com/engine/installation/linux/centos/
yum install -y yum-utils
yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
yum makecache fast
yum -y install docker-ce

# https://docs.docker.com/engine/installation/linux/linux-postinstall/#configure-docker-to-start-on-boot
systemctl enable docker
#systemctl start docker
groupadd docker
usermod -aG docker vagrant
