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
param=${!#}
case $choice in
    -jenkins) jenkins ;;
    -kthw) kthw ;;
    -reg) reg ;;
    -all) jenkins && kthw && reg ;;
    *) echo "There is no option" ;;
esac
