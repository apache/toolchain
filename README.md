toolchain
=========

build toolchain based on Ansible - http://docs.ansible.com 

1) Establish connectivity b/w the ansible control machine and the ASF jenkins slaves

2) Installing Ansible 
   
   --using pip 
     
     $ sudo easy_install pip

     $ sudo pip install ansible



3) Clone toolchain - this github repo

git clone git@github.com:apache/toolchain.git

cd toolchain

4) Edit the hosts file accordingly
5) Edit the ansible.cfg file accordingly
6) Edit init.yml to point to jenkins master pub key.


4) run ansible-playbook 

ansible-playbook init.yml

