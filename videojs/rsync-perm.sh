#!/bin/bash
echo "rsync starts!!" >> $HOME/rsync.log
date >> $HOME/rsync.log
# ignore permissions for NFS migration to CIFS.
# https://unix.stackexchange.com/questions/102211/rsync-ignore-owner-group-time-and-perms
# https://linuxize.com/post/how-to-exclude-files-and-directories-with-rsync/
rsync -e "ssh -p $sshport" -avz --no-perms --no-owner --no-group --delete $mysite/ root@$myserver:$mysite/
# test and debug for  Samba share permissions.
# https://www.cyberciti.biz/tips/how-do-i-set-permissions-to-samba-shares.html
# https://unix.stackexchange.com/questions/91064/create-a-file-as-a-different-user-and-group
echo "rsync ends!!" >> $HOME/rsync.log
date >> $HOME/rsync.log
# remote perm correction for videojs
cd $mysite/staticelement/widget
chown -R nginx:nginx videojs-7/
