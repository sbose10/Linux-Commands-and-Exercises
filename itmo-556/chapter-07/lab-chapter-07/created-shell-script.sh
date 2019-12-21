#!/bin/bash

sudo apt-get update

sudo apt-get install -y openjdk-8-jdk

sudo apt-get install -y software-properties-common

cd /tmp; wget http://archive.apache.org/dist/hadoop-2.8.5.tar.gz
tar -xvzf hadoop-2.8.5.tar.gz

mv /tmp/hadoop-2.8.5 /datapool1

sudo apt-get -y update; sudo apt-get -y install pkgconf wget liblzo2-dev sysstat iotop vim libssl-dev libsnappy-dev libsnappy-java libbz2-dev libgcrypt11-dev zlib1g-dev lzop htop fail2ban

do-release-upgrade > /tmp/distupgrade.out

RESULT=`sudo find / -name tools.jar`
export $RESULT
echo $RESULT

cat << EOT >> ~/.bashrc
######### Inserted by Sonita
export JAVA_HOME=/usr
export HADOOP_HOME=$HOME/hadoop-2.8.5
export PATH=$PATH:$HADOOP_HOME/bin:$HADOOP_HOME/sbin
export HADOOP_CLASSPATH=/usr/lib/jvm/java-8-openjdk-amd64/lib/tools.jar
EOT
