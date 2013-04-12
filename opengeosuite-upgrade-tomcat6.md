---
name: opengeosuite-upgrade-tomcat6
layout: default 
title: Opengeosuite upgrade tomcat6
---

  <li><a href="/opengeosuite.html">Previous: The OpenGeo Suite Installer</a></li>
  <li><a href="#sec-5-4-3">TODO Next: Otherwise just install normal geoserver</a></li>
<p></p>

The installer pulls down tomcat6 version 6.0.24 (even if there is a later version installed and running (as at April 2013) which has [vulnerabilities](http://tomcat.apache.org/security-6.html#Apache_Tomcat_6.x_vulnerabilities) so upgrade that to the latest tomcat6 (NOT tomcat 7).

Once you are up-to-date you can bulk load layers from the postgis store with [these instructions](http://workshops.opengeo.org/suiteintro/geoserver/importdb.html#import-from-postgis-store).

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
    
    #To start Tomcat, go to the bin folder of Tomcat installation and then run the startup.sh script,
    ./bin/startup.sh
    #[root@server /usr/share/apache-tomcat-6.0.36]#     ./bin/startup.sh
    #Using CATALINA_BASE:   /var/tomcat
    #Using CATALINA_HOME:   /usr/local/tomcat7/default
    #Using CATALINA_TMPDIR: /var/tomcat/temp
    #Using JRE_HOME:        /usr/java/default
    #Using CLASSPATH:       /usr/local/tomcat7/default/bin/bootstrap.jar
     
    ./bin/shutdown.sh

    # make a script for starting
    cd /etc/init.d  
    vi tomcat
    # add this  
    # to find java_home "update-alternatives --display java" and remove bin/java
    #!/bin/bash  
    # description: Tomcat Start Stop Restart  
    # processname: tomcat  
    # chkconfig: 234 20 80  
    JAVA_HOME=/usr/lib/jvm/jre-1.6.0-openjdk.x86_64
    export JAVA_HOME  
    PATH=$JAVA_HOME/bin:$PATH  
    export PATH  
    CATALINA_HOME=/usr/share/apache-tomcat-7.0.37  
      
    case $1 in  
    start)  
    sh $CATALINA_HOME/bin/startup.sh  
    ;;   
    stop)     
    sh $CATALINA_HOME/bin/shutdown.sh  
    ;;   
    restart)  
    sh $CATALINA_HOME/bin/shutdown.sh  
    sh $CATALINA_HOME/bin/startup.sh  
    ;;   
    esac      
    exit 0  
    # now
    chmod 755 tomcat  
    chkconfig --add tomcat  
    chkconfig --level 234 tomcat on  
    # verify
    chkconfig --list tomcat  
    service tomcat start  
    # test stop, start, restart
    more /usr/share/apache-tomcat-6.0.36/logs/catalina.out  
    # to check for errors, but is all greek to me
    # so assuming ddiindex was previously running on tomcat6
    service tomcat stop


    cd /usr/share/tomcat6/webapps
    cp -r dashboard /usr/share/apache-tomcat-6.0.36/webapps
    cp -r geowebcache /usr/share/apache-tomcat-6.0.36/webapps
    cp -r geoserver /usr/share/apache-tomcat-6.0.36/webapps    
    cp -r opengeo-docs /usr/share/apache-tomcat-6.0.36/webapps        
    cp -r geoexplorer /usr/share/apache-tomcat-6.0.36/webapps            
    cp -r recipes /usr/share/apache-tomcat-6.0.36/webapps                
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
    
    #now you have installed the suite go into the geoserver website  
    # http://ip.address.of.server:8181/dashboard
    # then go to the geoserver and log in as admin with password geoserver
    # follow instructions there to enhance the security

    # for The default user/group service should use digest password encoding see
    #  http://suite.opengeo.org/docs/geoserver/security/tutorials/digest/index.html
