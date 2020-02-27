# packer-centos-vagrant
Generate CentOS images with latest updates and tools (puppet, docker, ansible...) I am intersted in.

Yes there are many fine pre configured boxes, but
- I am curious
- I dislike the repeated downloads of updates for each vm...

Previously I used NREL CentOS 6 boxes, but they have not done a CentOS 7 box.
This is my version of a CentOS 7 box

## Build Packer Box

    pushd packer
    rmdir /s /q packer_cache
    rmdir /s /q builds
    set PACKER_LOG=1
    set PACKER_LOG_PATH=packerlog.txt
    packer build CentOS7.json
    popd

## Test built Packer Box

### Run

    pushd test
    rmdir /s /q .vagrant
    vagrant up
    popd

### Halt and Destroy

    vagrant destroy -f

## Add Box to Local Vagrant Cache
### Add

    vagrant box add lastnitescurry/centos7 file://packer/builds/virtualbox-centos7.box

### Remove Box from Local Vagrant Cache

    vagrant box remove lastnitescurry/centos7


## Clean

    rmdir /s /q packser\packer_cache
    rmdir /s /q packer\builds
    rmdir /s /q test\.vagrant

## References
### Packer and Vagrant

- https://github.com/NREL/vagrant-boxes
- https://github.com/boxcutter/centos
- https://github.com/geerlingguy/packer-centos-7
- https://github.com/hfm/packer-centos-7
- https://github.com/search?utf8=%E2%9C%93&q=packer-centos-7
- http://digitalsandwich.com/packer-built-centos-vagrant-base-box-automated-build
- http://softwaretester.info/create-simple-centos-7-virtualbox-with-packer
- http://mikestechblog.com/ubuntu-antenna/scp-ambiguous-target-error-solved
- https://www.packer.io/docs/other/environment-variables.html

### Ansible

- https://github.com/geerlingguy/packer-centos-7

### RHEL

- https://access.redhat.com/documentation/en-US/Red_Hat_Enterprise_Linux/7/html/Installation_Guide/sect-kickstart-syntax.html
- https://access.redhat.com/documentation/en-US/Red_Hat_Enterprise_Linux/7/html/System_Administrators_Guide/s1-Changing_the_Keyboard_Layout.html#s2-Listing_Available_Keymaps

### Centos 7.1810 (7.6?) Release
- https://wiki.centos.org/Manuals/ReleaseNotes/CentOS7.1810

### Odds and Sods

- http://searchservervirtualization.techtarget.com/blog/The-Virtualization-Room/Using-VRDP-to-view-VirtualBox-virtual-machines-remotely
- https://www.vagrantup.com/docs/cli/rdp.html
- https://coderwall.com/p/m7gscq/rdp-server-on-vagrant-box

### Virtual Box linked clones

- https://www.vagrantup.com/docs/virtualbox/configuration.html
