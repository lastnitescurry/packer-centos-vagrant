# Testing Packer Box
### Install Box to Local Vagrant Cache

    vagrant box add lastnitescurry/centos73 file:///C:/Workspaces/Neon1/packer-centos-7-puppet-docker/packer/builds/virtualbox-centos7.box

    vagrant box add lastnitescurry/centos73 file://../packer/builds/virtualbox-centos7.box

### Remove Box from Local Vagrant Cache

    vagrant box remove lastnitescurry/centos73

### Run

    vagrant up

### Halt and Destroy

    vagrant destroy -f
