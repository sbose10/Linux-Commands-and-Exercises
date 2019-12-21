


Name: Sonita Bose

Course: ITMO-556-01 Introduction to Open Source Software

CWID: A20447922

# Chapter 07 Review Questions

---

## 1.What are the two main representatives of stream editors?
- [ ] a. gedit and kate 
- [ ] b. Nano and Joe 
- [ ] c. vi and Nano 
- [X] d. vi and Emacs

---

## 2.Which family of editors came first? 
- [ ] a. Screen editors 
- [ ] b. Butterfly editors 
- [ ] c. GUI editors 
- [X] d. Stream Editors

---

## 3.Emacs at it's core is what? 
- [ ] a. A fine operating system in need of a good editor 
- [ ] b. The heart and soul of hackers 
- [X] c. An interpreter for Emacs Lisp 
- [ ] d. A C program
---

## 4.Who created the vi editor? 
- [ ] a. Richard Stallman 
- [ ] b. Doug McIlroy 
- [X] c. Bill Joy 
- [ ] d. Dave McKenzie

---

## 5.What year was vi release in? 
- [ ] a. 1972 
- [X] b. 1979 
- [ ] c. 1999 
- [ ] d. 1978

---

## 6.Which of the following sequences of the history of vi is correct? 
- [ ] a. Emacs -> ed -> ex -> vi 
- [X] b. ed -> em -> ex -> vi -> vim 
- [ ] c. em -> ex -> vi 
- [ ] d. em -> ed -> vi -> vim

---

## 7.What are the three modes in vi?

Ex Command and insert

---

## 8.What is the key you use in vi to transition between COMMAND MODE and INSERT mode?

ESC 

---


## 9.What command sequence (key) in vi will add text to the right of the current cursor position? (just the letter)

a 

---


## 10.What command sequence (key) in vi will move you to the beginning of the next word? (just the letter)

w

---

## 11.What command sequence in vi will delete a single line based on the current cursor position? (just the letters)

dd

---

## 12.What command sequence in vi will delete 10 lines from the current cursor position? (just the numbers and letters)

10dd

---

## 13.Which command in ex mode (vi) will save the current file you are working on and exit the vi editor? (include the ":")

:wq

---

## 14.In the log file u_ex150911.log what would be the ex command to search forward for occurrences of YandexBot? (include the forward slash)
/YandexBot\

---

## 15.Assuming your pwd is Linux-text-book-part-I and you have loaded Chapter-02.chapter-02.md into vi, what would be the ex mode command to replace all occurrences of linux with Linux?

1,$s/linux/Linux/g

---

## 16.Assuming your pwd is Linux-text-book-part-I and you have loaded Chapter-02.chapter-02.md into vi, what would be the ex mode command to replace all occurrences of Linux with GNU/Linux? (remember to escape the /)

1,$s/Linux/GNU\/Linux/g

---

## 17.Assuming the your pwd is Linux-text-book-part-I and you have loaded Chapter-02.chapter-02.md into vi, what would be the ex mode command to remove all occurrences of the word Windows?

 1,$s/Windows//g
 
---

## 18.Assuming a file name topsecret.sh has a permission of 644 - what is the shortcut to give the owner of the file permission to execute the script?

chmod u+x topsecret

---

## 19.Assuming a file named moretopsecret.sh has a permission of 757 - what is the shortcut to remove all permissions from the the other group?

chmod o-rwx moretopsecret.sh

---

## 20.What is the correct sequence of profile inheritance? 

- [X] a. /etc/profile -> ~/.bash_profile or ~/.bash_login or ~/.profile -> ~/.bashrc 
- [ ] b. ~/.bashrc -> ~/.bash_profile or ~/.bash_login or ~/.profile -> /etc/profile

---

## 21.What is the command to display the contents of the PATH system variable on the command line? 

- [ ] a. echo PATH 
- [ ] b. echo $PATH 
- [ ] c. echo path 
- [X] d. $PATH

---
