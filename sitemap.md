--- 
name: sitemap
layout: default
title: Site Map
---

<div id="table-of-contents">
<!-- <h2>Table of Contents</h2> -->
<div id="text-table-of-contents">
<ul>
<li><a href="/aboutus.html">1 About us</a></li>
<li><a href="/introduction.html">2 Introduction </a></li>
<li><a href="#sec-3">TODO 3 Deploying Virtual Machines</a>
<ul>
<li><a href="#sec-3-1">TODO 3.1 Description</a></li>
<li><a href="#sec-3-2">TODO 3.2 Accessing Virtual Machines on the Australian  Research Cloud</a>
<ul>
<li><a href="#sec-3-2-1">TODO 3.2.1 Launch an instance</a></li>
<li><a href="#sec-3-2-2">TODO 3.2.2 requesting help</a></li>
<li><a href="#sec-3-2-3">TODO 3.2.3 connect using ssh</a></li>
</ul>
</li>
<li><a href="#sec-3-3">TODO 3.3 Setting up the basic server framework</a>
<ul>
<li><a href="#sec-3-3-1">TODO 3.3.1 Install any updates using the yum package manager</a></li>
</ul>
</li>
<li><a href="#sec-3-4">TODO 3.4 Security measures</a>
<ul>
<li><a href="#sec-3-4-1">TODO 3.4.1 Restrict ssh access to a specific ip address/range</a></li>
<li><a href="#sec-3-4-2">TODO 3.4.2 Security Enhanced Linux (selinux)</a></li>
<li><a href="#sec-3-4-3">TODO 3.4.3 Install some base packages</a></li>
</ul>
</li>
<li><a href="#sec-3-5">TODO 3.5 Hardware set-up</a>
<ul>
<li><a href="/swapon.html">3.5.1 Swap space </a></li>
<li><a href="#sec-3-5-2">TODO 3.5.2 Persistent Net Rules Should Be Avoided On Centos</a></li>
<li><a href="#sec-3-5-3">TODO 3.5.3 Disk Storage</a></li>
</ul></li>
</ul>
</li>
<li><a href="#sec-4">TODO 4 The Brawn</a>
<ul>
<li><a href="/postgresql.html">4.1 PostgreSQL </a>
<ul>
<li><a href="#sec-4-1-1">TODO 4.1.1 Configure PostgreSQL connection settings</a></li>
<li><a href="#sec-4-1-2">TODO 4.1.2 Allow connection to postgres through the firewall</a></li>
</ul>
</li>
<li><a href="/postgis.html">4.2 PostGIS 2.0 </a>
<ul>
<li><a href="/postgis.html">4.2.1 Postgis</a></li>
<li><a href="#sec-4-2-2">TODO 4.2.2 GDAL, PROJ and GEOS</a></li>
<li><a href="#sec-4-2-3">TODO 4.2.3 Create Database</a></li>
<li><a href="#sec-4-2-4">TODO 4.2.4 Create a GIS user and a group</a></li>
<li><a href="#sec-4-2-5">TODO 4.2.5 Specific transformations grid for Australian projections AGD66 to GDA94</a></li>
<li><a href="#sec-4-2-6">TODO 4.2.6 Test transform</a></li>
</ul>
</li>
<li><a href="/postgres-migrate.html">4.3 PostgreSQL Migration </a>
<ul>
<li><a href="/postgres-migrate.html">4.3.1 Migrate the data</a></li>
<li><a href="#sec-4-3-2">TODO 4.3.2 Set up backups</a></li>
</ul>
</li>
<li><a href="/sharedmemory.html">4.4 Important shared memory settings </a></li>
<li><a href="#sec-4-5">TODO 4.5 Test loading some shapefiles</a></li>
</ul>
</li>
<li><a href="#sec-5">TODO 5 The Brains</a>
<ul>
<li><a href="#sec-5-1">TODO 5.1 R Server</a>
<ul>
<li><a href="#sec-5-1-1">TODO 5.1.1 R</a></li>
<li><a href="#sec-5-1-2">TODO 5.1.2 package management and R updates</a></li>
<li><a href="#sec-5-1-3">TODO 5.1.3 Rstudio</a></li>
<li><a href="#sec-5-1-4">TODO 5.1.4 firewall access</a></li>
<li><a href="#sec-5-1-5">TODO 5.1.5 SSL/HHTPS and running a proxy server</a></li>
<li><a href="#sec-5-1-6">TODO 5.1.6 git</a></li>
<li><a href="#sec-5-1-7">TODO 5.1.7 ssh for github</a></li>
<li><a href="#sec-5-1-8">TODO 5.1.8 gdal</a></li>
<li><a href="#sec-5-1-9">TODO 5.1.9 geos</a></li>
<li><a href="#sec-5-1-10">TODO 5.1.10 or under ubuntu</a></li>
<li><a href="#sec-5-1-11">TODO 5.1.11 test readOGR</a></li>
<li><a href="#sec-5-1-12">TODO 5.1.12 rgraphviz</a></li>
<li><a href="#sec-5-1-13">TODO 5.1.13 test</a></li>
<li><a href="#sec-5-1-14">TODO 5.1.14 install just the postgres bits required for RPostgreSQL package</a></li>
<li><a href="#sec-5-1-15">TODO 5.1.15 postgis utilities</a></li>
<li><a href="#sec-5-1-16">TODO 5.1.16 unixODBC</a></li>
</ul>
</li>
<li><a href="#sec-5-2">TODO 5.2 Test the Backups of this Minimal R Sever.</a>
<ul>
<li><a href="#sec-5-2-1">TODO 5.2.1 Backup the 2nd Disc</a></li>
<li><a href="#sec-5-2-2">TODO 5.2.2 Launch from this snapshot and test the R server and 2nd Disc</a></li>
<li><a href="#sec-5-2-3">TODO 5.2.3 the permissions of the user on their home directory cause issues for logging in.</a></li>
</ul>
</li>
<li><a href="#sec-5-3">TODO 5.3 Oracle XE Permissions and Users System</a>
<ul>
<li><a href="#sec-5-3-1">TODO 5.3.1 backup local ubuntu version</a></li>
<li><a href="#sec-5-3-2">TODO 5.3.2 INIT</a></li>
<li><a href="#sec-5-3-3">TODO 5.3.3 SWAP</a></li>
<li><a href="#sec-5-3-4">TODO 5.3.4 DOWNLOAD AND SCP</a></li>
<li><a href="#sec-5-3-5">TODO 5.3.5 Install the database</a></li>
<li><a href="#sec-5-3-6">TODO 5.3.6 import application and set Security</a></li>
<li><a href="#sec-5-3-7">TODO 5.3.7 explain the table creation script</a></li>
<li><a href="#sec-5-3-8">TODO 5.3.8 set up R, RJDBC and ROracle</a></li>
</ul>
</li>
<li><a href="/opengeosuite.html">5.4 OpenGeo Suite </a>
<ul>
<li><a href="/opengeosuite.html">5.4.1 The OpenGeo Suite Installer</a></li>
<li><a href="/opengeosuite-upgrade-tomcat6.html">5.4.2 Upgrade to latest tomcat6 version</a></li>
<li><a href="#sec-5-4-3">TODO 5.4.3 Otherwise just install normal geoserver</a></li>
<li><a href="#sec-5-4-4">TODO 5.4.4 configure geoserver</a></li>
<li><a href="#sec-5-4-5">TODO 5.4.5 expose spatial data</a></li>
</ul>
</li>
<li><a href="#sec-5-5">TODO 5.5 DDIindex</a>
<ul>
<li><a href="#sec-5-5-1">TODO 5.5.1 TOMCAT</a></li>
<li><a href="#sec-5-5-2">TODO 5.5.2 TOMCAT upgrade 6 to 7</a></li>
<li><a href="#sec-5-5-3">TODO 5.5.3 Unsuccessfully did 7, try latest 6</a></li>
<li><a href="#sec-5-5-4">TODO 5.5.4 UPLOAD THE DDIINDEX</a></li>
<li><a href="#sec-5-5-5">TODO 5.5.5 add explanation of the ddiindex.zip file in lib</a></li>
<li><a href="#sec-5-5-6">TODO 5.5.6 MySQL</a></li>
<li><a href="#sec-5-5-7">TODO 5.5.7 make sure ddiindex can connect to mysql as ddiindex user</a></li>
<li><a href="#sec-5-5-8">TODO 5.5.8 Check the security implications of allowing write permissions here</a></li>
<li><a href="#sec-5-5-9">TODO 5.5.9 Running the Indexer</a></li>
<li><a href="#sec-5-5-10">TODO 5.5.10 personalise the ddiindex</a></li>
</ul>
</li>
<li><a href="#sec-5-6">TODO 5.6 Set up a private git lab for data and code</a>
<ul>
<li><a href="#sec-5-6-1">TODO 5.6.1 Firewall</a></li>
<li><a href="#sec-5-6-2">TODO 5.6.2 SSH server</a></li>
<li><a href="#sec-5-6-3">TODO 5.6.3 Encrypted files</a></li>
</ul>
</li>
<li><a href="#sec-5-7">TODO 5.7 True-Crypt encrypted volumes</a></li>
<li><a href="#sec-5-8">TODO 5.8 ResearchData storage</a></li>
</ul>
</li>
<li><a href="#sec-6">TODO 6 Procedures for add users to the system.</a>
<ul>
<li><a href="#sec-6-1">TODO 6.1 Description of the access procedure</a>
<ul>
<li><a href="#sec-6-1-1">TODO 6.1.1 Getting Access</a></li>
<li><a href="#sec-6-1-2">TODO 6.1.2 Managing Access</a></li>
<li><a href="#sec-6-1-3">TODO 6.1.3 Ending Access</a></li>
</ul>
</li>
<li><a href="#sec-6-2">TODO 6.2 The process user administrators go through to set up users</a>
<ul>
<li><a href="#sec-6-2-1">TODO 6.2.1 lodge request in user db</a></li>
<li><a href="#sec-6-2-2">TODO 6.2.2 r-nceph</a></li>
</ul>
</li>
<li><a href="#sec-6-3">TODO 6.3 brains</a>
<ul>
<li><a href="#sec-6-3-1">TODO 6.3.1 linux user</a></li>
<li><a href="#sec-6-3-2">TODO 6.3.2 mysql (check ddiindex)</a></li>
</ul>
</li>
<li><a href="#sec-6-4">TODO 6.4 brawn</a>
<ul>
<li><a href="#sec-6-4-1">TODO 6.4.1 postgres</a></li>
<li><a href="#sec-6-4-2">TODO 6.4.2 geoserver</a></li>
<li><a href="#sec-6-4-3">TODO 6.4.3 alliance wiki</a></li>
<li><a href="#sec-6-4-4">TODO 6.4.4 text message the set password</a></li>
</ul>
</li>
<li><a href="#sec-6-5">TODO 6.5 edits to oraphi via sql</a>
<ul>
<li><a href="#sec-6-5-1">TODO 6.5.1 revocation</a></li>
</ul></li>
</ul>
</li>
<li><a href="#sec-7">TODO 7 Backups</a>
<ul>
<li><a href="#sec-7-1">TODO 7.1 General</a>
<ul>
<li><a href="#sec-7-1-1">TODO 7.1.1 maintenance</a></li>
<li><a href="#sec-7-1-2">TODO 7.1.2 nearline for potential restore</a></li>
<li><a href="#sec-7-1-3">TODO 7.1.3 archive and remove</a></li>
</ul>
</li>
<li><a href="#sec-7-2">TODO 7.2 General concerns</a></li>
<li><a href="#sec-7-3">TODO 7.3 Brains</a>
<ul>
<li><a href="#sec-7-3-1">TODO 7.3.1 Backup oraphi</a></li>
</ul>
</li>
<li><a href="#sec-7-4">TODO 7.4 Brawn</a>
<ul>
<li><a href="#sec-7-4-1">TODO 7.4.1 Find out how big is it?</a></li>
<li><a href="#sec-7-4-2">TODO 7.4.2 Dump and download it to a secure computer</a></li>
<li><a href="#sec-7-4-3">TODO 7.4.3 find out more about the -mtime +1 bit.</a></li>
<li><a href="#sec-7-4-4">TODO 7.4.4 restore this dump into a new database on local machine as a failsafe.</a></li>
<li><a href="#sec-7-4-5">TODO 7.4.5 launch a new Nectar VM from the snapshot image</a></li>
<li><a href="#sec-7-4-6">TODO 7.4.6 mount the 2nd disc and load/restore the postgres db and data into it</a></li>
</ul>
</li>
<li><a href="#sec-7-5">TODO 7.5 Disaster Recovery Plan</a>
<ul>
<li><a href="#sec-7-5-1">TODO 7.5.1 test a snapshot</a></li>
<li><a href="#sec-7-5-2">TODO 7.5.2 60GB disk is not being saved in snapshots</a></li>
<li><a href="#sec-7-5-3">TODO 7.5.3 Restore ORAPHI</a></li>
</ul>
</li>
</ul>
</li>
</ul>
</div>
</div>
