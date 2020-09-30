# 创建资源池
ceph osd create <pool_name> <pg_num> <rule_name>
# 删除资源池
ceph osd pool rm <pool_name> <pool_name> --yes-i-really-really-mean-it 
# 查看资源池分布状况
ceph pg dump pgs | grep ^<pool_id> | awk '{print $1,$2,$15}'
