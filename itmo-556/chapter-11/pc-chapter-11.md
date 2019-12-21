Name: Sonita Bose

Course: ITMO-556-01 Introduction to Open Source Software

CWID: A20447922

# Chapter 11 Podcast Questions  
---

## Link : https://ia802605.us.archive.org/9/items/bsdtalk248/bsdtalk248. mp3     

## 1)	~1:25 What did DragonFly BSD drop with the 4.0 release? 

       DragonFly BSD dropped 32 bit support with the 4.0 release.

---

## 2)  ~1:40 What was the other major feature that DragonFly BSD added? 

      Fresh port of LinuX Radion Intel GPU which enables Open GL Acceleration working on Hardware. 
      Also, Network Stack upgrades where network threads stay locked up to a particular core.

---

## 3)  • ~3:40 What modification did they add to the Packet Filter? 
	The packet filter modified concurrent packet filtering allowed on multiple cpus

---

## 4)  • ~10:00 What is the largest system DragonFly BSD has access to? 
	DragonFly BSD has access to a 64 core system.
---

## 5)  • ~11:45 What is the difference between DragonFly BSD’s network stack compared to BSD and Linux? 
	Segregrated package to particular cpus and leaving them on the cpus all through its lifecycle
---

## 6)  • ~13:25 What is the limitations of the Hammer 1 Filesystem? 
	Hammer 1 Filesystem has the limitation of no clustering - No Redundancy

---

## 7)  • ~13:45 What features will Hammer 2 Filesystem add? 
	Hammer 2 filesystem will add Multi master Clustering  and snapshots.

---

## 8)  • ~15:45 What is the intended use case of Hammer 2 FS? 
        Multiple Nodes over WAN and abilities like Multi Master or Live Fail Over

---

## 9)  • ~18:00 What sub-system is still in the works needed to make DragonFly BSD a stable work station? 
        Pulse audio being played more reliably and synced with the video

---

## 10)  • ~25:00 What is package-ng? 
	FreeBSD port and build system to recompile and create package binaries

---

## 11)  • ~30:00 How does DragonFly BSD handle suspend and resume functions common to laptops? 
	It does not provide reliable locks. 

---

## 12)  • ~35:50 What is the growing issue about systemd in relation to BSD? 
	Since system is a dynamically growing, DragonFly BSD is finding it difficult to set targets to achieve compatibility with               systemd.

---

## 13)  • ~38:00 Of the 20,000 packages available in DragonFly BSD where are they primarily targeted? 
	They are targetted primarily at Linux. 

---

## 14)  • ~38:30 Out of FreeBSD, OpenBSD, NetBSD, and DragonFly – what is each project focusing on? 
	People are working on orthogonal things one of NetBSD and OpenBSD was working on systemd replacement some are working on the             ssl library 
	FreeBSD is concentrating on  – Jails or compartments  
	DragonFly is working on  Network Stack performance and choke points

---

## 15)  • ~40:23 How does GPL based Linux software cross over into BSD distros?
	Linux has non-GPL software. DragonFly is BSD License. 

---
