####toolchain
=========

######build toolchain based on Ansible - http://docs.ansible.com 

1. Establish connectivity b/w the ansible control machine and the ASF jenkins slaves
2. Installing Ansible 
   * using pip 
     ** $ sudo easy_install pip
     ** $ sudo pip install ansible

3. Clone toolchain - this github repo

4. git clone git@github.com:apache/toolchain.git

   cd toolchain

5. Edit the hosts/ansible.cfg file accordingly

6. Edit init.yml to point to jenkins master pub key.

7. run ansible-playbook 
   * ansible-playbook init.yml

