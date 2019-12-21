#!/bin/bash 
set -e
set -v


# http://unix.stackexchange.com/questions/1416/redirecting-stdout-to-a-file-you-dont-have-write-permission-on
# This line assumes the user you created in the preseed directory is vagrant
# http://chrisbalmer.io/vagrant/2015/07/02/build-rhel-centos-7-vagrant-box.html
# Read this bug track to see why this line below was the source of a lot of trouble.... 
# https://github.com/mitchellh/vagrant/issues/1482
#echo "Defaults requiretty" | sudo tee -a /etc/sudoers.d/init-users
# Need to add this first as wget not part of the base package...
sudo yum install -y wget
#################################################################################################################
# code needed to allow for vagrant to function seamlessly
#################################################################################################################
echo "%admin  ALL=NOPASSWD: ALL" | sudo tee -a /etc/sudoers.d/init-users
sudo groupadd admin
sudo usermod -a -G admin vagrant

# Installing vagrant keys
wget --no-check-certificate 'https://raw.github.com/mitchellh/vagrant/master/keys/vagrant.pub'
sudo mkdir -p /home/vagrant/.ssh
sudo chown -R vagrant:vagrant /home/vagrant/.ssh
cat ./vagrant.pub >> /home/vagrant/.ssh/authorized_keys
sudo chown -R vagrant:vagrant /home/vagrant/.ssh/authorized_keys

#########################
# Add customization here
#########################
sudo chown vagrant:vagrant /etc/hosts
sudo chown vagrant:vagrant /etc/systemd/system/
sudo echo "192.168.33.10 dbhost.example.com dbhost " >> /etc/hosts
sudo echo "192.168.33.11 webhost.example.com webhost " >> /etc/hosts
sudo yum install -y httpd
sudo systemctl start httpd.service
sudo yum install -y mysql
sudo yum install -y php php-mysql
#You can generate the cert manually or there is a process to automate the creation of a self-signed cert
sudo yum install -y mod_ssl
sudo mkdir /etc/ssl/private
sudo chmod 700 /etc/ssl/private
sudo openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/apache-selfsigned.key -out /etc/ssl/certs/apache-selfsigned.crt -subj "/C=US/ST=IL/L=Chicago/O=CompanyName/OU=ITDept/CN=example.com/emailAddress=oss@example.com"
sudo openssl dhparam -out /etc/ssl/certs/dhparam.pem 2048
cat /etc/ssl/certs/dhparam.pem | sudo tee -a /etc/ssl/certs/apache-selfsigned.crt
sudo sed -i "s/\#DocumentRoot/DocumentRoot/" /etc/httpd/conf.d/ssl.conf
sudo sed -i "s/\#ServerName/ServerName/" /etc/httpd/conf.d/ssl.conf
sudo sed -i "s/www\.example\.com\:443/192\.168\.33\.11/" /etc/httpd/conf.d/ssl.conf
sudo sed -i "s/SSLProtocol/\#SSLProtocol/" /etc/httpd/conf.d/ssl.conf
sudo sed -i "s/SSLCipherSuite/\#SSLCipherSuite/" /etc/httpd/conf.d/ssl.conf
OLDFILE=$(sudo cat /etc/httpd/conf.d/ssl.conf | grep SSLCertificateFile | awk '!/^#/ && NF' | cut -d ' ' -f2)
NEWFILE="/etc/ssl/certs/apache-selfsigned.crt"
sudo sed -i "s|$OLDFILE|$NEWFILE|g" /etc/httpd/conf.d/ssl.conf
OLDKEY="$(sudo cat /etc/httpd/conf.d/ssl.conf | grep SSLCertificateKeyFile | cut -d ' ' -f2)"
NEWKEY="/etc/ssl/private/apache-selfsigned.key"
sudo sed -i "s|$OLDKEY|$NEWKEY|g" /etc/httpd/conf.d/ssl.conf
sudo chown vagrant:vagrant /etc/httpd/conf.d/ssl.conf
sudo echo "SSLCipherSuite EECDH+AESGCM:EDH+AESGCM:AES256+EECDH:AES256+EDH" >> /etc/httpd/conf.d/ssl.conf
echo "SSLProtocol All -SSLv2 -SSLv3" >> /etc/httpd/conf.d/ssl.conf
echo "SSLHonorCipherOrder On" >> /etc/httpd/conf.d/ssl.conf
echo "Header always set Strict-Transport-Security \"max-age=63072000; includeSubdomains\"" >> /etc/httpd/conf.d/ssl.conf
echo "Header always set X-Frame-Options DENY" >> /etc/httpd/conf.d/ssl.conf
echo "Header always set X-Content-Type-Options nosniff" >> /etc/httpd/conf.d/ssl.conf
echo "SSLCompression off " >> /etc/httpd/conf.d/ssl.conf
echo "SSLUseStapling on " >> /etc/httpd/conf.d/ssl.conf
echo "SSLStaplingCache \"shmcb:logs/stapling-cache(150000)\"" >> /etc/httpd/conf.d/ssl.conf
sudo apachectl configtest
sudo systemctl restart httpd.service
#FIREWALL SETTINGS
sudo firewall-cmd --zone=public --add-port=22/tcp --permanent
sudo firewall-cmd --zone=public --add-port=80/tcp --permanent
sudo firewall-cmd --zone=public --add-port=443/tcp --permanent
sudo firewall-cmd --zone=public --add-service=ssh
sudo firewall-cmd --zone=public --add-service=http
sudo firewall-cmd --zone=public --add-service=https
sudo systemctl restart firewalld
sudo systemctl restart httpd.service
sudo systemctl enable httpd.service


#Disk Partition
sudo mkdir -p /mnt/disk2
sudo mkdir -p /mnt/disk3
sudo yum install -y lvm2
sudo pvcreate /dev/sdb
sudo pvcreate /dev/sdc
sudo vgcreate vg_fpcent /dev/sdb /dev/sdc
sudo lvcreate -n vol_fpcent --size 20G /dev/vg_fpcent
#mount the file partition
sudo yum install -y xfsprogs
sudo mkfs.xfs -f /dev/vg_fpcent/vol_fpcent
sudo touch /etc/systemd/system/fpcent.mount
sudo chown vagrant:vagrant /etc/systemd/system/fpcent.mount
cat << EOT >> /etc/systemd/system/fpcent.mount

[Unit]
Description= Mount

[Mount]
What=/dev/disk/by-uuid/
Where=/mnt/disk2 
Type=xfs
Options=defaults

[Install]
WantedBy=multi-user.target
EOT

UUID="$(lsblk -f| grep vg_fpcent | cut -d ' ' -f17)"

sed -i "s/\/dev\/disk\/by\-uuid\//\/dev\/disk\/by\-uuid\/\$UUID/" /etc/systemd/system/fpcent.mount


#PHP Index

echo "creating php"

#sudo chmod 777 /var/www/html

cd /var/www/html/ 

sudo touch /var/www/html/index.php

sudo chown vagrant:vagrant /var/www/html/index.php

#sudo chmod 777 /var/www/html/index.php

sudo cat << EOT >> /var/www/html/index.php

<?php
echo "hello from php";
?>

<html>
<head><title>Hello World</title></head>
<body>

<h1>Hello Wurld</h1>

Yes I know it is mispelled but I think it looks better with a 'u' - don't you agree?
<br />
<a href='test-select.php'>test-select.php</a>
<br />

</body>
</html>
EOT

#PHP TEST_SELECT

cd /var/www/html
echo "creating test-select-php"

#sudo chmod 777 /var/www/html

cd /var/www/html/ 

sudo touch /var/www/html/test-select.php

sudo chown vagrant:vagrant /var/www/html/test-select.php

#sudo chmod 777 /var/www/html/test-select.php

sudo cat << EOT >> /var/www/html/test-select.php
<?php
\$dbServerName = "192.168.33.10";
\$dbUsername = "pootr";
\$dbPassword = "passr";
\$dbName = "comments";

// create connection
\$conn = new mysqli(\$dbServerName, \$dbUsername, \$dbPassword, \$dbName);

// check connection
if (\$conn->connect_error) {
    die("Connection failed: " . \$conn->connect_error);
}
echo "Connected successfully";
echo " ";


\$sql = "SELECT * FROM comment";
\$result = \$conn->query(\$sql);

if (\$result->num_rows > 0) {
    // output data of each row
   while(\$row = \$result->fetch_assoc()) {

  //echo "id: " . \$row["id"]. " - Name: " . \$row["PosterName"]. "- Title: " . \$row["Title"]. "- Content: " . \$row["Content"]. "     <br>";
    echo " id = " . \$row['ID'] . "<br />";
    echo " Name = " . \$row['PosterName'] . "<br />";
    echo " Title = " . \$row['Title'] . "<br />";
    echo " Content = " . \$row['Content'] . "<br />";
}
} else {
    echo "0 results";
}


?>
EOT

