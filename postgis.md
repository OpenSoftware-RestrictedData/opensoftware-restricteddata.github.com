--- 
name: postgis
layout: default
title: PostGIS
---

## Install PostGIS 2.0
The PostGIS suite enables a PostgreSQL database with spatial data types and analysis functions.

#### References   
 [http://www.davidghedini.com/pg/entry/postgis_2_0_on_centos]([http://www.davidghedini.com/pg/entry/postgis_2_0_on_centos])
    [http://people.planetpostgresql.org/devrim/index.php?/archives/64-PostGIS-2.0.0,-RPMs-and-so..html](http://people.planetpostgresql.org/devrim/index.php?/archives/64-PostGIS-2.0.0,-RPMs-and-so..html)
    [http://people.planetpostgresql.org/devrim/index.php?/archives/65-Installing-PostGIS-2.0.X-on-RHELCentOSScientific-Linux-5-and-6-Fedora-That-is-easy!.html](http://people.planetpostgresql.org/devrim/index.php?/archives/65-Installing-PostGIS-2.0.X-on-RHELCentOSScientific-Linux-5-and-6-Fedora-That-is-easy!.html)

#### code: install-postgis2
    yum list postgis*
    yum install postgis2_92.x86_64 
    yum install postgis2_92-devel.x86_64
