Name: Sonita Bose

Course: ITMO-556-01 Introduction to Open Source Software

CWID: A20447922


# Chapter 3 Review Questions                                       


## 1) What is the term for the industry standard file format that is used to install a Linux distro? 
- [X] a. ISO 
- [ ] b. ZIP 
- [ ] c. Disk-ISO 
- [ ] d. Distro 

---

## 2) What is currently the most common Linux install media type? 
- [ ] a. CD-ROMs 
- [ ] b. Network based installs 
- [X] c. USB 
- [ ] d. Thunderbolt 

---

## 3) What is the name of recommended tool used to create bootable Linux install media? 
- [ ] a. Pendrive Linux 
- [x] b. etcher.io 
- [ ] c. UNetbootin 
- [ ] d. Image Magick 

---

## 4) What is the technology that is inserted between ring 1 and ring 0 that enables virtualization? 

The technology inserted between rings is the Hypervisor. The Hypervisor intercepts system calls from virtualized operating systems which allows multiple operating systems to exist on the host.

---

## 5) The operating system that the hypervisor resides on is called the __host_______ system? 

---

## 6) Hosted or desktop virtualization is called what type of hypervisor? 
Type II 

---

## 7) Bare Metal or Native Virtualization is called what type of hypervisor? 
Type I

---

## 8) Each Linux installation distro provides a mechanism to compare what you downloaded with what you expected to download, what is that called?
- [ ] a. mount point 86 
- [x] b. checksum 
- [ ] c. receipt 
- [ ] d. mdsum 

---

## 9) What is the name of the driver package you can install in VirtualBox in order to enable features such as shared clipboard, larger screen resolution, and mouse pointer integration? 
VirtualBox Guest Additions
- [ ] a. Kernel modules 
- [ ] b. Kernel drivers 
- [x] c. VirtualBox extensions 
- [ ] d. ISO extensions 

---

## 10) What is the name for a Linux distribution that runs in memory? 
- [ ] a. Rapid CD 
- [x] b. Live ISO 
- [ ] c. Install Disk 
- [ ] d. Trick question 

---

## 11) What feature doesn’t dpkg handle/support? 
- [ ] a. Dependencies 
- [X] b. Installing Dependencies 
- [ ] c. Versioning   
- [ ] d. Author Information 

---


## 12) What is the APT command to add an additional software repository in Ubuntu/Debian, named: ppa:linux-libre/ppa, to your APT system? 
- [ ] a. sudo add-repository ppa:linux-libre/ppa 
- [x] b. sudo add-apt-repository ppa:linux-libre/ppa 
- [ ] c. sudo apt-add-repository ppa:linux-libre/ppa 
- [ ] d. sudo apt-add ppa:linux-libre/ppa 

---

## 13) Which distro(s) supports the .deb package? 
- [ ] a. Ubuntu only 
- [x] b. Debian Family 
- [ ] c. Debian and RedHat 
- [ ] d. None of the above 

---

## 14) Which distro(s) supports the RPM package? 
- [ ] a. CentOS only 
- [x] b. RedHat Family 
- [ ] c. Debian and RedHat 
- [ ] d. None of the above 

---

## 15) We talked about using GCC to compile and install software, what was the other language/package manager discussed in the chapter? 
- [ ] a. G++ 
- [ ] b. APT 87 
- [x] c. Python 
- [ ] d. None of the above 

## 16) Describe the purpose of Virtualbox Guest Additions? 

The Guest Additions are designed to be installed inside a virtual machine after the guest operating system has been installed. They consist of device drivers and system applications that optimize the guest operating system for better performance and usability like mouse support, shared folder availability, better video support, seamless windows, time sync, shared clipboard and generic host/guest communication channels.

---

## 17) What is the RPM command to install a package from the command line? 

- [ ] a. rpm -qa *.rpm 
- [ ] b. rpm install *.rpm 
- [ ] c. rpm -q *.rpm 
- [x] d. rpm -i *.rpm 

---

18) After building software from source and running the ./configure command, what is the next step? 
- [ ] a. Run the make install command 
- [ ] b. Run the sudo make install command 
- [ ] c. Run the install command 
- [x] d. Run the make commmand 

---

19) What is the name of the new package managers developed by Canonical and RedHat? 
- [ ] a. flatpak and apt 
- [x] b. flatpak and snap 
- [ ] c. snapcraft and flatter 
- [ ] d. dnf and apt 

---

20) What is the DNF command used to install additional software repositories? Use this URL to an RPM: http://download1.rpmfusion.org/free/el/updates/7/x86_64/r/rpmfusion-free-release-7- 4.noarch.rpm 
- [ ] a. sudo dnf install repo http://download1.rpmfusion.org/free/el/updates/7/x86_64/r/rpmfusion-freerelease-7-4.noarch.rpm 
- [ ] b. sudo dnf http://download1.rpmfusion.org/free/el/updates/7/x86_64/r/rpmfusion-free-release-7- 4.noarch.rpm 
- [x] c. sudo dnf install http://download1.rpmfusion.org/free/el/updates/7/x86_64/r/rpmfusion-freerelease-7-4.noarch.rpm 
- [ ] d. sudo install http://download1.rpmfusion.org/free/el/updates/7/x86_64/r/rpmfusion-free-release-7- 4.noarch.rpm

---





