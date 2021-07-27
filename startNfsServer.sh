#!/bin/bash
#start nfs server on dir `pwd`/basvi
docker run --rm -d -p 2049:2049 -e \
NFS_EXPORT_0='/basvi *(fsid=0,rw,fsid=0,async,no_subtree_check,no_auth_nlm,insecure,no_root_squash)' \
-v `pwd`/basvi:/basvi  --cap-add SYS_ADMIN erichough/nfs-server

export NFS_SERVER_IP=`hostname -i`

echo 'start nfs server on' $NFS_SERVER_IP

