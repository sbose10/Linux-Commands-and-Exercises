Name: Sonita Bose

Course: ITMO-556-01 Introduction to Open Source Software

CWID: A20447922

# Chapter 10 Podcast Questions  
---

## Link : https://www.youtube.com/watch?v=o_AIw9bGogo      

## 1)	~1:00 Who is Benno Rice? 

Benno Rice was involved with the FreeBSD community and is a core team member

---

## 2)	~1:31 What is Contempt Culture? 
Contempt Culture is a community heaping shit on another community


---

## 3)	~3:21 What is init job? 
init  is the last step of the boot process of a unix system. To the user It opens up the user space and enables a terminal for a user to login. 
Init is an executable that is the first process started by the kernel ( PID = 0) on a unix server with a PID = 1. It checks the inittab for the runlevel to enter. 
Depending on the runlevel it reads the corresponding rc.d file to start the various processes ( like housekeeping functions  or mounting discs) / daemons / services configured for the Unix Server in question.


---

## 4)	~6:11 What lead to the concept of a service? 
As a Unix server started to provide daemons that would be running quietly until an event occurred eg an attempt to login over the net or provide logging facilities it lead to the concept of services, essentially the same daemon or a set of daemons, that could be configured for a particular installation and made to restart at boot times or after a failure.


---

## 5)	~8:35 What does the traditional rc system not do? 
Traditional rc system will start up daemons but it cannot manage the daemons as long the system is running. 
There is no automated service management like what is achieved by runit, a cross platform services supervision tool.


---

## 6)	~9:27 What OS had a strong initial concept of services from the beginning? 
Microsoft Windows had a strong initial concept of services from the beginning.


---

## 7)	~10:00 On MacOS what did launchd replace? 
launchd replaced a lot of event handling daemons which reacted to events like bootstrap, cron based events or internet based interrupts that are usually handled by inetd then by the port number .


---

## 8)	~11:53 In 2010 What was Lennart Poeterring looking at? 
In 2010 Lennart Poettering was looking at how to manage services on an Unix system.


---

## 9)	~13:48 What other service did Lennart say he was heavily borrowing from? 
Lennart said he was borrowing from launchd.


---

## 10) ~14:01 What does Lennart say that systemd is about? 
systemd is about system management.

---

## 10)	~14:43 What is the layer in-between the kernel and the userspace created by systemd? 
The systemd creates a system layer between the user space and kernel. It takes care of network access, device management , time etc

---

## 12) ~17:11 Does systemd violate the UNIX philosophy? 
systemd violates the Unix philosophy because it injects dependency of other software and functionalities on the operation if this product.

---

## 13) ~20:33 What does Benno think is incredible about what Lennart accomplished? 
Benno thinks that Lennart accomplished getting his ideas pushed into the minds of the community and got it implemented.

---

## 14) ~25:26 Why is using systemd as a recruiting tool for BSD (which doesn’t have it) a bad idea? 
using systemd as a recruiting tool for BSD isn’t a good idea because it conveys that we are inflexible.

---

## 15) ~28:20 What are a few features that BSD could gain from systemd? 
BSD could involve more kernel based message transport as well as implement a remote procedure call API.

---

## 16) ~28:20 Why can’t BSD run containers?
 systemd  uses the concept of cgroups to group processes together which is convenient to create container. BSD has not implemented cgroups. 
BSD has concepts like Jails or chroot which enable processes to run on a server in an isolated environment. 
These need to be used to implement containers on BSD Unix.


