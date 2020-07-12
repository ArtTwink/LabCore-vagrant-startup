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
nexus() {
    cd /home/arttwink/nexus && vagrant $param
}
sonar() {
    cd /home/arttwink/sonarqube && vagrant $param
}
param=$@
while [ -n "$1" ]
do
case "$1" in
    -jenkins) jenkins ;;
    -kthw) kthw ;;
    -reg) reg ;;
    -nexus) nexus ;;
    -sonar) sonar ;;
    -all) jenkins && kthw && reg && nexus && sonar ;;
    --) shift
        break ;;
    *) echo "There is no option" ;;
esac
shift
done
