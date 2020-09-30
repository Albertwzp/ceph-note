### image 使用率
```shell
rbd diff ${pool}/${image} | awk '{ SUM += $2 } END { print SUM/1024/1024/1024 " GB" }'
rbd du ${pool}/${image}
```
### 清理资源池内未在使用的[存储块](script/clean.sh "clean img")
------
### 块设备操作
> 创建块设备
rbd create pool/image --size num --image-format num
> 查询资源池img
rbd ls pool
> 详情
rbd info pool/image
> 删除img
rbd rm pool/image
------
### 快照操作
> 创建快照
rbd snap create pool/image@image_snap
> 显示image的快照
rbd snap list pool/image
> 查看快照详情
rbd info pool/image@image_snap
------
### 虚拟化是否支持rbd
> qemu-img --help |grep rbd
