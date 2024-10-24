#!/bin/bash

. /start-utils
if isTrue "${DEBUG_AUTOPAUSE}"; then
  set -x
fi

if [[ $( ps -ax -o stat,comm | grep 'java' | awk '{ print $1 }') =~ ^T.*$ ]] ; then
  pkill -CONT java

  # remove .paused file from data directory
  rm -f /home/container/.paused
fi
