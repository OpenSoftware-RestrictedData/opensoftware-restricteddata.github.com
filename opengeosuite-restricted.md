--- 
name: opengeosuite-restricted
layout: default
title: Restricted OpenGeo Suite
---

  <li><a href="#sec-5-3-8">TODO Previous: </a></li>
  <li><a href="/opengeosuite-upgrade-tomcat6.html">Next: Disable Tomcat</a></li>
<p></p>

The OpenGeo Suite provides a complete spatial data server software stack.  I use this for the batch install and configuration (TODO look into the individual components offered by OpenGeo). I don't want the Brawn server to run the tomcat etc.  [Installation instructions are here](http://suite.opengeo.org/opengeo-docs/installation/linux/centos/suite.html) but beware that the Redhat version requires the optional channel to be enabled.
#### Code Centos
    # find out your os
    cat /etc/issue
    uname -r
    # if centos
    cd /etc/yum.repos.d
    wget http://yum.opengeo.org/suite/v3/centos/6/x86_64/OpenGeo.repo
    yum install opengeo-suite
#### Code Redhat
    cd /etc/yum.repos.d
    wget http://yum.opengeo.org/suite/v3/rhel/6/x86_64/OpenGeo.repo
    yum install opengeo-suite
