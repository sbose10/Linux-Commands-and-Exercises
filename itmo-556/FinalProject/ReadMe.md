Final Project - ITMO 556 Into to Open Source Software

Created two folders which contains the files related to the two Operating systems

centos
ubuntu

Commands to be run:
Ubuntu
1. Open Windows Power Shell
2. Run packer build from packer-scripts : packer build ubuntu18043-vanilla-multi-disks.json
3. vagrant box add ../build/ubuntu18043-vanilla-1810-server-md-virtualbox-1575193638.box --name ubuntu_vanilla_1810
4. vagrant init ubuntu_vanilla_1810
5. Remove the '#' of private network to 192.168.33.10
6. vagrant reload --provision
7. vagrant up 
8. vagrant ssh 

Commands to run inside Ubuntu
ip a sh 
sudo zpool status 
sudo zfs list 
sudo zfs list -t snapshot


Centos
1. Open Windows Power Shell
2. Run packer build from packer-scripts : packer build centos-7-vanilla-multi-disks.json
3. vagrant box add ../build/centos-vanilla-1810-server-md-virtualbox-1575193638.box --name centos_vanilla_1810
4. vagrant init centos_vanilla_1810
5. Change the network of private network to 192.168.33.11
6. vagrant reload --provision
7. vagrant up 
8. vagrant ssh 

Commands to run inside Centos
ip a sh 
lsblk 


Open browser
http:192.168.33.11 index.php
Click on test-select.php link 
Output displayed 



