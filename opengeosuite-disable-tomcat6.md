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
    cd /usr/share            
    wget http://mirror.overthewire.com.au/pub/apache/tomcat/tomcat-6/v6.0.37/bin/apache-tomcat-6.0.37.tar.gz

    tar -xzf apache-tomcat-6.0.37.tar.gz
    #To start Tomcat, go to the bin folder of Tomcat installation and then run the startup.sh script,
    cd /usr/share/apache-tomcat-6.0.37
    vi conf/server.xml
    # change <Connector port="8081"/> from 8080
    # use vi /etc/sysconfig/iptables to check this port is open in firewall

    vi conf/tomcat-users.xml
    #if you want to use the manager, I did not for security reasons
    #add a user with roles of admin,manager-gui like this
    #<role rolename="manager-gui"/>
    #<user username="tomcat" password="s3cret" roles="manager-gui"/>
    
    #To start Tomcat, go to the bin folder of Tomcat installation and then run the startup.sh script,
    ./bin/startup.sh     
    ./bin/shutdown.sh

    # make a script for starting
    cd /etc/init.d  
    vi tomcat
    # add this  
    # to find java_home "update-alternatives --display java" and remove bin/java
    ####
    #!/bin/bash  
    # description: Tomcat Start Stop Restart  
    # processname: tomcat  
    # chkconfig: 234 20 80  
    JAVA_HOME=/usr/lib/jvm/jre-1.6.0-openjdk.x86_64
    export JAVA_HOME  
    PATH=$JAVA_HOME/bin:$PATH  
    export PATH  
    CATALINA_HOME=/usr/share/apache-tomcat-6.0.37  
      
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
    ####

    # now
    chmod 755 tomcat  
    chkconfig --add tomcat  
    chkconfig --level 234 tomcat on  
    # verify
    chkconfig --list tomcat  
    service tomcat start  
    # test stop, start, restart
    more /usr/share/apache-tomcat-6.0.37/logs/catalina.out  
    # to check for errors, but is all greek to me
    # so assuming ddiindex was previously running on tomcat6
    service tomcat stop


    cd /usr/share/tomcat6/webapps
    cp -r dashboard /usr/share/apache-tomcat-6.0.37/webapps
    cp -r geowebcache /usr/share/apache-tomcat-6.0.37/webapps
    cp -r geoserver /usr/share/apache-tomcat-6.0.37/webapps    
    cp -r opengeo-docs /usr/share/apache-tomcat-6.0.37/webapps        
    cp -r geoexplorer /usr/share/apache-tomcat-6.0.37/webapps            
    cp -r recipes /usr/share/apache-tomcat-6.0.37/webapps                
    cd /usr/share/apache-tomcat-6.0.37
    service tomcat start

    #now you have installed the suite go into the geoserver website  
    # http://ip.address.of.server:8081/dashboard
    # then go to the geoserver and log in as admin with password geoserver
    # follow instructions there to enhance the security

    # for The default user/group service should use digest password encoding see
    #  http://suite.opengeo.org/docs/geoserver/security/tutorials/digest/index.html

    # Configure the Digest authentication filter
    # 
    # Start GeoServer and login to the web admin interface as the admin user.
    # Click the Authentication link located under the Security section of the navigation sidebar.
    # Scroll down to the Authentication Filters panel and click the Add new link.
    # Click the Digest link.
    # Fill in the fields of the settings form as follows:
    # Set Name to “digest”
    # Set User group service to “default”
    # Save.
    # Back on the authentication page scroll down to the Filter Chains panel.
    # Select “Default” from the Request type drop down.
    # Unselect the basic filter and select the digest filter. Position the the digest filter before the anonymous filter.
    # Save
    # 
    # now go to users, groups, roles
    # under User Group Services, click default
    # under Password encryption, change to digest
    # save
