---
name: backup-brawn-filesystem
layout: default
title: backup-brawn-filesystem
---

TODO look at [this link](http://www.cyberciti.biz/faq/howto-use-tar-command-through-network-over-ssh-session/)


#### Code:backup-brawn-filesystem
    mkdir /home/backup
    cd /home/backup     
    tar -cf ewedb-backup-20130411.tar /home/pgsql/9.2/data
