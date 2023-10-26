#!/bin/bash

BDIR='/ivanov_i.backups'
BDATE=$(date +'%d.%m.%Y_%H.%M.%S')
FILENAME=$BDIR/$(hostname)_$BDATE
TARGET='/home/ivanov_i'

find $BDIR -mtime +2 -delete
tar -czvf $FILENAME.tar.gz  $TARGET &> /$FILENAME.log

