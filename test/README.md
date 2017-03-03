# Testing Packer Box
### Install Box to Local Vagrant Cache

    vagrant box add lastnitescurry/centos73 file://../packer/builds/virtualbox-centos7.box

### Remove Box from Local Vagrant Cache

    vagrant box remove lastnitescurry/centos73

### Run

    vagrant up

### Halt and Destroy

    vagrant destroy -f

### Odds and Sods

- http://searchservervirtualization.techtarget.com/blog/The-Virtualization-Room/Using-VRDP-to-view-VirtualBox-virtual-machines-remotely
- https://www.vagrantup.com/docs/cli/rdp.html
- https://coderwall.com/p/m7gscq/rdp-server-on-vagrant-box

### Virtual Box linked clones

- https://www.vagrantup.com/docs/virtualbox/configuration.html
