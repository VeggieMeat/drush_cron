#!/bin/bash
#
# Fabfile wrapper script
#

# Fabfile location
FABFILE=/usr/local/bin/drush_cron/fabfile.py

HOST=$1
SITE=$2

if [ -z $HOST ]; then
  echo "Please specify a host. Exiting"
  exit 1
fi

fab -f $FABFILE -H $HOST cron:site=$SITE || exit 1
