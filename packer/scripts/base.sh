echo "Base install"

sed -i "s/^.*requiretty/#Defaults requiretty/" /etc/sudoers

# Fix slow DNS lookups with VirtualBox's DNS proxy:
# https://github.com/mitchellh/vagrant/issues/1172#issuecomment-9438465
echo 'options single-request-reopen' >> /etc/resolv.conf

# https://www.cyberciti.biz/faq/installing-rhel-epel-repo-on-centos-redhat-7-x/
yum -y install epel-release

yum -y install gcc make gcc-c++ kernel-devel-`uname -r` zlib-devel openssl-devel readline-devel perl wget dkms nfs-utils bzip2

# Make ssh faster by not waiting on DNS
echo "UseDNS no" >> /etc/ssh/sshd_config
