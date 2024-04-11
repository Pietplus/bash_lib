tail -2 log.txt
tail -f log.txt
head -5 log.txt
script 1.log


string manipulation
Echo "This is my data" | tr '[:upper:]' '[:lower:]' 

sed 's/should/will' inputfile2

Df -kh zeigt mir alle mounted filesysteme an.

Ls -ltr
Bash -vx
!511

find . -size +10000
du -sh *
du -sh .

nfs drive
Autohome = config, remote Rechner filessysteme mounten 


echo "script 1.log" >> cmd.txt -> write command in a textile.
Idea: history >> cmd.txt LOLN

Wenn usr/
Oder /opt voll wäre (100%) dann würde der Rechner abkacken.

dsmeg

Sudo -l -> zeige mir Ausführungsberechtigungen an.

Uptime

last -> zeige mir wer wann eingeloggt war.

Last | grep reboot

File <file> -> fileformat anzeigen.
File -i <file>

export PATH = $PATH:

Top -> show CPU
Type into top: h for man

CPU mindestens 20% Luft mit Swap 1% Memory

Vmstat 1 10 -> wie top nur auf Anzahl limitiert!

Ps -aux 
Ps -auxww 


For LINUX:
	ps
 -eo pid, user,%cpu,cmd --sort=-%cpu|head -n 4
	ps -eo pid, user,%cpu,cmd --sort=-%mem|head -n 4tail -2 log.txt
tail -f log.txt
head -5 log.txt
script 1.log


string manipulation
Echo "This is my data" | tr '[:upper:]' '[:lower:]' 

sed 's/should/will' inputfile2

Df -kh zeigt mir alle mounted filesysteme an.

Ls -ltr
Bash -vx
!511

find . -size +10000
du -sh *
du -sh .

nfs drive
Autohome = config, remote Rechner filessysteme mounten 


echo "script 1.log" >> cmd.txt -> write command in a textile.
Idea: history >> cmd.txt LOLN

Wenn usr/
Oder /opt voll wäre (100%) dann würde der Rechner abkacken.

dsmeg

Sudo -l -> zeige mir Ausführungsberechtigungen an.

Uptime

last -> zeige mir wer wann eingeloggt war.

Last | grep reboot

File <file> -> fileformat anzeigen.
File -i <file>

export PATH = $PATH:

Top -> show CPU
Type into top: h for man

CPU mindestens 20% Luft mit Swap 1% Memory

Vmstat 1 10 -> wie top nur auf Anzahl limitiert!

Ps -aux 
Ps -auxww 


For LINUX:
	ps
 -eo pid, user,%cpu,cmd --sort=-%cpu|head -n 4
	ps -eo pid, user,%cpu,cmd --sort=-%mem|head -n 4{\rtf1\ansi\ansicpg1252\cocoartf2580
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\paperw11900\paperh16840\margl1440\margr1440\vieww19860\viewh16580\viewkind0
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural\partightenfactor0

\f0\fs24 \cf0 File -i /usr/bin/date -> binary\
\
**************************************\
#CRONJOBS\
\
# check all the jobs which are running.\
	Crontab -l \
# before change: save crontab\
	Crontab -l > /tmp/l.log\
#change a crontab\
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural\partightenfactor0
\cf0 	 crontab -e\
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural\partightenfactor0
\cf0  \
\
***************************************\
#CRONJOBS\
\
# check all jobs which are in the q\
	atq\
# do a job once:\
	At now /<file>/\
	At 23.15 /<file>/\
**************************************\
#FILES\
\
\
# working with big files\
Journalctl -n 10 /va/log/messages\
journalctl -n 100\
**************************************\
#CPU\
\
#show amount of cpu\
mpstat -P ALL\
\
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural\partightenfactor0
\cf0 **************************************\
#PROCESSES\
\
#give me a tree view of processes\
pstree\
Ps -aux a all. U owner. X not from terminal\
**************************************\
Ps \'97sort pcpu\
**************************************\
# NETWORKING\
\
# show route of packages\
Traceroute localhost:\
# new command\
Mtr -4b login11\
\
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural\partightenfactor0
\cf0 Was ist ein Netzwerksturm?\
\
#show my network\
netstat -a \
\
nslookup\
\
Dig <user>\
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural\partightenfactor0
\cf0 ***************************************\
#SYSTEM SYSTEMD\
	Ps -ef | grep system\
\
# show user on system\
	Finger \
***************************************\
	Strings /usr/bin/date | grep time\
\
	strace /usr/bin/date | grep time\
\
**************************************\
# don\'92t print the comments\
	| grep -v \'91^#\'92 /path/file\
# just print the comments\
	| grep -v \'91^#\'92 /path/file\
***************************************\
#RUNLVL\
\
	Chkconfig \'97list\
\
# get a list of all open files and who writes what to which place	\
	lsof -> CHECK IT OUT\
\
\
***************************************\
#Show me the content of a binary:\
	\
xxd -b <binary_file> | less\
\
\
\
\
\
\
\
\
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural\partightenfactor0
\cf0 \
\
}tail -2 log.txt
tail -f log.txt
head -5 log.txt
script 1.log
******************************************************

string manipulation
Echo "This is my data" | tr '[:upper:]' '[:lower:]' 
******************************************************
sed 's/should/will' inputfile2
******************************************************
Df -kh zeigt mir alle mounted filesysteme an.
******************************************************
Ls -ltr
Bash -vx
!511
******************************************************
find . -size +10000
du -sh *
du -sh .
******************************************************
nfs drive
Autohome = config, remote Rechner filessysteme mounten 
******************************************************

echo "script 1.log" >> cmd.txt -> write command in a textile.
Idea: history >> cmd.txt LOLN
******************************************************
Wenn usr/
Oder /opt voll wäre (100%) dann würde der Rechner abkacken.

dsmeg
******************************************************
Sudo -l -> zeige mir Ausführungsberechtigungen an.
******************************************************
Uptime

last -> zeige mir wer wann eingeloggt war.

Last | grep reboot
******************************************************
File <file> -> fileformat anzeigen.
File -i <file>
******************************************************
export PATH = $PATH:

Top -> show CPU
Type into top: h for man

CPU mindestens 20% Luft mit Swap 1% Memory
******************************************************
Vmstat 1 10 -> wie top nur auf Anzahl limitiert!
******************************************************
Ps -aux 
Ps -auxww 

For LINUX:
	ps
 -eo pid, user,%cpu,cmd --sort=-%cpu|head -n 4
	ps -eo pid, user,%cpu,cmd --sort=-%mem|head -n 4
meine notizen zu vim

# 2do - read threw
https://stackoverflow.com/questions/tagged/vim?tab=Votes


### open
:e file        open file
vi +12 file    go directly to line 12

### write
:e!            open last version
:w new         safe to new file
:w path/new 

### [can not save - sudo](https://stackoverflow.com/questions/2600783/how-does-the-vim-write-with-sudo-trick-work)
:w !sudo tee %

### can not save - space
:!rm junkfile  delete other file without leaving vim
:df            disk free
:w pathname.  
:ls
:sh            open shell
CONTROL + z    susp aka SIGTSTP
fg             foreground    

### c over i
cc       change hole line
c0 c$    change to the start/end

### replace
r        replace
R        overstrike

### undo/redo
u
⌃⇧r

### delete
D        delete to the right

### evergreens 
.        repeat
dG       delete up to the file end
ci"      replace text between "xxx"
ci[      replace text between [xxx]

### search and replace
:%s/foo/bar/g

### / # von TH
:%s/\/tmp\/foo...     vs     :%s#/tmp/foo...
:%s#/tmp/foo#/tmp/bar#g
sparste dir das escapen von den / im pfad, weil du nicht / sondern # als trenner nutzen kannst


### increase number
CONTROL + a 
CONTROL + x 
vs
r0
r1

### swap
xp
ddp

### delete 11 lines
d10j

### insert separtation 
33i*
33i#

### [Indent multiple lines](https://stackoverflow.com/questions/235839/indent-multiple-lines-quickly-in-vi)
5>>
Vjj>

---

# comment

### [comment multible lines](https://stackoverflow.com/questions/1676632/whats-a-quick-way-to-comment-uncomment-lines-in-vim)
SHIFT + V
:s/^/#

### comment multible lines
:[start line],[end line]s/^/#

### uncomment all lines
:%s/^#/

### uncomment selected lines
Curson an the first "#"
CTRL + V
x

---

# vim vars
echo $TERM


### vim opens slow?
viminfo
mksession
{\rtf1\ansi\ansicpg1252\cocoartf2580
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\paperw11900\paperh16840\margl1440\margr1440\vieww19860\viewh16580\viewkind0
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural\partightenfactor0

\f0\fs24 \cf0 File -i /usr/bin/date -> binary\
\
**************************************\
#CRONJOBS\
\
# check all the jobs which are running.\
	Crontab -l \
# before change: save crontab\
	Crontab -l > /tmp/l.log\
#change a crontab\
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural\partightenfactor0
\cf0 	 crontab -e\
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural\partightenfactor0
\cf0  \
\
***************************************\
#CRONJOBS\
\
# check all jobs which are in the q\
	atq\
# do a job once:\
	At now /<file>/\
	At 23.15 /<file>/\
**************************************\
#FILES\
\
\
# working with big files\
Journalctl -n 10 /va/log/messages\
journalctl -n 100\
**************************************\
#CPU\
\
#show amount of cpu\
mpstat -P ALL\
\
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural\partightenfactor0
\cf0 **************************************\
#PROCESSES\
\
#give me a tree view of processes\
pstree\
Ps -aux a all. U owner. X not from terminal\
**************************************\
Ps \'97sort pcpu\
**************************************\
# NETWORKING\
\
# show route of packages\
Traceroute localhost:\
# new command\
Mtr -4b login11\
\
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural\partightenfactor0
\cf0 Was ist ein Netzwerksturm?\
\
#show my network\
netstat -a \
\
nslookup\
\
Dig <user>\
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural\partightenfactor0
\cf0 ***************************************\
#SYSTEM SYSTEMD\
	Ps -ef | grep system\
\
# show user on system\
	Finger \
***************************************\
	Strings /usr/bin/date | grep time\
\
	strace /usr/bin/date | grep time\
\
**************************************\
# don\'92t print the comments\
	| grep -v \'91^#\'92 /path/file\
# just print the comments\
	| grep -v \'91^#\'92 /path/file\
***************************************\
#RUNLVL\
\
	Chkconfig \'97list\
\
# get a list of all open files and who writes what to which place	\
	lsof -> CHECK IT OUT\
\
\
***************************************\
#Show me the content of a binary:\
	\
xxd -b <binary_file> | less\
\
\
\
\
\
\
\
\
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural\partightenfactor0
\cf0 \
\
}tail -2 log.txt
tail -f log.txt
head -5 log.txt
script 1.log
******************************************************

string manipulation
Echo "This is my data" | tr '[:upper:]' '[:lower:]' 
******************************************************
sed 's/should/will' inputfile2
******************************************************
Df -kh zeigt mir alle mounted filesysteme an.
******************************************************
Ls -ltr
Bash -vx
!511
******************************************************
find . -size +10000
du -sh *
du -sh .
******************************************************
nfs drive
Autohome = config, remote Rechner filessysteme mounten 
******************************************************

echo "script 1.log" >> cmd.txt -> write command in a textile.
Idea: history >> cmd.txt LOLN
******************************************************
Wenn usr/
Oder /opt voll wäre (100%) dann würde der Rechner abkacken.

dsmeg
******************************************************
Sudo -l -> zeige mir Ausführungsberechtigungen an.
******************************************************
Uptime

last -> zeige mir wer wann eingeloggt war.

Last | grep reboot
******************************************************
File <file> -> fileformat anzeigen.
File -i <file>
******************************************************
export PATH = $PATH:

Top -> show CPU
Type into top: h for man

CPU mindestens 20% Luft mit Swap 1% Memory
******************************************************
Vmstat 1 10 -> wie top nur auf Anzahl limitiert!
******************************************************
Ps -aux 
Ps -auxww 

For LINUX:
	ps
 -eo pid, user,%cpu,cmd --sort=-%cpu|head -n 4
	ps -eo pid, user,%cpu,cmd --sort=-%mem|head -n 4
find . -maxdepth 2 -type d
find /var/log -iname *~ -o -iname *log -mtime +30
find . -maxdepth 2 -type d
find /var/log -iname *~ -o -iname *log -mtime +30
This is a house
This is a house
