<H4>steps to execute ansible playbook to setup Apache Jenkins build slaves</H4>

<hr>
<b><p>step1<h5>update the hosts file</h5></p></b>
```
[gkesavan@HW11151 ~/work/toolchain (master)]$ cat hosts
[ubuntu-slaves]
priapus.apache.org
pomona.apache.org
penates.apache.org
pietas.apache.org
proserpina.apache.org

[hadoop-slaves]
asf90[0:5].gq1.ygridcore.net
asf9[06:11].gq1.ygridcore.net

[ubuntu-slaves:vars]
jdk_version=7
jvm_data_model=32
ansible_ssh_user=<sshuser>
update_etc_hosts=false

[hadoop-slaves:vars]
jdk_version=6
jvm_data_model=64
ansible_ssh_user=<sshuser>
update_etc_hosts=true

[slaves:children]
ubuntu-slaves
hadoop-slaves
```

<p>To run on specific hosts comment out other host info or other option is to commentout the label say ubuntu-slave , if only want to run the playbooks on hadoop-slaves. Also, set the <sshuser> to point to a userid that has sudo access on the slaves.</p>
<hr>

<b><p>step2<h5>update init.yml</h5></p></b>
<p> If, execting ansible playbook for the first time you may have to enable couple to flags.</p> 

<b><p>To setup p/w less ssh from master to slave</p></b>

```
setup_master_key: true
<path to jenkins master pub key> - add the path to the jenkins master pub key

```
<b><p>To setup jenkins user with crypted password
copy the password from one of the jenins slaves shadow file 
and paste it against </p></b>

```
pass_word: and also set setup_password: true
```
<b><p>and similary for setting up the clover license, installing jdk and copying nexus password for ci user</p></b>

<hr>
<b><p>step3<h5>To execute ansible playbooks.</h5> </p> </b>

```
ansible-playbook -i hosts init.yml  ``` 

<p>This would execute all the modules which doesnt have any tag definition.</p>

``` 
ansible-playbook -i hosts init.yml -vv --tags install_libraries,update_configs 
```
<p>This would execute install_libraries and update_configs tags. Tags are defined for these two main task as we continue to update the configs and install new set of libraries. We can introduce more tags as needed.</p>
