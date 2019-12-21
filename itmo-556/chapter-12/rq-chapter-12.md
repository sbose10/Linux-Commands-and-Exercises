Name: Sonita Bose

Course: ITMO-556-01 Introduction to Open Source Software

CWID: A20447922

# Chapter 12 Review Questions


---

## 1.Using the ip2 suite of tools, which command would show your IP address? 
- [ ] a. ifconfig 
- [ ] b. ipconfig 
- [X] c. ip address show 
- [X] d. ip a sh

---

## 2.Using the ip2 suite of tools, which command would show your routing table? 
- [ ] a. ss 
- [ ] b. route 
- [ ] c. ip route show 
- [X] d. ip -r

---

## 3.What tool could you use to establish if a server is responding to requests? 
- [ ] a. pong 
- [X] b. ping 
- [ ] c. google 
- [ ] d. traceroute

---

## 4.What is the purpose of a NETMASK?

A netmask is used to divide an IP address into subnets and specify the network's avaialable hosts.
Netmasks are blocked into simple Class A, B, C, and D blocks, each one representing one of the IP octets. 

---

## 5.What is the purpose of DNS?

Domain name services allow to resolve written domain names. We do not have to know the IP addresses
of every  website. DNS servers are scattered world wide and uses lookup to route packets from source and destination.

---

## 6.What is a valid class C address? 
- [ ] a. 10.0.0.0 
- [ ] b. 172.24.0.0 
- [x] c. 192.168.1.0 
- [ ] d. 221.0.0.0

---

## 7.If you had a network with a CIDR block of /23 how many IP addresses would you have control of? 
- [ ] a. 23 
- [ ] b. 254 
- [X] c. 512 
- [ ] d. 256

---

## 8.If you had a CIDR block of /24 and a network address of 192.168.1.0, how many IP addresses would you have? 
- [ ] a. 10 
- [ ] b. 0 
- [ ] c. 24 
- [X] d. 256

---

## 9.How does CIDR block addressing differ from Class based networking (A-D)?

Class based Networkng has fixed blocks and CIDR allows you to split blocks so that there is no wastage of blocks.

---

## 10.What tool is used to release a dhcp address from the command line? 
- [ ] a. rhclient 
- [ ] b. ipconfig /release 
- [X] c. dhclient -r 
- [ ] d. xclient -r

---

## 11.using the ip2 suite, What tool can be used to monitor and examine all current local ports and TCP/IP connections? 
- [X] a. ss 
- [ ] b. net 
- [ ] c. wireshark 
- [ ] d. netstat

---

## 12.Where are your network card settings located on Ubuntu while using network manager?

   /etc/NetworkManager

---

## 13.Where are your network card settings located on CentOS/Fedora using network manager?

   /etc/NetworkManager/NetworkManager.conf

---

## 14.Where are your network card settings located on Ubuntu 18.04 using netplan?
   
   under /etc/netplan/ with a .yaml extension (e.g. /etc/netplan/config.yaml),

---

## 15.What are the two major opensource webservers? 
- [X] a. Apache, Nginx 
- [ ] b. openhttpd, Nginx 
- [ ] c. Apache, IIS 
- [ ] d. Apache, Tomcat

---

## 16.What are two related and major opensource relational databases? 
- [ ] a. SQL and MySQL 
- [X] b. MariaDB and MySQL 
- [ ] c. MySQL and Oracle DB 
- [ ] d. Nginx and MySQL

---

## 17.Name one major No-SQL database mentioned in this chapter?

	Mongo DB is a No-SQL database mentioned in this chapter

---

## 18.What is the file location that the system uses as a local DNS for resolving IPs? 
- [ ] a. etc/systemd/hostd 
- [X] b. /etc/hosts 
- [ ] c. /etc/allow 
- [ ] d. /etc/etc/etc

---

## 19.What is the name of the file that you would place in your home directory, that allows you not to have to type your login password for a MySQL database? 
- [ ] a. ~/my.cnf 
- [ ] b. /etc/mysql/settings.conf 
- [ ] c. ~/allow 
- [X] d. ~/.my.cnf

---

## 20.Before systemd, NIC interface naming schemes depended on a driver based enumeration process: they switched to a predictable network interface names process that depends on what for the interface names? 
- [ ] a. driver loading order 
- [X] b. interface names depend on physical location of hardware (bus enumeration) 
- [ ] c. kernel version 
- [ ] d. What ever Lennart Poetering feels like naming them

















