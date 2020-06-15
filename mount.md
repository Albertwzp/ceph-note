# cephfs 挂载
mount -t ceph <monitor>:<port>:/ /cephfs_test -o name=admin,secret=<secret>
