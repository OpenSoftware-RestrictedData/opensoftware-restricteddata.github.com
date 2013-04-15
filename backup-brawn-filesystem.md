---
name: backup-brawn-filesystem
layout: default
title: backup-brawn-filesystem
---

  <li><a href="/brawn-dbsize.html">Previous: Find out how big is it?</a></li>
  <li><a href="/brawn-dump-restore.html">Next: Restore databse dump into a new database on another machine.</a></li>

<p></p>

TODO look at [this link](http://www.cyberciti.biz/faq/howto-use-tar-command-through-network-over-ssh-session/)

#### Code:backup-brawn-filesystem
    mkdir /home/backup
    cd /home/backup     
    tar -cf ewedb-backup-20130411.tar /home/pgsql/9.2/data
    # or if not enough room to store it locally
    # on destination initdb
    # then on source server
    tar czvf - /var/lib/pgsql/9.2/data | ssh user@host "tar xvzf - -C /home/pgsql/9.2/data"
    # on destination
    service postgresql-9.2 start
