# OSS Capstone Project: The Open Source Audit

**Name:** Udayraj Patil 
**Reg No:** 24BCE11159
**Slot:** A24
**Course:** Open Source Software  
**College:** VIT Bhopal University 

---

## Software I Choose
**Git**
- Category: Version Control
- License: GPL v2
- Made by Linus Torvalds in 2005

I have selected Git since I already use it in my life and I wanted to learn more about it, not only the syntax but also the origin and the way it functions as it does.

---

## What's In This Repo

| File | What It Does |
|------|-------------|
| `Script_1_System_Identity_Report.sh` | Displays information about the kernel, user, and uptime of system |
| `Script_2_FOSS_Package_Inspector.sh` | Report Answers the question whether a package is installed correctly and provides the information |
| `Script_3_Permission_Auditor.sh` | Designates grants and sizes of key directories |
| `Script_4_Log_File.sh` | Determines the number of times that a heyword is repeated in a log file |
| `Script_5_Manifesto.sh` | Prompts you to answer 3 easy questions and comes up with your open source statement |

---

## How to Run the Scripts

First make them executable:
```bash
chmod +x Script_1_System_Identity_Report.sh
chmod +x Script_2_FOSS_Package_Inspector.sh
chmod +x Script_3_Permission_Auditor.sh
chmod +x Script_4_Log_File.sh
chmod +x Script_5_Manifesto.sh
```

**Script 1**
```bash
./Script_1_System_Identity_Report.sh
```
Displays a welcome page with your OS, kernel version, your username, time up and license details of Git.

**Script 2**
```bash
./Script_2_FOSS_Package_Inspector.sh
./Script_2_FOSS_Package_Inspector.sh git
```
Any package name may be passed or can be left blank which default to git.  
Indicates whether or not it is in place, and version and whereabouts with a philosophy note.


**Script 3**
```bash
./Script_3_Permission_Auditor.sh
```
Browses in directories, such as /etc, /var/log, /usr/bin and displays the owner and size of them.  
Also checks for .gitconfig.


**Script 4**
```bash
./Script_4_Log_File.sh
./Script_4_Log_File.sh /var/log/system.log error
```
Processes a line of a log file and counts the number of matches of the key word.   
Sees the previous 5 lines which there are a replica.


**Script 5**
```bash
./Script_5_Manifesto.sh
```
Goes through the 3 questions and personal open source manifesto using interactive question and answer.  
Also stores your personal open source manifesto as a personal file.

---

## Requirements

- MacOS Terminal or any Linux based operating system.
- Git installed — `brew install git` on Mac
- Bash shell (comes pre-installed)

---

## References

- gnu.org/philosophy/free-sw.html
- git-scm.com/book
- opensource.org/osd
- catb.org/~esr/writings/cathedral-bazaar
- survey.stackoverflow.co/2023
- spdx.org/licenses/GPL-2.0-only.html
- github.com/git/git


