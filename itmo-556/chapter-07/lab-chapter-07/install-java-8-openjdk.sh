#!/bin/bash

cat << EOT >> ~/.bashrc 



########## Inserted by Jeremy
# sets JAVA_HOME environment variable to /usr
export JAVA_HOME=/usr 
# sets HADOOP_HOME environment variable to /datapool1/hadoop-2.8.5 
export HADOOP_HOME=/datapool1/hadoop-2.8.5
#sets the environment vairable PATH 
export PATH=/sbin:/usr/sbin:/bin:/usr/bin:/datapool1/hadoop-2.8.5/bin:/datapool1/hadoop-2.8.5/sbin:/usr/local/bin
#sets the HADOOP_CLASSPATH environment variable to /usr/lib/jvm/java-8-openjdk-amd64/lib/tools.jar
export HADOOP_CLASSPATH=/usr/lib/jvm/java-8-openjdk-amd64/lib/tools.jar
EOT

# http://askubuntu.com/questions/493460/how-to-install-add-apt-repository-using-the-terminal
# installs the software properties common with yes prompt
sudo apt-get update && sudo apt-get install -y software-properties-common 
# http://blog.cloudera.com/blog/2009/11/hadoop-at-twitter-part-1-splittable-lzo-compression/
# updates all package repositories and installing the open 8 JDK package 
sudo apt-get -y update&& 
sudo apt-get install -y openjdk-8-jdk

#installing packages with the auto accept flag Yes 
sudo apt-get -y update && sudo apt-get -y install pkgconf wget liblzo2-dev sysstat iotop vim libssl-dev libsnappy-dev libsnappy-java libbz2-dev libgcrypt11-dev zlib1g-dev lzop htop fail2ban python python-dev
#going to directory /tmp&& and using wget to download hadopp-2.8.5.tar.gz and place it in /temp

## Changes the present directory to the tmp folder. The && means that the next command continues in the same line. With wget, we are downloading the hadoop tar file from the internet.  
cd /tmp&& wget http://archive.apache.org/dist/hadoop/common/hadoop-2.8.5/hadoop-2.8.5.tar.gz
## Extracting the tar contents into the /tmp folder
tar -xvzf hadoop-2.8.5.tar.gz 
## The extracted folder is moved to the /datapool1 folder. 
mv /tmp/hadoop-2.8.5 /datapool1
## Making a new directory under home directory
mkdir ~/.ssh

## changing the permissions to rw- for id_rsa and then it is copied to the new directory created under home ~/.ssh. With the && the config file is also copiedto the ~/.ssh. 

chmod 600 ~/hajek/itmd-521/hadoop-conf/production-cluster/id_rsa 
cp -v ~/hajek/itmd-521/hadoop-conf/production-cluster/id_rsa ~/.ssh&& 
cp -v ~/hajek/itmd-521/hadoop-conf/production-cluster/config ~/.ssh 
#The contents of the file id_rsa.pub is appended into the file authorized_keys
cat ~/hajek/itmd-521/hadoop-conf/production-cluster/id_rsa.pub >> ~/.ssh/authorized_keys

## Re-naming native to native-old
mv -v /datapool1/hadoop-2.8.5/lib/native /datapool1/hadoop-2.8.5/lib/native-old

## Copying the gzipped tar file  native.tar.gz to lib folder 
cp -v ~/hajek/itmd-521/hadoop-conf/compiled-native/native.tar.gz /datapool1/hadoop-2.8.5/lib

# Navigating to the lib folder and extracting the native.tar.gz file.
cd /datapool1/hadoop-2.8.5/lib/
tar -xzvf native.tar.gz

#Printing the line 
echo "Extracted new native libraries\n"

# stream editor is used and -i will change and re-write to the file. The IP address will be searched and changed.  
sudo sed -i "s/ignoreip = 127.0.0.1\/8/ignoreip = 127.0.0.01\/8 64.131.111.178/g" /etc/fail2ban/jail.conf
# http://www.fail2ban.org/wiki/index.php/MANUAL_0_8#Jails
# Stream editor used under sudo for privaledges and -i changes the bantime from 600 to -1 
sudo sed -i "s/bantime=600/bantime=-1/g" /etc/fail2ban/jail.conf

# restaring the fail2ban service
sudo service fail2ban restart
