# Vlc Audit - Script Execution Outputs

This document contains simulated terminal outputs for the 5 audit scripts.

---

## 1. System Identity Report (`01-identify.sh`)
```bash
poornesh2317@ubuntu-server:~/Vlc$ ./01-identify.sh
================================================================================
                   Vlc AUDIT - SYSTEM IDENTITY                    
================================================================================
Linux Distribution: Ubuntu 22.04.3 LTS
Kernel Version:     5.15.0-89-generic
Current User:       poornesh2317
Home Directory:     /home/poornesh2317
System Uptime:      up 2 hours, 45 minutes
Current Date/Time:  Mon Sep 18 14:30:00 UTC 2023
--------------------------------------------------------------------------------
Message: This system runs on Open Source software, providing freedom to study, change, and distribute.
================================================================================
```

---

## 2. FOSS Package Inspector (`02-packages.sh`)
```bash
poornesh2317@ubuntu-server:~/Vlc$ ./02-packages.sh
================================================================================
                   Vlc AUDIT - PACKAGE INSPECTOR                 
================================================================================
Status: vlc is INSTALLED on this Ubuntu 22.04.3 LTS system.
Version: 3.0.18-1
--------------------------------------------------------------------------------
FOSS Philosophy Notes:
 - Vlc: A free and open-source media player
 - Firefox: A free and open-source web browser
 - LibreOffice: A free and open-source office suite
 - GIMP: A free and open-source raster graphics editor
================================================================================
```

---

## 3. Disk and Permission Auditor (`03-auditor.sh`)
```bash
poornesh2317@ubuntu-server:~/Vlc$ ./03-auditor.sh
================================================================================
/etc
total 1024
drwxr-xr-x  2 root root  4096 Sep 18 14:30 .
drwxr-xr-x 24 root root  4096 Sep 18 14:30 ..
-rw-r--r--  1 root root  1024 Sep 18 14:30 vlc.conf

/var/log
total 2048
drwxr-xr-x  2 root root  4096 Sep 18 14:30 .
drwxr-xr-x 24 root root  4096 Sep 18 14:30 ..
-rw-r--r--  1 root root  2048 Sep 18 14:30 vlc.log

/usr/bin
total 4096
drwxr-xr-x  2 root root  4096 Sep 18 14:30 .
drwxr-xr-x 24 root root  4096 Sep 18 14:30 ..
-rwxr-xr-x  1 root root  4096 Sep 18 14:30 vlc

/var/lib/vlc
total 1024
drwxr-xr-x  2 root root  4096 Sep 18 14:30 .
drwxr-xr-x 24 root root  4096 Sep 18 14:30 ..
-rw-r--r--  1 root root  1024 Sep 18 14:30 vlc.db

/usr/share/vlc
total 2048
drwxr-xr-x  2 root root  4096 Sep 18 14:30 .
drwxr-xr-x 24 root root  4096 Sep 18 14:30 ..
-rw-r--r--  1 root root  2048 Sep 18 14:30 vlc.ico
================================================================================
```

---

## 4. Log File Analyzer (`04-logs.sh`)
```bash
poornesh2317@ubuntu-server:~/Vlc$ ./04-logs.sh /var/log/syslog error
================================================================================
Found 5 occurrences of 'error'
Sep 18 14:30:00 ubuntu-server vlc: error: unable to open file
Sep 18 14:30:01 ubuntu-server vlc: error: unable to play file
Sep 18 14:30:02 ubuntu-server vlc: error: unable to stop playback
Sep 18 14:30:03 ubuntu-server vlc: error: unable to quit
Sep 18 14:30:04 ubuntu-server vlc: error: unable to exit
================================================================================
```

---

## 5. Open Source Manifesto Generator (`05-manifesto.sh`)
```bash
poornesh2317@ubuntu-server:~/Vlc$ ./05-manifesto.sh
My name is poornesh2317, and I believe in the power of open-source software.
My favorite project is Vlc, which has made a significant impact on my life.
I support open-source software because it provides freedom to study, change, and distribute.
================================================================================
```