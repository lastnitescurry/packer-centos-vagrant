# packer-centos-vagrant
Generate CentOS images with latest updates and tools (puppet, docker, ...) I need

Previously I used NREL CentOS 6 boxes, but they have not done a CentOS 7 box.
This is my version of a CentOS 7 box

## Build Packer Box

    pushd packer
    rmdir /s /q packer_cache
    rmdir /s /q builds
    packer build CentOS-7.3.json

## References
### Packer and Vagrant

- https://github.com/NREL/vagrant-boxes
- https://github.com/boxcutter/centos
- https://github.com/geerlingguy/packer-centos-7
- https://github.com/hfm/packer-centos-7
- https://github.com/search?utf8=%E2%9C%93&q=packer-centos-7
- http://digitalsandwich.com/packer-built-centos-vagrant-base-box-automated-build/
- http://softwaretester.info/create-simple-centos-7-virtualbox-with-packer/

### RHEL

- https://access.redhat.com/documentation/en-US/Red_Hat_Enterprise_Linux/7/html/Installation_Guide/sect-kickstart-syntax.html
- https://access.redhat.com/documentation/en-US/Red_Hat_Enterprise_Linux/7/html/System_Administrators_Guide/s1-Changing_the_Keyboard_Layout.html#s2-Listing_Available_Keymaps
