# image 使用率
```shell
rbd diff ${pool}/${image} | awk '{ SUM += $2 } END { print SUM/1024/1024/1024 " GB" }'
rbd du ${pool}/${image}
```
# 清理资源池内未在使用的[img]($script/clean.sh "clean img")
