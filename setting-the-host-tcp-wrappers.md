---
name: setting-the-host-tcp-wrappers
layout: default
title: Setting the host.* TCP Wrappers
---

  <li><a href="/iptables.html">Previous: Restrict firewall to a specific ip address/range</a></li>
  <li><a href="#sec-3-4-3">Next: TODO Security Enhanced Linux (selinux)</a></li>
  <p></p>

It is advisable to use the hosts.* TCP wrappers when using SSH to add a further layer of protection. The following site has an excellent example at the bottom that shows how to deny everything that's not explicitly allowed: 

[http://www.akadia.com/services/ssh_tcp_wrapper.html](http://www.akadia.com/services/ssh_tcp_wrapper.html)

#### Code:Setting the host.* TCP Wrappers
    vi /etc/hosts.deny
    # hosts.deny 
    # 
    # This file describes the names of the hosts which are
    # not allowed to use the local INET services, as decided
    # by the '/usr/sbin/tcpd' server.
    ALL: ALL EXCEPT 127.0.0.1

Then, explicitly list in the hosts.allow file all hosts/domains you want access to your machine. A recommended hosts.allow looks like:


#### Code
    vi /etc/hosts.allow
    # hosts.allow 
    #
    # This file describes the names of the hosts which are
    # allowed to use the local INET services, as decided
    # by the '/usr/sbin/tcpd' server.
    sshd: my.desk.ip.address, another.trusted.ip.address
