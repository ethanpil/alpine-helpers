#!/bin/sh
#
# enable-community-repo.sh
# Enable the community repo for this alpine release.
# Gets version info via /etc/alpine-release

cat > /etc/apk/repositories << EOF; $(echo)
http://dl-cdn.alpinelinux.org/alpine/v$(cat /etc/alpine-release | cut -d'.' -f1,2)/main
http://dl-cdn.alpinelinux.org/alpine/v$(cat /etc/alpine-release | cut -d'.' -f1,2)/community

EOF
