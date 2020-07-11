#!/bin/bash
jenkins() {
    cd /home/arttwink/jenkins && vagrant $param
}
kthw() {
    cd /home/arttwink/kthw && vagrant $param
}
reg() {
    cd /home/arttwink/registry && vagrant $param
}
param=$@
while [ -n "$1" ]
do
case "$1" in
    -jenkins) jenkins ;;
    -kthw) kthw ;;
    -reg) reg ;;
    -all) jenkins && kthw && reg ;;
    --) shift
        break ;;
    *) echo "There is no option" ;;
esac
shift
done
