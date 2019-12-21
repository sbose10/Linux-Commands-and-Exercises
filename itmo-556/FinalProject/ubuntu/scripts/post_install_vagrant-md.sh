#!/bin/bash 
set -e
set -v

# http://superuser.com/questions/196848/how-do-i-create-an-administrator-user-on-ubuntu
# http://unix.stackexchange.com/questions/1416/redirecting-stdout-to-a-file-you-dont-have-write-permission-on
# This line assumes the user you created in the preseed directory is vagrant
echo "%admin  ALL=NOPASSWD: ALL" | sudo tee -a /etc/sudoers.d/init-users
sudo groupadd admin
sudo usermod -a -G admin vagrant

# Installing vagrant keys
wget --no-check-certificate 'https://raw.github.com/mitchellh/vagrant/master/keys/vagrant.pub'
sudo mkdir -p /home/vagrant/.ssh
sudo chown -R vagrant:vagrant /home/vagrant/.ssh
cat ./vagrant.pub >> /home/vagrant/.ssh/authorized_keys
sudo chown -R vagrant:vagrant /home/vagrant/.ssh/authorized_keys

sudo chown vagrant:vagrant /etc/hosts
sudo echo " 192.168.33.10 dbhost.example.com dbhost " >> /etc/hosts
sudo echo " 192.168.33.11 webhost.example.com webhost " >> /etc/hosts

echo "All Done!"

##################################################
# Add User customizations below here
##################################################
#An entry to /etc/hosts file of: 192.168.33.11 webhost.example.com webhost
sudo chown vagrant:vagrant /etc/hosts
sudo echo "192.168.33.10 dbhost.example.com dbhost " >> /etc/hosts
sudo echo "192.168.33.11 webhost.example.com webhost " >> /etc/hosts
#Secret Management
echo "DBPASS="rootp"; export DBPASS" >>/home/vagrant/.bashrc
export DEBIAN_FRONTEND=noninteractive
FIRSTPASS="mariadb-server mysql-server/root_password password $DBPASS"
SECONDPASS="mariadb-server mysql-server/root_password_again password $DBPASS"
echo $FIRSTPASS | sudo debconf-set-selections
echo $SECONDPASS | sudo debconf-set-selections

#Install mysql
sudo apt-get install -y mysql-server


sudo sed -i "s|127.0.0.1|192.168.33.10|" /etc/mysql/mysql.conf.d/mysqld.cnf

#Firewalld
sudo apt-get install -y firewalld

sudo firewall-cmd --zone=public --add-port=22/tcp --permanent
sudo firewall-cmd --zone=public --add-port=3306/tcp --permanent
sudo firewall-cmd --zone=public --add-service=ssh
sudo firewall-cmd --zone=internal --add-source=192.168.33.11
sudo firewall-cmd --zone=public --add-service=mysql

# Install zfs 
sudo apt-get install -y zfsutils-linux


#sudo systemctl restart mysql



sudo mysql -u root -e "CREATE USER 'pootu'@'localhost' IDENTIFIED BY 'passu';"
sudo mysql -u root -e "GRANT ALL PRIVILEGES ON *.* TO 'pootu'@'localhost';"
sudo mysql -u root -e "FLUSH PRIVILEGES;"


sudo mysql -u root -e "CREATE USER 'pootl'@'192.168.33.10' IDENTIFIED BY 'passl';"
sudo mysql -u root -e "GRANT ALL PRIVILEGES ON *.* TO 'pootl'@'192.168.33.10';"
sudo mysql -u root -e "FLUSH PRIVILEGES;"


sudo mysql -u root -e "CREATE USER 'pootr'@'192.168.33.11' IDENTIFIED BY 'passr';"
sudo mysql -u root -e "GRANT ALL PRIVILEGES ON *.* TO 'pootr'@'192.168.33.11';"
sudo mysql -u root -e "FLUSH PRIVILEGES;"



sudo mysql -u root -e "CREATE DATABASE IF NOT EXISTS comments; "

#sudo mysql -u root -e "USE comments;"

sudo mysql -u root -e "CREATE TABLE comments.comment 
(
ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
PosterName VARCHAR(32),
Title VARCHAR(32),
Content VARCHAR(500)
);"

sudo touch /tmp/insert.sql

sudo chmod 777 /tmp/insert.sql

cat << EOT >> /tmp/insert.sql
INSERT INTO comments.comment (id, Title, PosterName, Content) Values (0,"New Idea","Abraham Lincoln","Four score and seven years ago our fathers brought forth on this continent, a new nation, conceived in Liberty, and dedicated to the proposition that all men are created equal."),(0,"Someone is wrong on the internet","Annie Mouse","https://www.xkcd.com/386/"),(0,"Presidential Quote","President James Madison","If men were angels, no government would be necessary");
EOT

echo "inserted"

sudo mysql -u root  < /tmp/insert.sql

sudo zpool create datapool mirror /dev/sdb /dev/sdc
#Stop mysql
sudo systemctl stop mysql

#Copy mysql
sudo rsync -av /var/lib/mysql /datapool

#Rename the folders
sudo mv /var/lib/mysql /var/lib/mysql.bak

#Make the changes in the mysqld.cnf
sudo sed -i "s|/var/lib/mysql|/datapool/mysql|g" /etc/mysql/mysql.conf.d/mysqld.cnf

sudo sed -i "s|/var/lib/mysql|/datapool/mysql|g" /etc/apparmor.d/tunables/alias

#Make the changes in the alias
sudo sed -i '$ a alias /var/lib/mysql/ -> /datapool/mysql,' /etc/apparmor.d/tunables/alias

#Restart apparmor
sudo systemctl restart apparmor

sudo mkdir /var/lib/mysql/mysql -p

#sudo systemctl start mysql


#sudo sed -i "s|127.0.0.1|192.168.33.10|g" /etc/mysql/mysql.conf.d/mysqld.cnf

#Create a zpool snapshot

sudo zfs snapshot datapool@abc

#sudo zfs list
