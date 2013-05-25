---
name: private-git
layout: default
title: private-git
---

<li><a href="/postgis.html">Previous: Brawn</a></li>
<li><a href="/postgis.html">Next: PostGIS</a></li>


For some projects GitHub is not suitable as data or code needs to be kept private.
Therefore we can host our own git server.


#### Step 1: Create the git user on server
    adduser git
    passwd git

#### Step 2: Set up passwordless SSH
    # On client (ie laptop) open a terminal window and check current
    # public SSH key:
    ls ~/.ssh/id_rsa.pub


If you don’t have one, you can create a new public/private key pair by running ssh-keygen and following the prompts.

Next copy the public key to the git user’s home directory on the server:

#### Code
    scp ~/.ssh/id_rsa.pub git@server:

When prompted, enter git’s password (the one set up earlier). Then I connect to the server over SSH, again using the git account:

#### Code:
    ssh git@server

Again, enter the git user’s password when prompted.

Once logged in as git, copy public SSH key into the list of authorised keys for that user.

#### Code:
    mkdir -p .ssh
    cat id_rsa.pub >> .ssh/authorized_keys

Then lock down the permissions on .ssh and its contents, since the SSH server is fussy about this.

#### Code:
    chmod 700 .ssh
    chmod 400 .ssh/authorized_keys

Passwordless-SSH is now set up. Try it: log out of the server then log back in:

You should be logged straight in without being prompted for a password. If you’re not, something’s gone wrong – check through the instructions so far and make sure you didn’t miss something.

#### Step 3: Create a directory in git’s home directory for storing  repositories

Logging in to the server once again as git, creat a directory called username in git’s home directory.

#### Code:
    ssh git@server
    mkdir username


#### Step 4: For each repository you want to host, log in to git’s account on client (laptop) and initialise a new Git repository.

First create a directory to hold the repository. Follow Github’s convention and name the directory as [project name].git:

#### Code:
    ssh git@server
    mkdir username/myproject.git

Finally, I initialised a bare Git repository in that directory:

#### Code:
    cd username/myproject.git
    git init --bare

Now to push repository to new git server. On client (laptop)  run the following:

#### Code:
    git remote add origin git@server:username/myproject.git
    git push origin master
