Name: Sonita Bose

Course: ITMO-556-01 Introduction to Open Source Software

CWID: A20447922


# Chapter 2 Lab Questions : Activity 1 

# Case Study 1 
                                         

# Tumblr <img src="https://github.com/illinoistech-itm/sbose10/blob/master/images/tumblrpic.jpg" alt="Tumblr" width="40" height="40"/>


[Link to the Tumblr case study](http://highscalability.com/blog/2013/5/20/the-tumblr-architecture-yahoo-bought-for-a-cool-billion-doll.html)

## 1.What market does that company serve? (What do they do?) And have they always served that market?

Tumblr is a social media website where you can read post or blog under different genres using different mediums like text photos and videos. Tumblr allows you to explore your content based on different categories likes text, photos, gifs videos, trending, quotes and audio. Bloggers can schedule their blogs on their dashboard. Tumblr users can also feature their blogs on Twitter and Facebook. It primarily serves content creators, bloggers and digital marketing. In the year 2013, Yahoo acquired Tumblr and then it was eventually sold to Verizon Communication. The online traffic reduced, and Tumblr continued to struggle and currently it is owned by Automattic.

---

## 2.What Operating System(s) are used?

The operating systems used is OS X for development and Linux (CentOS, Scientific) in production

---

## 3.What programming languages/frameworks are used?


•	Web Server: Apache

•	Programming: PHP, Scala, Ruby

•	Database: Redis, HBase, MySQL

•	Varnish(accelerator), HA-Proxy (Load balancer), nginx (web server)

•	Memcache (Memcached is a general-purpose distributed memory caching system. It is often used to speed up dynamic database-driven websites by caching data and objects in RAM to reduce the number of times an external data source must be read)

•	Gearman(framework)

•	Kafka (open-source stream-processing software platform)

•	Kestrel (open source, cross platform, light weight and a default webserver)

•	Finagle (extensible RPC system for the JVM, used to construct high-concurrency servers) –   application

•	Protocols: Thrift, HTTP

•	Func - a secure, scriptable remote-control framework and API - framework

•	Git: Git is a distributed version-control system for tracking changes in source code during software development.

•	Capistrano (deploying web applications.)

•	Puppet (Puppet provides the ability to define which software and configuration a system requires and then maintain a specified state after an initial setup)

•	Jenkins (Jenkins is a free and open source automation server written in Java- tool build and deployment) Tools for software engineering

---

## 4.What storage and what database technologies are used?

•	200 database servers (many of these are part of a spare pool we pulled from for failures)

•	47 pools

•	30 shards

•	30 memcache servers

•	22 redis servers

•	S3 services are used to store

•	Databases: Redis, HBase, MySQL

---

## 5. What Opensource license is the technology stack licensed under?

Tumblr is released under the GNU General Public License
The different technology stack has the corresponding licenses
•	Jenkins is free software and is released under the MIT License.

•	Apache uses Apache License version 2.0.

•	Redis distributed under 3-Clause-BSD license.

•	Hbase released under Apache License version 2.0.

•	MySQL is an open source project uses GPL GNU Public License.

•	The PHP scripting language is released under PHP License is the software license.

•	Scala uses Apache License version 2.0.

•	Varnish uses 2 clause BSD License

•	Memcache is released under BSD License

•	Ngix is released under BSD license

•	Capistrano is released under MIT License

•	Pupet is open source and uses GPL and Apache License version 2.0

•	Kafka is released under Apache License version 2.0.

•	Finagle is released under Apache Public License 2.0

•	Kestrel is released under Apache Public License 2.0

•	Git is a free and open source software which is released under GNU General Public License

---


## 6. What is the current stock price and what was the IPO of the company? (if traded publicly.)

Currently, Tumblr is privately owned by Automattic.
In February 2007, Tumblr had about 75,000 users when it was launched. Tumblr was acquired by Yahoo on May 20,2013 for $1.1billion. On June 2017, Yahoo was acquired by Verizon Communications. Later, August 12, 2019, Verizon Media announced that it would sell Tumblr to Automattic and the sale price was less than $3Million, which was less compared to Yahoo’s original cost price.

---

## 7. What major obstacle (cost, system performance, QPS, etc, etc) was the company trying to overcome by implementing this technology stack?

Tumblr receives 500 million-page views daily and 50 million posts daily.
This puts strains on the web servers and the databases holding the content face contention while posts as well as reading while creating dynamic pages for page views.
The database contention was overcome by sharding. The creation of dynamic pages was speeded up using Redis data stores. Varnish, HA-Proxy and nginx handled the network traffic bottlenecks

---

## 8.What can you learn from this article relating to technology and infrastructure?

It is amazing how open source software provides solutions to solve problems in scaling up applications as traffic grows. 
With the use of automation, they were able to address concerns with the growth of the software. The databases increase however the Applications don’t. 
New ideas and features are always encouraged however if the probability of the project failure is high, then it is recommended to avoid wasting time on it. 
Technologies are used to help solve problems however one must go through the task of learning new technologies and implementing it to offer the best optimized performance with it. In this article we see that they did take advice from employees from other companies like Facebook, twitter and LinkedIn to gain inspiration from their ideas.

---

# Case Study 2



# Flickr <img src="https://github.com/illinoistech-itm/sbose10/blob/master/images/flickrLogo.jpg" alt="Flickr" width="40" height="40"/>


[Link to the Flickr case study](http://highscalability.com/blog/2007/11/13/flickr-architecture.html)

## 1.What market does that company serve? (What do they do?) And have they always served that market? 
Flickr is a social media platform where in the user can upload 1000+ photos and videos with 1TB of storage without any charge. One can like, share and download media from the platform and view based on different genre. Once Yahoo acquired the company and decided to shut down Yahoo Photos, everyone was forced to migrate to Flickr. SmugMug acquired Flickr in 2018. 

---

## 2.What Operating System(s) are used? 

The operating system used is Linux (RedHat)

---

## 3.What programming languages/frameworks are used? 

•	Programming language – PHP PERL

•	Database - MySQL 

•	Database Architecture- Shards

•	Memcached for a caching layer.

•	Squid in reverse-proxy for html and images.

•	Smarty for templating

•	PEAR for XML and Email parsing

•	ImageMagick, for image processing

•	Java, for the node service

•	Web Server Software: Apache 

•	SystemImager for deployment

•	Ganglia for distributed system monitoring

•	Subcon stores essential system configuration files in a subversion repository for easy deployment to machines in a cluster.

•	Cvsup for distributing and updating collections of files across a network.

---

## 4.What storage and what database technologies are used? 

•	MySQL is the database used.

•	Flickr stores a reference to an image in their databases, the actual file is stored on a separate storage server elsewhere on the network.

---

## 5. What Opensource license is the technology stack licensed under? 

Flickr is licensed under creative Commons. 
The technology stack is released under the following Licenses

•	Apache uses Apache License version 2.0.

•	MySQL is an open source project uses GPL GNU Public License.

•	The PHP scripting language is released under PHP License is the software license.

•	Memcache is released under BSD License 

•	Database Architecture- Shards is released under MIT License 

•	Squid uses GPL GNU Public License.

•	Smarty uses GNU Lesser General Public License

•	Pear is released under GNU Lesser General Public License v2.1

•	ImageMagick uses GPL v3

•	Ganglia is distributed under BSD License

•	Cvsup is covered under GNU Public License


---


## 6. What is the current stock price and what was the IPO of the company? (if traded publicly.) 

Flickr is privately owned by Don MacAskill and Chris MacAskill. It does not have a stock price.

---

## 7. What major obstacle (cost, system performance, QPS, etc, etc) was the company trying to overcome by implementing this technology stack? 

Flickr keeps its pictures and videos in flat file systems. But the metadata is kept in databases. There is a huge number of queries run to create the page dynamically. This requires scaling up. Sharding is used to take care of contention.
The pictures are kept is an Open system software-based solution called squid cache with a GNU GPLv2 license to help with displaying pages with the pictures as soon as possible.

---

## 8.What can you learn from this article relating to technology and infrastructure?

Every company starts on a small note however there comes a time when the company grows from all aspects. During this time usually a crisis arises to deal with the demand and supply of the business. We have learnt that going stateless and being able to jump from one server to another makes easier APIs. The initial creation and designing of the database should be made keeping in mind the future demands since restructuring the database is wearisome. During the initial days of the business, investment should be low since the outcome is unknown. Estimating the future growth and preparing for it, is a key take away. We also learn that it is important to see what the end point of the existing software is and if the end point is reached what is the alternative. Code should be designed in a way where layering is possible and new releases and patches are easy to perform.

---

# Chapter 2 Lab Questions : Activity 2

## 1. What is Bryan Cantrill’s initial main point in the first article?

Brian is concerned about the current chemistry between FOSS products and cloud service providers using FOSS to provide Software as a service and its adverse effects on FOSS. 
He feels that cloud service providers are clearly benefiting largely from FOSS without having to pay for any of it. 

This is and will lead many FOSS products to create restrictive licenses in defense, thereby polluting the sanctity of the sacred FOSS ideologies. He feels this is akin to the mid life crisis of a human and is trying to justify that there can be smart business models created to make FOSS applications sustainable to promote FOSS principles despite the current situation.

---

## 2. Do you agree with him, why or why not?

It's quite evident to me that cloud providers are taking advantage of FOSS's ideology and it works in their favor. I feel that FOSS will not stand to lose anything if cloud providers continue to use their software as a service with no returns. It is in line with the theoretical ideology and practices of FOSS. FOSS applications will continue to make money via services, support and training. However, I would expect that considering the mindset of FOSS enthusiasts they are feeling dismayed due to the fact that if FOSS ideology is to serve the community and clearly cloud providers are leveraging this aspect, then it’s only fair that they FOSS in some way too. So, I agree with Bryan when he says that FOSS is undergoing a midlife crisis, feeling lost and deceived but trying to voice their feelings. It’s also not helping that FOSS companies like Red Hat are not making money leading to the feeling that FOSS might be single for the rest of its life failing to find companies willing to marry the concept. However the fact that FOSS believes in freedom of using, modifying and redistributing source code is exactly what cloud services are doing and expecting anything (monetary or not) in return will be a violation of FOSS as well. 

---

## 3. What is Jay Kreps response/contention in the second article?
Krep disagrees that the Confluent license does not follow the true ideals of FOSS. He feels , that Bryan’s belief about cloud providers extorting from FOSS applications is inciting licenses to be more restrictive and less in sync with FOSS ideals, is not right. There are FOSS companies that are not at all affected by the cloud providers and are successfully thriving with their own sustainable business models. Elastic DB had a very successful IPO and MongoDB yet is another multi-bagger company. 

---

## 4. Do you agree with him, why or why not?

I don’t agree with Kreps. I feel FOSS believers have the right to be concerned about how community uses or misuses them. So a movement to protect their FOSS interests for the sake of a holistic community is justified. However, since cloud providers are in line with how FOSS applications can be used, we cannot penalize them legally but we can try to inspire them to practice FOSS themselves for the benefit of the community.

---

## 5. What is the main point of Bryan Cantrill’s rejoinder in the third article?
Bryans firmly questions Confluent in the rejoinder that if Confluent's license is restricting end users from redistributing the software as a SAAS, PAAS , IAAS or any similar service, then why aren’t they agreeing that it’s like any other EULA that is worded in a way where in the ownership of the software is a huge grey area of hidden restrictions. They are clearly more inclined towards the ideals of proprietary software than any of FOSS's. He feels Confluent should own up to this and quit declaring themselves as FOSS practitioners. He also requests legal communities to take a closer look and reassess these customized licenses before they turn into a disaster for users.

---

## 6. Do you agree with him, why or why not?

I agree with Bryan here. He has very clearly shared an excerpt from Confluent's license that states end users are restricted from offering their own licensed copy of Confluent software as SAAS, PAAS , IAAS or any similar service. I feel this is a direct violation of FOSS where anyone is allowed to modify or redistribute their own copy of the software. It's evident from this example that Bryan's belief about FOSS losing its true essence is a valid concern with regard to these licenses. 

---

## 7. What is the solution in your opinion?
I feel it’s a battle of ideals, perspectives and economic interests. FOSS feels the benefit of community contribution to software’s growth outweighs propriety software’s growth both in money and spirit. Foss is the ideal answer in theory but it will take decades to beat proprietary gains because the people behind proprietary are also humans and not robots who are paid to produce quantity and quality while open Source’s growth depends on community's passion towards a certain technology. 

Having said that, the rising concern regarding the exploitation of FOSS can be put to peace if cloud providers have a transparent billing system which reflects that the charges for a SAAS/IAAS/PAAS offering is FOSS complaint for the FOSS applications being used in their packaged service. 

For instance, if Google Cloud is providing a package of Cloud Infrastructure + MongoDB + MongoDB support services, then the client should be charged $X + $0 + $Y respectively. This way we know that MongoDB , although is part of the packaged offering, but is still being redistributed for free, thereby not violating any FOSS ideals.


---






































