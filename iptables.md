---
name: iptables
layout: default
title: iptables
---

<li><a href="/iptables.html">Previous: Security measures</a></li>
<li><a href="/setting-the-host-tcp-wrappers.html">Next: Setting the host.* TCP Wrappers</a></li>
<p></p>
    
In the security group we allowed access via port 22 however we will now restrict the firewall to this port to allow access only from specified ip addresses.

#### Code:iptables
    # newnode: setting-ports
    vi /etc/sysconfig/iptables 
    # and modify the line
    -A INPUT -m state --state NEW -m tcp -p tcp --dport 22 -j ACCEPT
    # to 
    -A INPUT -s your.desk.ip.address -m state --state NEW -m tcp -p tcp --dport 22 -j ACCEPT
    # might want to add other port now if you are familiar with this,
    # otherwise see below for specific modifications.
    service iptables restart
