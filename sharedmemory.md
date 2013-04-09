--- 
name: sharedmemory
layout: default
title: Important Shared Memory Settings
---

## Managing memory settings
The default settings in PostgreSQL are usually pretty good but these memory settings are conservative to start with and often need modifications.

## References

[Kernal memory limitations](http://michael.otacoo.com/postgresql-2/take-care-of-kernel-memory-limitation-for-postgresql-shared-buffers/)

#### Code: sharedmemory
    vi /home/pgsql/9.2/data/postgresql.conf 
    # shared_buffers
    
    # PostgreSQL has a default shared_buffers value at 32MB, what is
    # enough for small configurations but it is said that this
    # parameter should be set at 25% of the system’s RAM. This allows
    # your system to keep a good performance in parallel with the
    # database server.  So in the case of a machine with 4GB of RAM,
    # you should set shared_buffers at 1GB.
    2GB = 2048MB
     
    #also look at max_locks_per_transaction.  tried setting to 1000???
     
    ################################################################
     
    # http://www.postgresql.org/docs/9.2/static/kernel-resources.html
    # Linux
     
    #     The default maximum segment size is 32 MB, which is only
    #     adequate for very small PostgreSQL installations. The
    #     default maximum total size is 2097152 pages. A page is
    #     almost always 4096 bytes except in unusual kernel
    #     configurations with "huge pages" (use getconf PAGE_SIZE to
    #     verify). That makes a default limit of 8 GB, which is often
    #     enough, but not always.
     
    #     The shared memory size settings can be changed via the
    #     sysctl interface. For example, to allow 16 GB:
     
    sysctl -w kernel.shmmax=17179869184
    sysctl -w kernel.shmall=4194304
     
    #     In addition these settings can be preserved between reboots
    #     in the file /etc/sysctl.conf. Doing that is highly
    #     recommended.
     
     
    #    The remaining defaults are quite generously sized, and
    # usually do not require changes.  also
    # http://www.linux.com/learn/tutorials/394523-configuring-postgresql-for-pretty-good-performance
    # work mem 4MB
