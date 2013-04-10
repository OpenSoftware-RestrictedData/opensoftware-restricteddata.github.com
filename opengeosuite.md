--- 
name: opengeosuite
layout: default
title: OpenGeo Suite
---

The OpenGeo Suite provides a complete spatial data server software stack.  I use this for the geoserver functionality as it enables batch uploades for many spatial tables from the Brawn database at once.  [Installation instructions are here](http://suite.opengeo.org/opengeo-docs/installation/linux/centos/suite.html) but beware that the Redhat version requires the optional channel to be enabled.
#### Code
    cd /etc/yum.repos.d
    wget http://yum.opengeo.org/suite/v3/centos/6/x86_64/OpenGeo.repo
    yum install opengeo-suite
