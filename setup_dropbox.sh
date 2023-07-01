#!/bin/bash


 cd ~ && wget -O - "https://www.dropbox.com/download?plat=lnx.x86_64" | tar xzf -

timeout 1m ~/.dropbox-dist/dropboxd

~/ansible/dropbox/dropbox.py start
sleep 10
~/ansible/dropbox/dropbox.py exclude add ~/Dropbox/MEDIA
~/ansible/dropbox/dropbox.py exclude add ~/Dropbox/CLIENTS
~/ansible/dropbox/dropbox.py exclude add ~/Dropbox/PROJECTS
