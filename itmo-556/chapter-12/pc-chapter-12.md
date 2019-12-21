Name: Sonita Bose

Course: ITMO-556-01 Introduction to Open Source Software

CWID: A20447922

# Chapter 12 Podcast Questions  
---

## Link : http://twit.tv/show/floss-weekly/283  

---

## 1)	~2:02 What is Nginx?  
Nginx was originally something like Reverse proxy server. 

---

## 2) ~3:22 What percentage of the world’s websites are served with Nginx? 

The percentage of the world’s websites which are served with Nginx is 15%.


---

## 3) ~4:57 What was the challenge that lead to the creation of Nginx? 

High level of concurrency for web delivery –C10K  for  Rambler a website was the challenge that lead to the creation of Nginx


---

## 4) ~5:33 What is the main architectural difference between Nginx and Apache webservers? 

nginx - is event driven and runs very few processes that hand off jobs to worker processes apache - spawns a thread for every connection which scales 
linearly i.e it grows proportionally with the number of logged in users


---

## 5) ~8:32 What are some of the main use cases for Nginx? 

Web-service static content , proxy into app server , php back ends , proxy to another webserver, edge cache, load balancer, smtp proxy . ssl termination and acceleration.


---

## 6) ~11:00 When did Sarah get involved in Nginx? 

Sarah was at Peripheral level I 2006 as end user. Video game publishing world evangelist –and nginx  serves this sector best

---

## 7) ~12:56 Where did Nginx come from? 

Nginx came from Russia.


---

## 8) ~17:41 What is “caching” in relation to websites? 

Caching stores prepared pages from dynamic pages so that next time it can be served readymade.


---

## 9) ~19:45 What is “proxying” in relation to websites? 

Proxying is redirecting the user of a website to get pages from some other server without the user knowing about it.

---

## 10) ~29:36 What was the founder’s motive to opensource Nginx? 

Igor Sassyev was the founder of nginx. Igor wanted to put forward a useful webserver and worked on it as non-opnsource and when it was finally proved to be good he made it open source. He did not want others to be part of the development while it was being developed.

---

## 11) ~34:00 What is the difference in the opensource Nginx and the commercial version? (Freemium?) 
Commercial version is more enterprise system oriented. It was meant to offer support services for clients. It has syslog daemon to log processes which helps enterprise users who would like to rotate and archive logs automatiocally.


---

## 12) ~40:19 Are there Linux Distro packages for Nginx? 

Linux Distro packages for Nginx are Red hat centos debian ubuntu. 


---

## 13) ~53:10 Can Apache and Nginx co-exist or is it a winner take all?
Yes, both the webservers can co-exist on a server with nginx taking the high concurrency processes off Apache.

