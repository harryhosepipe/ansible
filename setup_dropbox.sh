#!/bin/bash


 cd ~ && wget -O - "https://www.dropbox.com/download?plat=lnx.x86_64" | tar xzf -

~/.dropbox-dist/dropboxd

~/ansible/dropbox/dropbox.py start
~/ansible/dropbox/dropbox.py exclude add ~/Dropbox/MEDIA
~/ansible/dropbox/dropbox.py exclude add ~/Dropbox/CLIENTS
~/ansible/dropbox/dropbox.py exclude add ~/Dropbox/PROJECTS
