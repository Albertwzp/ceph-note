#! /bin/bash

for i in `rbd ls k8s`
do
    if [[ $i =~ "kubernetes-dynamic-pvc" ]] && [[ $(rbd status k8s/$i) == "Watchers: none" ]]; then
        echo "remove k8s/${i}"
        rbd remove k8s/${i}
    else
        echo "k8s/${i} using"
    fi
done

