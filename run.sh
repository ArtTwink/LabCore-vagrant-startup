#!/bin/bash
jenkins() {
    cd /home/arttwink/jenkins && vagrant ${!#}
}
kthw() {
    cd /home/arttwink/kthw && vagrant ${!#}
}
reg() {
    cd /home/arttwink/registry && vagrant ${!#}
}
#param=${!#}
case "$1" in
    -jenkins) jenkins ;;
    -kthw) kthw ;;
    -reg) reg ;;
    -all) jenkins && kthw && reg ;;
    *) echo "There is no option" ;;
esac
