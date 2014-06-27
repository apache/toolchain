toolchain
=========

build toolchain based on Ansible - http://docs.ansible.com 

1) Establish connectivity b/w the ansible control machine and the ASF jenkins slaves

2) Installing Ansible 

* http://docs.ansible.com/intro_installation.html#installation

3) Clone toolchain - this github repo

git clone git@github.com:apache/toolchain.git

cd toolchain

4) run ansible-playbook 

ansible-playbook -i hosts init.yml  -v -f6

