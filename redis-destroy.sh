#!/bin/bash
DATABASE_NAME=redis-cloudlab
DATABASE_ID=`doctl databases list | grep $DATABASE_NAME | cut -d ' ' -f 1`
echo "Deleting $DATABASE_NAME='$DATABASE_ID'"
doctl databases delete $DATABASE_ID