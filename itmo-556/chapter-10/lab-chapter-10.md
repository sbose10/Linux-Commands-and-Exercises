Course: ITMO-556-01 Introduction to Open Source Software

CWID: A20447922

---
# LAB 10 – OSS

---


## 1.Change the default grub settings in Ubuntu add a background image (preferably dark) and remove or disable the quiet splash option) make sure to execute update-grub before rebooting or changes won't be written.

 ![1](https://github.com/illinoistech-itm/sbose10/blob/master/images/1-10.png)
 ![1](https://github.com/illinoistech-itm/sbose10/blob/master/images/1-10-B.png)


---

## 2.Use the systemd-analyze tools to print out the most recent boot time for your system
 
![2](https://github.com/illinoistech-itm/sbose10/blob/master/images/2-10.png)

---

## 3.Install MariaDB server, sudo dnf install mariadb. a) Use the command systemctl status <servicename> after MariaDB is installed to display its current status, then enable the service via systemctl, and then start the service. Now reboot your system.
 
![3](https://github.com/illinoistech-itm/sbose10/blob/master/images/3-10-A.png)
![3](https://github.com/illinoistech-itm/sbose10/blob/master/images/3-10-B.png)

---
 

 
## 4.With MariaDB enabled, use the systemd-analyze tools to print out the most recent boot time for your system again and compare if adding this service increased boot times.
Yes, it has increased

![4](https://github.com/illinoistech-itm/sbose10/blob/master/images/4-10.png)

---
 
## 5.	Use systemd-analyze blame to collect start times of each element after installing and enabling the MariaDB service

![5](https://github.com/illinoistech-itm/sbose10/blob/master/images/5-10.png)

---

## 6.	Use systemctl to enable and start the httpd.service (Fedora)
 
![6](https://github.com/illinoistech-itm/sbose10/blob/master/images/6-10.png)

---

## 7.	Use systemctl to SIGHUP the httpd.service (Fedora)

![7](https://github.com/illinoistech-itm/sbose10/blob/master/images/7-10.png)

---
 

## 8.	Change the systemd target to the systemd commandline only level, display the systemd default target level - then change back to the GUI target (or runlevel5).
 
![8](https://github.com/illinoistech-itm/sbose10/blob/master/images/8-10.png)


![8](https://github.com/illinoistech-itm/sbose10/blob/master/images/8-10-B.png)

---
 
## 9.	Using systemctl and the --show option, display the "After" and "Wants" of the sshd.service

![9](https://github.com/illinoistech-itm/sbose10/blob/master/images/9-10.png)

---
 
## 10.	nice a command - create/compile a C infinite loop program and nice it to lowest priority and then highest priority. Open a second terminal tab/window and use htop (install it if needed) to display that process' system usage
The program 

![10](https://github.com/illinoistech-itm/sbose10/blob/master/images/10-10-A.png)
![10](https://github.com/illinoistech-itm/sbose10/blob/master/images/10-10-B.png)
![10](https://github.com/illinoistech-itm/sbose10/blob/master/images/10-10-C.png)

---

nice -n 19 /home/sonita/loop
 
nice -n -20 /home/sonita/loop
 

## 11.	Launch multiple tabs in Firefox using this command:
a)firefox -new-tab -url krebsonsecurity.com -new-tab -url twit.tv/floss/. Find the process IDs via ps -ef and kill those tabs/processes with a kill -2 command b) Repeat the above launch command and this time use systemd and the proper cgroups to kill the FireFox processes

![11](https://github.com/illinoistech-itm/sbose10/blob/master/images/11-10-a.png)
![11](https://github.com/illinoistech-itm/sbose10/blob/master/images/11-10-b.png)


---
 
 

To kill using cgroup 
![11](https://github.com/illinoistech-itm/sbose10/blob/master/images/11-10-c.png)


---

## 12.	Using lsmod and grep list all of the kernel modules loaded on your system that contain VirtualBox (search for vb*).

![12](https://github.com/illinoistech-itm/sbose10/blob/master/images/12-10.png)

---
 
## 13.	Run the systemd-systemctl command to list the VirtualBox kernel modules that are loaded

![13](https://github.com/illinoistech-itm/sbose10/blob/master/images/13-10.png)

---
 
## 14.	Run the command that will list all the PCI devices attached to your system

![14](https://github.com/illinoistech-itm/sbose10/blob/master/images/14-10.png)

---
 
## 15.	Type one of the two commands mentioned in the chapter to display info about your CPU hardware

![15](https://github.com/illinoistech-itm/sbose10/blob/master/images/15-10.png)

---
 
## 16.	Using systemctl find the cgroup for the apache2 webserver (known as httpd on Fedora) and issue a SIGHUP to the entire cgroup.
To find
 

![16](https://github.com/illinoistech-itm/sbose10/blob/master/images/16-10-a.png)
![16](https://github.com/illinoistech-itm/sbose10/blob/master/images/16-10-b.png)
![16](https://github.com/illinoistech-itm/sbose10/blob/master/images/16-10-c.png)

---
 




## 17.	Using systemd-cgls list and filter (grep) and show the sub-process IDs for the httpd.service

![17](https://github.com/illinoistech-itm/sbose10/blob/master/images/17-10.png)

---
 

## 18.	Use the timedatectl command to change the clock of your system to UTC.

![18](https://github.com/illinoistech-itm/sbose10/blob/master/images/18-10.png)

---
 
## 19.	Use the hostnamectl command to: 
a) set-hostname to itmo-556-xyz (xyz is your initials) b) set-location to: d1r1u22 c) set-chassis to: vm d) set-deployment to: development
 ![19](https://github.com/illinoistech-itm/sbose10/blob/master/images/19-10.png)

---
## 20.	Install a copy of Devuan Linux from devuan.org. Take a screenshot of the ps -ef command focusing on PID 1. 
a) Install the openRC init system via sudo apt-get install openrc 
b) The install process asks you to run a command after succesful install: for file in /etc/rc0.d/K*; do s=`basename $(readlink "$file")` ; /etc/init.d/$s stop; done explain what this command is doing. c) Reboot the system and take a screenshot of the output of the ps -ef command focusing on PID 1

ps - ef

![20](https://github.com/illinoistech-itm/sbose10/blob/master/images/20-10-a.png)

---
 
Installed open RC

![20](https://github.com/illinoistech-itm/sbose10/blob/master/images/20-10b.png)
 
openRC init system
 for file in /etc/rc0.d/K*; 
do s=`basename $(readlink "$file")` ; 
/etc/init.d/$s stop;
Rc0 is the run level where the system shuts down. Run level 0 is to shut down the system. It contains scripts to stop daemons and services and run housekeeping jobs. The rc0.d contains files which are linked to scripts in init.d and those daemons are used to start and stop the daemons.

Screenshot after reboot. 
 
![20](https://github.com/illinoistech-itm/sbose10/blob/master/images/20-10-c.png)

## 21.	What would be the command to change the systemd target runlevel to recovery mode? Execute this command and take a screenshot of the result.

![21](https://github.com/illinoistech-itm/sbose10/blob/master/images/21-10.png)

---
 
## 22.	Review the content of the mysql.service file, list the contents of the [Install] header that must load before and after the mysql service starts.

![22](https://github.com/illinoistech-itm/sbose10/blob/master/images/22-10.png)

---
 

## 23.	Using GCC sudo dnf install gcc or sudo apt-get install build essential, create and compile a simple C++ code that is an infinite loop -- just put while true in the body of main. Execute this script (note you could do this in Python as well, your choice). Use systemd-cgtop to display the usage and capture that output.
a) use the ps and various filters to show only information related to this process. 
b) use the systemd-cgls command and filters to display the process information
 c) use the kill command from systemd to kill the cgroup related to the infinite loop process.
Systemd-cgtop

![23](https://github.com/illinoistech-itm/sbose10/blob/master/images/23-10-A.png)


systemd-cgls

![23](https://github.com/illinoistech-itm/sbose10/blob/master/images/23-10-B.png)
 
ps -ef | grep filename

![23](https://github.com/illinoistech-itm/sbose10/blob/master/images/23-10-C.png)
 
ps  xawf -e -o pid,user ,cgroup,args | grep filename

![23](https://github.com/illinoistech-itm/sbose10/blob/master/images/23-10-D.png)
 
systemd-cgls -u user@1000.service | grep cpp

![23](https://github.com/illinoistech-itm/sbose10/blob/master/images/23-10-E.png)
 
systemctl kill user@1000.service

![23](https://github.com/illinoistech-itm/sbose10/blob/master/images/23-10-F.png)

 
## 24.	Using the sample file located in: files > Chapter-10 > python > write-journal.py and copy it to your home directory. Create a systemd service file called write-journal.service. Have the service file execute this python script (use absolute paths). Use the commands to enable and start the service. Use the sudo journalctl -xe command to show the output in the systemd logs at boot and after the system has loaded.
Service file 
 
![23](https://github.com/illinoistech-itm/sbose10/blob/master/images/24-10-A.png)

Script
 
![23](https://github.com/illinoistech-itm/sbose10/blob/master/images/24-10-B.png)

Journalctl -xe 
 
![23](https://github.com/illinoistech-itm/sbose10/blob/master/images/24-10-C.png)

