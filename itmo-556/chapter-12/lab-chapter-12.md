Course: ITMO-556-01 Introduction to Open Source Software

CWID: A20447922

---
# LAB 12 – OSS

---

## 1.Using two virtual machines, while powered off, in the VirtualBox settings, enable a second network interface and set the type to host-only (details are in last chapter and the VirtualBox networking details are in chapter 03). 
a. You will be modifying the IP address of both of these systems: 192.168.33.10 and 192.168.33.11, netmask is 255.255.255.0 and gateway should be 10.0.2.2 (this is due to VirtualBox). 

b. Configure these settings in Network Manager for the respective Virtual Machines. 

c. Capture a screen shot of each system using the ping tool to ping the other IP and its results. 

d. Modify the /etc/hosts file and add an entry for both system in both systems 

e. Execute the ping command again this time using the hostname declared in the /etc/hosts file.

Scripts

 
![1](https://github.com/illinoistech-itm/sbose10/blob/master/images/Images-12/12-1-A.jpg)


![1](https://github.com/illinoistech-itm/sbose10/blob/master/images/Images-12/12-1-B.jpg.png)
 

Second Ubuntu

 ![1](https://github.com/illinoistech-itm/sbose10/blob/master/images/Images-12/12-1-C.jpg.png)

 ![1](https://github.com/illinoistech-itm/sbose10/blob/master/images/Images-12/12-1-D.jpg)

 ![1](https://github.com/illinoistech-itm/sbose10/blob/master/images/Images-12/12-1-E.jpg)

Hosts file edit


![1](https://github.com/illinoistech-itm/sbose10/blob/master/images/Images-12/12-1-F.jpg)


Hostname ping

 
![1](https://github.com/illinoistech-itm/sbose10/blob/master/images/Images-12/12-1-G.jpg)

---
## 2.Repeat the above exercise but deactivate NetworkManager in systemctl and activate systemd-networkd (CentOS) 
a. In addition, on Ubuntu modify the Netplan conf to use networkd and place your YAML configuration there.


 
![2](https://github.com/illinoistech-itm/sbose10/blob/master/images/Images-12/12-2-A.jpg)
 
![2](https://github.com/illinoistech-itm/sbose10/blob/master/images/Images-12/12-2-B.jpg)

![2](https://github.com/illinoistech-itm/sbose10/blob/master/images/Images-12/12-2-C.jpg)
 

Second server : 

![2](https://github.com/illinoistech-itm/sbose10/blob/master/images/Images-12/12-2-D.jpg)


![2](https://github.com/illinoistech-itm/sbose10/blob/master/images/Images-12/12-2-E.jpg)
 


---

## 3.Using firewalld open port 22 permanently to allow SSH connections to your Fedora or Centos system.
 
![3](https://github.com/illinoistech-itm/sbose10/blob/master/images/Images-12/12-3-A.jpg)


![3](https://github.com/illinoistech-itm/sbose10/blob/master/images/Images-12/12-3-B.jpg)

---

## 4.Using firewalld open port 80 permanently to allow SSH connections to your Fedora or Centos system.


![4](https://github.com/illinoistech-itm/sbose10/blob/master/images/Images-12/12-4.png)
 
---

## 5.Enable the firewall to start at boot and show its status after a successful boot.

![5](https://github.com/illinoistech-itm/sbose10/blob/master/images/Images-12/12-5.jpg)
 
 ---

## 6.Install and enable firewalld on Ubuntu, deactivate UFW if it is running.
 
![6](https://github.com/illinoistech-itm/sbose10/blob/master/images/Images-12/12-6.jpg)
 

---

## 7.Create a self-singed SSL certificate
 
![7](https://github.com/illinoistech-itm/sbose10/blob/master/images/Images-12/12-7-A.jpg)
 
![7](https://github.com/illinoistech-itm/sbose10/blob/master/images/Images-12/12-7-B.jpg)
 
---
 
## 8.Create a sample PHP webpage that displays phpinfo() at https://localhost/index.php. Name the file info.php and push it to your GitHub repo a. Make sure you have installed all the pre-reqs (Apache2 and PHP)
 

![8](https://github.com/illinoistech-itm/sbose10/blob/master/images/Images-12/12-8-A.jpg)


![8](https://github.com/illinoistech-itm/sbose10/blob/master/images/Images-12/12-8-B.jpg)
 

---
 
## 9.Enable the Apache Webserver and the proper firewall port to serve you phpinfo page over https.
https://www.digitalocean.com/community/tutorials/how-to-create-a-self-signed-ssl-certificate-for-apache-in-ubuntu-18-04
 

![9](https://github.com/illinoistech-itm/sbose10/blob/master/images/Images-12/12-9-0.png)


---
 
## 10.Going to Wordpress.org and download the latest tar.gz file. Follow the 5 minute setup to configure a working Wordpress blog.


 
![10](https://github.com/illinoistech-itm/sbose10/blob/master/images/Images-12/12-10-A.jpg)

![10](https://github.com/illinoistech-itm/sbose10/blob/master/images/Images-12/12-10-B.jpg)

![10](https://github.com/illinoistech-itm/sbose10/blob/master/images/Images-12/12-10-C.jpg)

![10](https://github.com/illinoistech-itm/sbose10/blob/master/images/Images-12/12-10-D.jpg)
 
 

---
 
## 11.Repeat the install process above, this time using two servers, with static IP addresses configured, placing the MySQL database on a separate IP address -- configuring Wordpress properly and installing all needed pre-reqs.

a. Make sure to open the proper firewall ports and note that the first server will be the webserver and requires the apache2, php, php-mysql, and the php-client library only.

b. The second database server requires the Mysql-server package. Make one to be Ubuntu one to be Fedora/CentOS.


 ![11](https://github.com/illinoistech-itm/sbose10/blob/master/images/Images-12/12-11.jpg)

---
 
## 12.Install the Ghost Blogging Platform on a single OS of your choice. 
a. Install nodejs, nginx, and mysql prerequisites 
b. Create a directory in your home directory called ghost-files. Execute the install tutorial in the next step in that directory. 
c. Follow the install instructions at Ghost.org to install the Ghost blogging platform.
 

 
![12](https://github.com/illinoistech-itm/sbose10/blob/master/images/Images-12/12-12-A.jpg)

![12](https://github.com/illinoistech-itm/sbose10/blob/master/images/Images-12/12-12-B.jpg)
 

---
 
## 13.Create a fresh Ubuntu Virtual Machine and create a shell script that will automate the installation of the following and their dependencies: 
a. Install and Active Firewalld, open ports 22, 80, 443 

b. Download and install latest Wordpress tarball (look at using sed -i to do an inplace substitution of the default values in the wordpress config file) 

 
c. Firewall to only allow single IP connection for SSH and port 80 and 443 (that IP being a second virtual machine with a static IP assigned) 

d. Modify /etc/hosts to include these entries and take a screenshot of the output of your firewall status as well as you accessing the Wordpress blog via the browser using the hostname configured in /etc/hosts on the remote machine.


Script : 
 
![13](https://github.com/illinoistech-itm/sbose10/blob/master/images/Images-12/12-13-A.jpg)


Edited the IP in /etc/hosts
 
![13](https://github.com/illinoistech-itm/sbose10/blob/master/images/Images-12/12-13-B.jpg)

 
![13](https://github.com/illinoistech-itm/sbose10/blob/master/images/Images-12/12-13-C.jpg)

Firewalld status

 ![13](https://github.com/illinoistech-itm/sbose10/blob/master/images/Images-12/12-13-D.jpg)


--- 



