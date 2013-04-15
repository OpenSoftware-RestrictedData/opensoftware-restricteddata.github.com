---
name: brawn-dump-restore
layout: default
title: Restore databse dump into a new database on another machine.
--- 

  <li><a href="/backup-brawn-filesystem.html">Previous: Dump and download it to a secure computer</a></li>
  <li><a href="#sec-7-4-5">Next: TODO launch a new Nectar VM from the snapshot image</a></li>
  
  <p></p>
  
TODO make sure you tune the performance on target machine
[as per these instrctions](http://stackoverflow.com/a/2095283).

shared_buffers (1024 or 2048) should be set correctly, maintenance_work_mem (uncomment) should be increased during the restore, full_page_writes uncommented and set to should be off during the restore, wal_buffers should be increased (from -1) to 16MB during the restore, checkpoint_segments should be increased (from 3) to something like 16 during the restore, you shouldn't have any unreasonable logging on (like logging every statement executed), auto_vacuum should be (uncommented and ) disabled during the restore.

#### Code:brawn-dump-restore
    su - postgres 
    createdb ewedbbackup
    psql -d ewedbbackup -U postgres  
    CREATE EXTENSION postgis;  
    CREATE EXTENSION postgis_topology;  
    \q
    cd /path/to/localbackup
    # make sure the users are all there     
    
    # now dump and restore via a pipe. 
    # important to make sure database and users/permissions exist on target server first.
    # also that source server is in iptables and pg_hba.conf on destination
    su - postgres
    /usr/pgsql-9.2/bin/pg_dump -U postgres mydb  | psql -h destination.ip.address mydb
