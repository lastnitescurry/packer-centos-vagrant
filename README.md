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

- https://github.com/NREL/vagrant-boxes
- https://github.com/boxcutter/centos
- https://github.com/geerlingguy/packer-centos-7
- https://github.com/hfm/packer-centos-7
- https://github.com/search?utf8=%E2%9C%93&q=packer-centos-7
