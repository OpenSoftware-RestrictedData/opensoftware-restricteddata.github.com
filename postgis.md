--- 
name: postgis
layout: default
title: PostGIS
---

<li><a href="/postgresql.html">Previous: PostgreSQL</a></li>
<li><a href="/postgres-migrate.html">Next: PostgreSQL Migrate</a></li>


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

#### Code
    sudo rpm -Uvh http://elgis.argeo.org/repos/6/elgis/x86_64/elgis-release-6-6_0.noarch.rpm
    sudo rpm -Uvh http://mirror.as24220.net/pub/epel/6/i386/epel-release-6-7.noarch.rpm
    # yum list gdal*
    yum install gdal-devel.x86_64 
    yum install proj-devel.x86_64
    yum install proj-nad.x86_64
    yum install geos-devel.x86_64
    #to update
    yum remove gdal*
    yum install gdal-devel.x86_64

#### Code: Create Database
    su - postgres 
    createdb mydb
    psql -d mydb -U postgres  
    CREATE EXTENSION postgis;  
    CREATE EXTENSION postgis_topology;

#### Code: Create a GIS user and a group
    CREATE ROLE public_group;
    CREATE ROLE ivan_hanigan LOGIN PASSWORD 'password';
    GRANT public_group TO ivan_hanigan;

    grant usage on schema public to public_group;
    GRANT select ON ALL TABLES IN SCHEMA public TO public_group;
    grant execute on all functions in schema public to public_group;
    grant select on all sequences in schema public to public_group;
    grant select on table geometry_columns to public_group;
    grant select on table spatial_ref_sys to public_group;
    grant select on table geography_columns to public_group;
    grant select on table raster_columns to public_group;
    grant select on table raster_overviews to public_group;
    \q
    exit

#### Additional Reprojection File
A special transformations grid file is required to be added to the PROJ.4 files for reprojecting the Australian projections AGD66 to GDA94.

Thanks to [Joe Guillaume](https://github.com/josephguillaume) and [Francis Markham](http://stackoverflow.com/users/103225/fmark) for providing this solution.

#### Code: transformations grid for Australian projections
    cd /usr/share/proj
    # the original was moved
    # wget http://www.icsm.gov.au/icsm/gda/gdatm/national66.zip
    wget http://www.icsm.gov.au/gda/gdatm/national66.zip
    # if it moves again a version of it is included with this repo
    # from your local scp to your server
     
    yum install unzip
    unzip national66.zip
    mv "A66 National (13.09.01).gsb" aust_national_agd66_13.09.01.gsb

    su - postgres 
    psql -d mydb

    UPDATE spatial_ref_sys SET
    proj4text='+proj=longlat +ellps=aust_SA +nadgrids=aust_national_agd66_13.09.01.gsb +wktext'
    where srid=4202;
    \q
    exit

#### Code: test transformation from AGD66 to GDA94
    select geocode, geoname, st_transform(geom, 4283) as the_geom
    into schema.gda94_table
    from  schema.agd66_table;
