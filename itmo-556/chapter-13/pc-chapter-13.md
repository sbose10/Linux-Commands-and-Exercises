Name: Sonita Bose

Course: ITMO-556-01 Introduction to Open Source Software

CWID: A20447922

# Chapter 13 Podcast Questions  
---

## Link : https://www.youtube.com/watch?v=xXWaECk9XqM

---

## 1. ~0:30 Where does/did Bryan work, who recently bought that company, and what do they do?

Bryqn Catrill worked for a start-up called Joyent. It has now been bought up by Samsung. The make mobile phones.

---

## 2. ~1:33 What is the birth date of containers?

Mar 18 1982

---

## 3. ~3:25 What was the next iteration of containers?

Jail 

---

## 4. ~3:49 What is the purpose of a Jail?

To contain an alternative root user within a its own environment so that it does not interact with any other apps.

---

## 5. ~5:10 What did SUN call their full application environment they created in 2002?

Zones Virtualization and Namespace Isolation

---

## 6. ~6:13 What is every application running on?

Every application is running in its own zone. But many zones run under an operating system on the same hardware.

---

## 7. ~8:43 What did Amazon announce in 2006?

EC2 or Elastic Cloud which was a virtual machine unlike zones or jail 

---

## 8. ~9:00 In 2006 what technology was Joyent using to run its Public Cloud? In 2006 what technology was Amazon using to run its Public Cloud?

Joyent was using a operating system instance running under another , Amazon Cloud created a hardware level virtualization or a virtual machine in its Public Cloud.

---

## 9. ~9:25 What became de facto for the cloud?

The problem with hardware virtualization is that you need to run a complete operating system on the virtual machine. If you have 4 virtual machines with different or similar operating systems on top of a hypervisor, it means you have 5 complete sets of code running for doing the same thing. This is a waste of resource but due to Amazon cloud adopting the strategy the pattern became de facto for the cloud.

---

## 10. ~11:18 What happens to the RAM when you give it to an operating system?

The Operating System takes ownership of the RAM from address zero to the top of the core.

---

## 11. ~14:40 What does Joyent's Manta service allow you to do with containers and objects?

Joyent's Manta service allows you with Object Storage and Converged Analytics

---

## 12. ~18:58 What command hadn't been created in 1986?

The unix command head wasn’t available in 1986

---

## 13. ~21:45 When did the world figure out containers and what was this product?

The world figured out containers when they understood OS Level virtualization offred by Docker

---

## 14. ~22:57 Why did the container revolution start with Docker?

Container revolution started with Docker because they are terribly fast.

---

## 15. ~24:07 Containers allow developers to do what?

Containers allow developers to think operationally about the software they deploy.

---

## 16. ~26:00 What is Triton and what does it do?

Object Storage

---

## 17. ~31:42 What are the two approaches to the container ecosystem, and what is the difference?

The two approaches are Framework approach or Library approach. The library approach is more under control of the developer where as the framework approach the developer has no control unless a plug-in is used to override the framework

---

## 18. ~33:25 What is the "Hashi" ethos?

The Hashi ethos is to use the library approach.

---

## 19. ~37:00 What was the mistake that happened with the pilot operator release valve at 3 Mile Island?

The pilot operator release valve status is displayed by a lamp. It goes off when the solenoid of the relief valve is activated. But that is a wrong way to monitor the situation because the current through the solenoid does not ensure that the valve is actuated as designed.

---

## 20. ~39:05 With container based systems in what terms must we think in?

Developers need to be thinking about failure of systems not individual programs.

---

## 21. ~40:00 Why is scheduling containers inside of Virtual Machines a bad idea?

Scheduling containers inside of Virtual Machines a bad idea because you can not control containers without controlling the VMs

---

## 22. ~What are Joyent's thoughts regarding Virtual Machines in the application stack?

Joyent believes that containers should be running on bare metal rather than in VMs.

---
