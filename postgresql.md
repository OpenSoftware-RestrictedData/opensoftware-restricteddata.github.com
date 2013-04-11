--- 
name: postgresql
layout: default
title: PostgreSQL
---
<li><a href="/postgresql.html">Previous: Brawn</a></li>
<li><a href="/postgis.html">Next: PostGIS</a></li>
## Install PostgreSQL 9.2 
PostgreSQL is an Open Source database that can be extended with GIS functionality using the PostGIS tools.  The latest version is 9.2.  Please see [this link](http://people.planetpostgresql.org/devrim/index.php?/archives/70-How-to-install-PostgreSQL-9.2-on-RHELCentOSScientific-Linux-5-and-6.html)  for the orginial documentation I used to install this on Centos or Redhat 6.4.  Check the correct download from [this link](http://yum.postgresql.org/repopackages.php#pg92). Please note that this didn't work on Ubuntu 12.04 LTS for me in early 2013 because PostGIS 2.0 was not included in their repositories.  I ended up rolling back to PostgreSQL 9.1 on that machine.
#### Code
    # install the PostgreSQL 9.2 repo package
    rpm -ivh http://yum.postgresql.org/9.2/redhat/rhel-6-x86_64/pgdg-centos92-9.2-6.noarch.rpm
    # install PostgreSQL 9.2 with single command:
    yum groupinstall "PostgreSQL Database Server PGDG"
    # This will install PostgreSQL 9.2 server, along with -contrib subpackage.
    # Once it is installed, first initialize the cluster:
    service postgresql-9.2 initdb
    # Now, you can start PostgreSQL 9.2:
    service postgresql-9.2 start
    # If you want PostgreSQL 9.2 to start everytime on boot, run this:
    chkconfig postgresql-9.2 on

#### Code
    #edit your pg_hba.conf file under /var/lib/pgsql/9.2/data
    #I added a super user from my ip address and allowed all the local ip addresses access
    host    all             postgres        my.desk.ip.address/32       md5
    # if you want to allow data sharing on a specific database then create a public user
    # host    dbname        publicdata      0.0.0.0/0                   md5
    # if you want people to access from a subnet at your work
    # host    dbname        username        ip.address.range.0/24        md5

#### Code
    #connect to psql
    #Set postgres Password
    su - postgres
    psql postgres postgres
    alter user postgres with password 'password';
    select pg_reload_conf();
    # close the psql using \q
    # change back to root
    exit

Now make the server listen for any connection requests from anywhere in the world.

#### Code
    # First locate the postgresql.conf file under /var/lib/pgsql/9.2/data.
    # uncomment and change from localhost
    # listen_addresses = '*'
    # then restart the server
    sudo service postgresql-9.2 restart
    #then reboot and confirm postgres started

#### Code: setting-ports
    vi /etc/sysconfig/iptables 
    # and add the line
    -A INPUT -m state --state NEW -m tcp -p tcp --dport 5432 -j ACCEPT
    service iptables restart
