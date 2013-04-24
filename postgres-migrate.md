---
name: postgres-migrate
layout: default
title: PostgreSQL migration from default location
---

<li><a href="/postgis.html">Previous: PostGIS</a></li>
<li><a href="/sharedmemory.html">Next: Important shared memory settings</a></li>

To take advantage of the extra storage on the secondary disk we mounted in the initial configuration then do the following.

#### Code: Migrate PostgreSQL Data
    service postgresql-9.2 stop
    #     Copy the pgsql directory from /var/lib (or customer install directory) location to another location
    cp -r /var/lib/pgsql /home/pgsql
    chown -R postgres:postgres /home/pgsql

    #     Edit the start script 'postgresql'
    vi /etc/init.d/postgresql-9.2
    #     Search for parameter PGDATA which would be entered as "PGDATA=/var/lib/pgsql"
    #     Edit the line such that PGDATA points to the new location. For e.g. "PGDATA=/newloc/pgsql"
    #     ALSO DO PGLOG, and PGUPLOG
    #     Save and exit the file
    #     Start PostgreSQL Service 
    service postgresql-9.2 start
    # tidy up but not too much, just data?
    rm -r -f /var/lib/pgsql/9.2/data?
