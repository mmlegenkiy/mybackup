#!/bin/bash

BDIR='/ivanov_i.backups'
BDATE=$(date +'%d.%m.%Y_%H.%M.%S')
FILENAME=$BDIR/$(hostname)_$BDATE
TARGET='/home/ivanov_i'

tar -czvf $FILENAME.tar.gz  $TARGET &> /$FILENAME.log

