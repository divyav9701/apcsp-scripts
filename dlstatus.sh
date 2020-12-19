#!/bin/bash

DROPLETS="dl01 dl02 dl03 dl04 dl05 dl06 dl07 dl08 dl09 dl10 dl11"
echo
 for drops in $DROPLETS ; do
  ping -c 1 $drops &> /dev/null
   if [ $? -eq 0 ]; then echo "$drops : alive"; else (echo "$drops: dead"); fi
done

