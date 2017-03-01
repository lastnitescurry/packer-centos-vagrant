# NREL vagrant-boxes
# http://yum.puppetlabs.com/el/6/dependencies/x86_64/
# Install Puppet
# https://docs.docker.com/engine/installation/linux/centos/

yum install -y yum-utils
yum-config-manager --add-repo https://docs.docker.com/engine/installation/linux/repo_files/centos/docker.repo
yum makecache fast
yum -y install docker-engine
