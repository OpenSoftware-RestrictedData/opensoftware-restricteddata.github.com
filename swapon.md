--- 
name: swapon
layout: default
title: Swap space
---

For some reason the Research Cloud Centos VMs do not have any swap space.
I added one GB swapfile, but was advised to enable about the same amount as we have RAM.
I will come back and review this, also I was too lazy to add to boot so just do swapon every time?

Add swap file with this:

#### Code
    free -m | grep Swap

#### Code
    # Create an empty file called /swapfile (here over 2 GB is required for oracle but for just one GB it is count = 1024, need to come back and review)
    dd if=/dev/zero of=/swapfile bs=1024000 count=3000
    #Format the new file to make it a swap file
    mkswap /swapfile
    #Enable the new swapfile. 
    swapon /swapfile
    free -m | grep Swap
