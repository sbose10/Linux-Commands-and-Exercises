Chapter 08 Lab
----------------------------------------------------------------------------------------------------------------------------------------

Name: Sonita Bose

Course: ITMO-556-01 Introduction to Open Source Software

CWID: A20447922

---
# LAB 8 – OSS

---

LAB 8 


## 1.	What would be the command to create an array in Bash named itemARRAY?

declare -a itemARRAY

---

## 2.	Write a shell script that declares an array in Bash named dirarr. Using the mapfile command - redirect the output of the ls -l ~ command into the array previously named and echo out the 3rd and 4th elements of that array.
 ![2](https://github.com/illinoistech-itm/sbose10/blob/master/images/chapter-08/2-A-8.JPG)
 ![2](https://github.com/illinoistech-itm/sbose10/blob/master/images/chapter-08/2-b-8.JPG)

---

## 3.Write a for loop to iterate through that array and print every element of the line out on the screen. (Make sure you detect the length of the array and use a $LENGTH variable as your sentinel condition.
![3](https://github.com/illinoistech-itm/sbose10/blob/master/images/chapter-08/3-a-8.JPG)
![3](https://github.com/illinoistech-itm/sbose10/blob/master/images/chapter-08/3-b-8.JPG)

---

## 4.	Write the syntax to make a cronjob execute 5 minutes past every hour everyday to execute the shellscript you previously made to store the content of ls -l ~ into an array named dirarr.

	5 * * * * /home/sonita/q2.sh 


---

## 5.	From the clones textbook code, locate the file install-java8.sh located in the files/Chapter-08/lab directory. Modify the script to include IF statements to check for the existence of the path /datapool1 and to print an error message if the path does not exist.

![5](https://github.com/illinoistech-itm/sbose10/blob/master/images/chapter-08/5-8.JPG)

---

## 6.	Modify install-java8.sh again--this time take a positional parameter and put that in place of the directory name /datapoo1 (this will allow you to customize the install location of the shell script).

:%s/\/datapool1/\$1/g
To run the script type 
./ install-java-8-open-jdk.sh /datapool1

![6](https://github.com/illinoistech-itm/sbose10/blob/master/images/chapter-08/6-8.JPG)

---

## 7.Modify the install-java8.sh from the previous question to count the number of positional parameters and if less than 1 or more than 1 stop execution of the script.
![7](https://github.com/illinoistech-itm/sbose10/blob/master/images/chapter-08/7-8.JPG)

---

## 8.Create a directory in ~ named topsecret. In that directory create a file named xfile.txt. Write a shell script to check if that file has executable permission by passing the filename as a positional parameter. If TRUE print a message. If FALSE print an error message that the positional parameter name of the file is not executable.It shows it does not have any executable permissions

![8](https://github.com/illinoistech-itm/sbose10/blob/master/images/chapter-08/8-a-8.JPG)
![8](https://github.com/illinoistech-itm/sbose10/blob/master/images/chapter-08/8-b-8.JPG)
 

---

## 9.Write a shell script to check in the ~/topsecret directory to see if a given file name exists. 
If TRUE print a message else print an error message with the given file name being passed.
![9](https://github.com/illinoistech-itm/sbose10/blob/master/images/chapter-08/9-8.JPG)

---

## 10.Write a shell script to check if a given PATH is a file or a directory. If TRUE print a message, else print an error message using the given file name.

![10](https://github.com/illinoistech-itm/sbose10/blob/master/images/chapter-08/10-8.JPG)
---

## 11.Write a shell script that takes 4 positional parameters. In the shell script print out $0, $#, and $@ with an explanation of what these variables contain.

![11](https://github.com/illinoistech-itm/sbose10/blob/master/images/chapter-08/11-8.JPG) 

---

## 12.Repeat the previous cron command but this time redirect the standard out and standard error to a file named ~/Documents/my.log
5 * * * * sudo /home/sonita/q2.sh >> ~/Documents/my.log 2>&1

---

## 13.	Using awk and other tools, how would you find which ip caused the most HTTP 404 errors? Take a screenshot of the command and the output. 
Use these two files in files/Chapter-08/logs: u_ex150721.log, u_ex151002.log.

![13](https://github.com/illinoistech-itm/sbose10/blob/master/images/chapter-08/13-8.JPG)
![13b](https://github.com/illinoistech-itm/sbose10/blob/master/images/chapter-08/13-B-8.JPG)
 
---

## 14.Using awk and other tools, how would you capture the top 5 offending IPs? Take a screenshot of the command and the output. Use these two files in files/Chapter-08/logs: u_ex150721.log, u_ex151002.log.


![14](https://github.com/illinoistech-itm/sbose10/blob/master/images/chapter-08/14-8.JPG)


---

## 15.Using sed, type the command to find the line bind-address located in the mariadb database server config file (you might need to install mariadb-server). The file locations are: Fedora 28 /etc/my.cnf.d/mariadb-server.cnf and Ubuntu 16 and 18 /etc/mysql/mariadb.conf.d/50-server.cnf. Comment out the value, change the IP value to 0.0.0.0, and write the change back to the original file. Take a screenshot of the command.

![15](https://github.com/illinoistech-itm/sbose10/blob/master/images/chapter-08/15-A-8.JPG)

![15](https://github.com/illinoistech-itm/sbose10/blob/master/images/chapter-08/15-B-8.JPG)

![15](https://github.com/illinoistech-itm/sbose10/blob/master/images/chapter-08/15-C-8.JPG)

![15](https://github.com/illinoistech-itm/sbose10/blob/master/images/chapter-08/15-D-8.JPG)

---
