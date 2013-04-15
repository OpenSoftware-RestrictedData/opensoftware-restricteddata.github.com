---
name: brawn-dbsize
layout: default
title: Find out how big is it?
---

  <li><a href="#sec-7-3-1">Previous: TODO Backup oraphi</a></li>
  <li><a href="/backup-brawn-filesystem.html">Next: Dump and download it to a secure computer</a></li>

<p></p>

This is a useful query to have on a postgres database cluster to keep track of the size of all the databases on the server.

#### Code:brawn-dbsize   
    CREATE OR REPLACE VIEW dbsize AS 
    SELECT pg_database.datname, 
       pg_size_pretty(pg_database_size(pg_database.datname)) AS size
    FROM pg_database;
     
    ALTER TABLE dbsize OWNER TO postgres;
    GRANT ALL ON TABLE dbsize TO postgres;
    GRANT ALL ON TABLE dbsize TO public_group;
