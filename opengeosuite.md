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
Notice that the installer pulls in an out of date tomcat6 (as at April 2013) which has [vulnerabilities](http://tomcat.apache.org/security-6.html#Apache_Tomcat_6.x_vulnerabilities) so upgrade that to the latest tomcat6 (NOT tomcat 7).
#### Code
    service tomcat6 stop
    chkconfig tomcat6 off
          
    wget http://mirror.overthewire.com.au/pub/apache/tomcat/tomcat-6/v6.0.36/bin/apache-tomcat-6.0.36.tar.gz
    mv apache-tomcat-6.0.36.tar.gz  /usr/share/
    cd /usr/share
    tar -xzf apache-tomcat-6.0.36.tar.gz
    #To start Tomcat, go to the bin folder of Tomcat installation and then run the startup.sh script,
    cd /usr/share/apache-tomcat-6.0.36
    vi conf/server.xml
    # change <Connector port="8181"/> from 8080
    vi conf/tomcat-users.xml
    #add a user with roles of admin,manager like this
    <user name="tomcat" password="password" roles="admin,manager" />
    cd /usr/share/tomcat6/webapps
    cp -r ddiindex /usr/share/apache-tomcat-6.0.36/webapps
    cd /usr/share/apache-tomcat-6.0.36
    ./bin/startup.sh
    ./bin/shutdown.sh
     
    # edit
    cd /etc/init.d  
    vi tomcat
    chkconfig --add tomcat  
    chkconfig --level 234 tomcat on  
    # verify
    chkconfig --list tomcat  
    service tomcat start
