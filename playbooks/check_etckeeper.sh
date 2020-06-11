#! /bin/bash
# vim:ts=4:sw=4:et:ft=sh
# Description
# Created: 2020-05-30

SISTEMAS=""
cd /etc/
[ -d 'etckeeper' ] && SISTEMAS=$SISTEMAS"etckeeper " 
[ -d '.git' ] && SISTEMAS=$SISTEMAS"git " 
[ -d '.bzr' ] && SISTEMAS=$SISTEMAS"bzr " 

if [ "$SISTEMAS" != "" ]; then
    echo "control de versiones en /etc/: "$SISTEMAS 
    exit 0
else
    echo "no hay control de versiones en /etc/" 1>&2
    exit 1
fi
