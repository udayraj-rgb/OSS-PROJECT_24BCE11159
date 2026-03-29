# OSS Project: The Open Source Audit

**Name:** Udayraj Patil  
**Registration No:** 24BCE11159  
**Slot:** A24  
**Course:** Open Source Software  
**College:** VIT Bhopal University  

---

## About the Project

For this project, I chose **Git**, a widely used version control system that I already use in my daily workflow. My goal was not just to practice commands, but to understand:

- How Git was created  
- Why it works the way it does  
- The philosophy behind open source development  

Git was created by **Linus Torvalds in 2005** and is released under the **GPL v2 license**.

---

## What’s Inside This Repository

This project consists of several Bash scripts, each designed to explore a different aspect of system auditing and open-source concepts:

| File | Description |
|------|------------|
| Script_1_System_Identity_Report.sh | Displays system details like kernel version, username, uptime, and Git license info |
| Script_2_FOSS_Package_Inspector.sh | Checks if a package is installed and shows version, location, and a short philosophy note |
| Script_3_Permission_Auditor.sh | Audits important directories and displays ownership and size details |
| Script_4_Log_File.sh | Searches log files for keywords and shows occurrences with context |
| Script_5_Manifesto.sh | Generates a personalized open-source manifesto based on user input |

---

## How to Run the Scripts

### Step 1: Make Scripts Executable

```bash
chmod +x Script_1_System_Identity_Report.sh
chmod +x Script_2_FOSS_Package_Inspector.sh
chmod +x Script_3_Permission_Auditor.sh
chmod +x Script_4_Log_File.sh
chmod +x Script_5_Manifesto.sh

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
