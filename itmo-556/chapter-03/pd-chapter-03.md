Name: Sonita Bose

Course: ITMO-556-01 Introduction to Open Source Software

CWID: A20447922

# Chapter 3 Podcast Questions

Listen/watch the FLOSS podcast number 130 with the VirtualBox Developers - http://twit.tv/floss/130

## 2:35 Who is Andy Hall and Achim Hasenmuller?

Andy Hall is the Product Manager for the Oracle VM Virtual Box.  He has been working with Microsoft for 10 years and currently the Principal Product Manager for UIPath.

Achim Hasenmuller is one of the lead architects of the VM Virtual Box even before it was owned by Sun Microsystem and later by Oracle. He has also been responsible for vStorage which is an ultra-high performance block storage (50 million IOPS per rack) with the unique geo-scale technology that allows spreading across multiple data centers.

---

## 3:00 What is Simon Phipps relationship to the VirtualBox project?

Simon Phipps was a member of the Management Team at Sun Microsystem that helped to acquire the VM Virtual Box Company for Sun.


---

## 4:45 What does VirtualBox do in Andy Hall’s words?

A Virtual Box is a Hypervisor. 
A Hypervisor lets you create multiple instances of Vitual Machines running different Operating Systems.
Virtual Box lets you extend your computer running an Operating system and un multiple virtual systems as a program running on the host computer which are fully operational computer systems running their own operating system without disturbing the host computer system. The new virtual system is easy to create and easier to remove.


---

## 6:30 What other company previously owned VirtualBox?
Connectix sold Virtual PC to Microsoft.
However, the Team went on to work on the concept to create Virtual Box which was an open source software.
The company was acquired by Sun Microsystem in 2008.
Oracle is currently the owner after it acquired Sun Microsystem.

---

## 11:20 According to Simon, what is the definition of open core?
The open core software model has two versions of the software available.
The free and open source system is the basic core part of the software without the important functions.
The proprietary code has all the functionalities and bells and whistles incorporated.

---

## 14:17 How does VirtualBox fit into Oracle’s business model?
Virtual Box not only had a commitment for further development it was also promoted by the Oracle executive communications.
They want a client-side Virtual Box Hypervisor. They also want to leverage the Hypervisor Technology in other places like running hundreds of corporate desktops on a server in a data center.

---

## 16:15 As of the time of the podcast (2010) how many downloads did VirtualBox have?
As of the time of the podcast (2010) there were 30 million downloads for VirtualBox. There are millions of Active Users too.

---

## 20:25 How does VirtualBox handle virtualized I/O?
It helps in identifying places needing help.
The raw mode execution code as is with in-situ patching and hypervisor would re-write it on the fly.
The hypervisor switched out context of the entire host system processor status with the virtual box operating system data every time it wants to in microseconds.

---

## 22:40 What did Intel and AMD introduce to help ease virtualization in VirtualBox?
AMDV VTX

---

## 26:00 What two models of network card did VirtualBox choose to represent their virtual hardware and why?

AMD PC NET and E1000 Intel Gigabit Card because all operating systems have drivers for this card, and they are easy to virtualize.

---

## 27:40 What does VirtualBox almost get native performance on?
Storage was always a challenge to deal with in Virtual Boxes since a lot of processes had to be run and there was always an overhead which included a high cost so SATA which is like SCSI which allows to take command from the Guest Operating system and writes to the host. It does not touch the data in between or copy the data which helped to achieve native performance.

---

## 29:29 How does VirtualBox treat USB devices in Guest OSes?
The commands and data is tunneled through the host layer after a sanity check.

---

## 31:00 What are 4 virtual networking modes in VirtualBox?
1. Internal networking - a network path that is only visible to virtual boxes set up on the host but not accessible to the host
2. Host only mode- Allows you run a server on your VM without an IP address on your physical network. Where all virtual boxes can access the host.
3. Network Address Translation (NAT)- Virtual Box can access the internet by Address Translation.
4. Bridged Mode - the Virtual Box can be accessed from the internet. Requires a real IP address

---

## 32:30 What is the difference between NAT and Bridged networking?
Virtual Boxes on a NAT networking modes can access the internet through the host network interface, but the internet cannot see the virtual boxes. In the Bridge Mode the Internet sees the Virtual Boxes as separate hosts.

---

## 39:30 What Type of hypervisor is VirtualBox?
Type 2 hypervisor or a hosted hypervisor.

---

## 51:30 Why can’t you virtualize Mac OSX on VirtualBox (as of 2014)?
The MacOSX operating system code confirms if it is running on Apple processors by using a special chip on the board. The Virtual Box has not emulated the chip, so if you want to have a virtual box running MacOSX then the host should be on an Apple hardware otherwise the OS fails.


---


