--- 
name: postgresql
layout: default
title: PostgreSQL
---
## Install PostgreSQL 9.2 
PostgreSQL is an Open Source database that can be extended with GIS functionality using the PostGIS tools.  The latest version is 9.2.  Please see [this link](http://people.planetpostgresql.org/devrim/index.php?/archives/70-How-to-install-PostgreSQL-9.2-on-RHELCentOSScientific-Linux-5-and-6.html)  for the orginial documentation I used to install this on Centos or Redhat 6.4.  Check the correct download from [this link](http://yum.postgresql.org/repopackages.php#pg92). Not that this didn't work on Ubuntu 12.04 LTS for me in early 2013 because PostGIS 2.0 was not included in their repositories.
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
