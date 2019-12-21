Course: ITMO-556-01 Introduction to Open Source Software

CWID: A20447922

---
# LAB 11 – OSS

---

## 1.Create 1 virtual drive in VirtualBox
 a. Use fdisk to create a primary partition
 b. Format it with ext4 
 c. Mount it to /mnt/disk1 
 d. Add it to your fstab
a)
 
  ![1](https://github.com/illinoistech-itm/sbose10/blob/master/images/Chapter11/1-11-A.png)

P
 

 ![1](https://github.com/illinoistech-itm/sbose10/blob/master/images/Chapter11/1-11-B.png)

 ![1](https://github.com/illinoistech-itm/sbose10/blob/master/images/Chapter11/1-11-C.png)

---

 

a) Use fdisk to create a primary partition  

 ![1](https://github.com/illinoistech-itm/sbose10/blob/master/images/Chapter11/1-11-D.png)

b). Format it with ext4 

	 
 ![1](https://github.com/illinoistech-itm/sbose10/blob/master/images/Chapter11/1-11-e.png)

c)Mount it to /mnt/disk1 

 ![1](https://github.com/illinoistech-itm/sbose10/blob/master/images/Chapter11/1-11-F.png)
 


Add it to your fstab

 ![1](https://github.com/illinoistech-itm/sbose10/blob/master/images/Chapter11/1-11-G.png)

----

 
## 2. Create 2 more virtual drives a. Create a single volume group named vg-group b. Create 1 logical volume named lv-group using the two drives c. Format it with XFS d. Mount it to /mnt/disk2 e. Add the lv-group to your fstab, reboot the system and cat the /etc/fstab and show that your entry is present.
 
 
 ![2](https://github.com/illinoistech-itm/sbose10/blob/master/images/Chapter11/2-11-A.png)

 ![2](https://github.com/illinoistech-itm/sbose10/blob/master/images/Chapter11/2-11-B.png)

 ![2](https://github.com/illinoistech-itm/sbose10/blob/master/images/Chapter11/2-11-C.png)

 ![2](https://github.com/illinoistech-itm/sbose10/blob/master/images/Chapter11/2-11-D.png)

 ![2](https://github.com/illinoistech-itm/sbose10/blob/master/images/Chapter11/2-11-E.png)

 ![2](https://github.com/illinoistech-itm/sbose10/blob/master/images/Chapter11/2-11-F.png)

 ![2](https://github.com/illinoistech-itm/sbose10/blob/master/images/Chapter11/2-11-G.png)

----


## 3.Using the same LVM as before a. add an additional VirtualBox disk and the create a LVM physical disk b. Grow the volume group and logical volume c. Grow the XFS file system

 

 ![3](https://github.com/illinoistech-itm/sbose10/blob/master/images/Chapter11/3-11-A.png)

 ![3](https://github.com/illinoistech-itm/sbose10/blob/master/images/Chapter11/3-11-B.png)

 ![3](https://github.com/illinoistech-itm/sbose10/blob/master/images/Chapter11/3-11-C.png)

 ![3](https://github.com/illinoistech-itm/sbose10/blob/master/images/Chapter11/3-11-D.png)

 ![3](https://github.com/illinoistech-itm/sbose10/blob/master/images/Chapter11/3-11-E.png)

 ![3](https://github.com/illinoistech-itm/sbose10/blob/master/images/Chapter11/3-11-F.png)


Df -k after growth
 
 ![3](https://github.com/illinoistech-itm/sbose10/blob/master/images/Chapter11/3-11-G.png)


----


## 4.Using LVM of the previous exercise on the logical volume lv-group a. Using either fallocate or truncate commands, create a file 25 megabytes in size and name it datadump.txt b. Following this tutorial: http://tldp.org/HOWTO/LVM-HOWTO/snapshotintro.html create an LVM snapshot of the logical volume named lv-backup c. Mount the snapshot to /mnt/disk3 (create this location if not existing) d. ls -l the contents of /mnt/disk3
 

 
 ![4](https://github.com/illinoistech-itm/sbose10/blob/master/images/Chapter11/4-11-A.png)

 ![4](https://github.com/illinoistech-itm/sbose10/blob/master/images/Chapter11/4-11-B.png)

 ![4](https://github.com/illinoistech-itm/sbose10/blob/master/images/Chapter11/4-11-C.png)

 ![4](https://github.com/illinoistech-itm/sbose10/blob/master/images/Chapter11/4-11-D.png)

 ![4](https://github.com/illinoistech-itm/sbose10/blob/master/images/Chapter11/4-11-E.png)

 
----

## 5.	Launch a copy of Fedora 30 and follow the all the instructions to install ZFS on Fedora 30: https://github.com/zfsonlinux/zfs/wiki/Fedora 
a. Attach two additional virtual disks to the Fedora 30 Virtual Machine 

 ![5](https://github.com/illinoistech-itm/sbose10/blob/master/images/Chapter11/5-11-A.png)

b. Create a zpool stripe containing both disks 

 ![5](https://github.com/illinoistech-itm/sbose10/blob/master/images/Chapter11/5-11-B.png)
 
c. Execute a zpool status command to display the contents of the zpool

 ![5](https://github.com/illinoistech-itm/sbose10/blob/master/images/Chapter11/5-11-C.png) 

----


## 6.	Using Ubuntu 18.04 set networking to bridged mode (take note of your public IP by typing: ip a sh 

 ![6](https://github.com/illinoistech-itm/sbose10/blob/master/images/Chapter11/6-11-A.png)
a. Attach a virtual disk 

 ![6](https://github.com/illinoistech-itm/sbose10/blob/master/images/Chapter11/6-11-B.png)
 
b. Using this tutorial: https://www.hiroom2.com/2018/05/05/ubuntu-1804-tgt-en/ configure the system using as an ISCSI target
 
 ![6](https://github.com/illinoistech-itm/sbose10/blob/master/images/Chapter11/6-11-C.png)
c. Use the proper iscsi command to list the current targets

$ cat /proc/partitions

 ![6](https://github.com/illinoistech-itm/sbose10/blob/master/images/Chapter11/6-11-D.png)

---

## 7.	Using a second Ubuntu 18.04 instance with its network mode set to bridged (note the public IP) 
a. Using this tutorial: https://help.ubuntu.com/lts/serverguide/iscsi-initiator.html configure and complete iSCSI initiator 
b. List the currently available iSCSI targets on your network 

dmesg | grep sd

 ![7](https://github.com/illinoistech-itm/sbose10/blob/master/images/Chapter11/7-11-A.png)

c. Create two files on the connected iSCSI target - file1.txt and file2.txt and list those files

 ![7](https://github.com/illinoistech-itm/sbose10/blob/master/images/Chapter11/7-11-B.png)

---

## 8.	Create 3 Virtual disks and install the ZFS package 

a. Attach it to an existing Ubuntu 18.04 system 

 ![8](https://github.com/illinoistech-itm/sbose10/blob/master/images/Chapter11/8-11-A.png)
 
b. Create a zpool stripe with two disks name it datapool 

 ![8](https://github.com/illinoistech-itm/sbose10/blob/master/images/Chapter11/8-11-B.png)

c. Execute a zpool status and a zpool list command 
 
 ![8](https://github.com/illinoistech-itm/sbose10/blob/master/images/Chapter11/8-11-C.png)

d. Expand the capacity of the zpool by adding the third disk in 
e. Execute the zpool status command 

 ![8](https://github.com/illinoistech-itm/sbose10/blob/master/images/Chapter11/8-11-D.png) 


f. Now take the first disk out of the zpool 
g. Execute the zpool status command


If we try to remove it with stripe the following errors are shown


 ![8](https://github.com/illinoistech-itm/sbose10/blob/master/images/Chapter11/8-11-E.png)

Only disks which are mirrored can be removed 
When I created with mirrored disks, it works


 ![8](https://github.com/illinoistech-itm/sbose10/blob/master/images/Chapter11/8-11-F.png) 


---

## 9.	From the previous exercise using your ZFS pool named datapool create a 25 megabyte file named datadump.txt 
a. Attach a third virtual disk to the system and create a zpool named backup 
 
b. Execute the ls -l command to display the file and its size 
 
c. Take a ZFS snapshot of the datapool named @today 
 

 ![9](https://github.com/illinoistech-itm/sbose10/blob/master/images/Chapter11/9-11-A.png)
 
d. Using the ZFS send and recv commands copy the @today snapshot to the zpool named backup 


 ![9](https://github.com/illinoistech-itm/sbose10/blob/master/images/Chapter11/9-11-B.png) 

e. Execute ls -l command on the zpool backup 

 ![9](https://github.com/illinoistech-itm/sbose10/blob/master/images/Chapter11/9-11-C.png) 

f. Using the commandline, append an additional 25 mb to /datapool/datadump.txt 

 ![9](https://github.com/illinoistech-itm/sbose10/blob/master/images/Chapter11/9-11-D.png) 
 
g. Execute an ls -l on zpool datapool and backup to compare the two files

  ![9](https://github.com/illinoistech-itm/sbose10/blob/master/images/Chapter11/9-11-E.png) 

---

## 10.	On the same Ubuntu 18.04 system create a systemd mount.unit file for both ZFS partitions created in the previous exercise.
 a. List both contents here 
b. Reboot the system and make sure it works
VM : Ubuntu


lsblk – f to find the UUID 
 
 ![10](https://github.com/illinoistech-itm/sbose10/blob/master/images/Chapter11/10-11-A.png) 

 ![10](https://github.com/illinoistech-itm/sbose10/blob/master/images/Chapter11/10-11-B.png) 

 
Datapool script 
 
 ![10](https://github.com/illinoistech-itm/sbose10/blob/master/images/Chapter11/10-11-C.png) 

 ![10](https://github.com/illinoistech-itm/sbose10/blob/master/images/Chapter11/10-11-D.png) 
 
Backup data pool script
 
 ![10](https://github.com/illinoistech-itm/sbose10/blob/master/images/Chapter11/10-11-E.png) 

 ![10](https://github.com/illinoistech-itm/sbose10/blob/master/images/Chapter11/10-11-F.png) 

---

## 11.	Using the 2 Ubuntu 18.04 systems you used in exercises 7 and 8 create a 25 megabyte file named databasedump.txt on the zpool datapool 
a. On the first system (the system without zpool datapool) create a datapool name backuppool (you might need to attach a virtual disk to do this) 
b. Take a snapshot of the zpool datapool and name it @now 
c. Execute the remote send and recv command over ssh to migrate the snapshot to the pool backuppool (You may need to exchange SSH keys via ssh-keygen and ssh-copy-id first to make this work)

 
 ![11](https://github.com/illinoistech-itm/sbose10/blob/master/images/Chapter11/11-11-A.png)

 ![11](https://github.com/illinoistech-itm/sbose10/blob/master/images/Chapter11/11-11-B.png)

 ![11](https://github.com/illinoistech-itm/sbose10/blob/master/images/Chapter11/11-11-C.png)
 


Key :
 

 ![11](https://github.com/illinoistech-itm/sbose10/blob/master/images/Chapter11/11-11-D.png)

 ![11](https://github.com/illinoistech-itm/sbose10/blob/master/images/Chapter11/11-11-E.png)

 ![11](https://github.com/illinoistech-itm/sbose10/blob/master/images/Chapter11/11-11-F.png)
 

The snapshot listed on the other server

 ![11](https://github.com/illinoistech-itm/sbose10/blob/master/images/Chapter11/11-11-G.png)

 ![11](https://github.com/illinoistech-itm/sbose10/blob/master/images/Chapter11/11-11-H.png)
 
---

## 12.	On the zpool named datapool on Ubuntu 
a. Execute a zpool status command 
 
 ![12](https://github.com/illinoistech-itm/sbose10/blob/master/images/Chapter11/12-11-A.png)

b. Enable LZ4 compression on the zpool datapool 
c. Execute a zpool list command to display that compression is enabled.
 
 ![12](https://github.com/illinoistech-itm/sbose10/blob/master/images/Chapter11/12-11-B.png)

---

## 13.	On the zpool named datapool execute a zpool status command 
a. Execute a scrub of the zpool datapool 

 ![13](https://github.com/illinoistech-itm/sbose10/blob/master/images/Chapter11/13-11-A.png)
 
b. Create a cron job that executes a zfs scrub on the zpool datapool at 3 am every Sunday morning

 ![13](https://github.com/illinoistech-itm/sbose10/blob/master/images/Chapter11/13-11-B.png)

 ![13](https://github.com/illinoistech-itm/sbose10/blob/master/images/Chapter11/13-11-C.png)


---

## 14.	Using the sample from the text on your Ubuntu 18.04 system add two additional virtual disk 
a. Create two partitions on each of these devices 
b. Then using the sample code add these two devices as a log and a cache to the zpool datapool 
c. Execute a zfs status command for the zpool named datapool
Existing Zpool 

 ![14](https://github.com/illinoistech-itm/sbose10/blob/master/images/Chapter11/14-11-A.png)

Adding the cache and log 
  
 ![14](https://github.com/illinoistech-itm/sbose10/blob/master/images/Chapter11/14-11-B.png)

Zpool status post adding 
 

 ![14](https://github.com/illinoistech-itm/sbose10/blob/master/images/Chapter11/14-11-C.png)


## 15.	On your Fedora system execute any of the commands listed to print out the disk serial numbers.


 ![15](https://github.com/illinoistech-itm/sbose10/blob/master/images/Chapter11/15-11-A.png)

 ![15](https://github.com/illinoistech-itm/sbose10/blob/master/images/Chapter11/15-11-B.png)
 


---

## 16.	Using an Ubuntu system of your choice, create two pair of four 2-GB virtual disks. Create a ZFS stripe on one of the four disk arrays and create a ZFS equivalent of a RAID 10 (striped mirror) on the other 4 disk array. 
Run the command sudo zpool status and capture the output. Name the first zpool, zstripe and the second zpool, zmirror 
a. Install mariadb-server and modify the my.cnf file to remount the database storage from /var/lib/mysql to be /zstripe/mysql: restart the service and execute the sudo systemctl status mysql command to show the service successfully restart and is now mounted in a new location. Note, you will need to chown the new zstripe mount to get write permissions.
 

 ![16](https://github.com/illinoistech-itm/sbose10/blob/master/images/Chapter11/16-11-A.png)

 ![16](https://github.com/illinoistech-itm/sbose10/blob/master/images/Chapter11/16-11-B.png)

 ![16](https://github.com/illinoistech-itm/sbose10/blob/master/images/Chapter11/16-11-C.png)

 ![16](https://github.com/illinoistech-itm/sbose10/blob/master/images/Chapter11/16-11-D.png)

 
---

## 17.	Using an OS of your choice, install the btrfs-tools package. Create a 2 GB Virtual Disk. On this disk create a 1 GB Ext4 partition. Using the btrfs-convert program convert the partition from ext4 to btrfs: sudo btrfs-convert /dev/xxx. Take a screenshot of the command output.

 
 ![17](https://github.com/illinoistech-itm/sbose10/blob/master/images/Chapter11/17-11-A.png)

 ![17](https://github.com/illinoistech-itm/sbose10/blob/master/images/Chapter11/17-11-B.png)

 ![17](https://github.com/illinoistech-itm/sbose10/blob/master/images/Chapter11/17-11-C.png)

 ![17](https://github.com/illinoistech-itm/sbose10/blob/master/images/Chapter11/17-11-D.png)

 
---


## 18.	Using an OS of your choice, create 4 2 GB Virtual Disks. Create a btrfs RAID 10 (mirror and stripe) on these four disks. Download one of the Ubuntu 18.04 ISO files onto your btrfs partition. Using the btrfs-replace command. Add a fifth virtual disk and replace device /dev/sde with the new virtualdisk. 
a. Run the btrfs filesystem show command and capture the output 
b. Using the UID of the btrfs device created in the previous step, add the mount point to the /etc/fstab and add the nocowdata attribute. Mount point options are listed here: btrfs mount-point options

 
 

 ![18](https://github.com/illinoistech-itm/sbose10/blob/master/images/Chapter11/18-11-A.png)

 ![18](https://github.com/illinoistech-itm/sbose10/blob/master/images/Chapter11/18-11-B.png)

 ![18](https://github.com/illinoistech-itm/sbose10/blob/master/images/Chapter11/18-11-C.png)

 ![18](https://github.com/illinoistech-itm/sbose10/blob/master/images/Chapter11/18-11-D.png)

 ![18](https://github.com/illinoistech-itm/sbose10/blob/master/images/Chapter11/18-11-E.png)

 
---
 

## 19.	Download a copy of Ubuntu 19.10 and when going through the installer, choose the EXPERIMENTAL erase disk and use zfs. Once the install is complete, upon first login, execute the sudo zpool status command and capture the output.

 ![19](https://github.com/illinoistech-itm/sbose10/blob/master/images/Chapter11/19-11-A.png) 

---

## 20.	This is a research question regarding current hardware: 
	a. Using Newegg.com find the current price per Gigabyte for the following along with listing the throughput of the drive and make a chart of the results. 
	b. Seagate Barracuda 4 TB : $87.36      Price per gb : 2.17 cents
	
	c. Western Digital Blue 1 TB : $42.77   Price per gb : 4.2 cents
	
	d. Western Digital Red 10 TB : $274.99  Price per gb : 2.74 cents
	
	e. Samsung 970 EVO M.2 500 GB : $89.99 Price per gb : 17.8 cents
	
	f. Corsair Force MP300 M.2 960 GB : $127.99 Price per gb :13.2 cents
	
	g. Intel Optane M.2 32 GB and explain what 3D XPoint technology is 
   	Intel Optane M.2 32 GB costs $299.99 Price per gb :9.34 cents
	
	Intel and Micron Technology developed the 3D XPoint memory storage technology which is a 
	non-volatile memory (NVM). 
	It has a number of features that makes it different from the existing RAM and NVRAM.
	It's technology is based on phase-change memory technology, with a transistor-less, cross-point architecture that positions     	selectors and memory cells at the intersection of perpendicular wires. 
	Those cells, made of an unspecified material, can be accessed individually by a current sent through the top and bottom wires 	          touching each cell. 
	To improve storage density, the 3D XPoint cells can be stacked in three dimensions.
	As the memory is inherently fast, and byte-addressable, techniques such as read-modify-write and caching used to enhance      	         traditional SSDs are not needed to obtain high performance. In addition, chipsets such as Cascade Lake are designed 
	with inbuilt support for 3D XPoint, that allow it to be used as a caching or acceleration disk, and it is also fast enough to be         used as non-volatile RAM (NVRAM) in a DIMM package.
	
---

