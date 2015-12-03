#!/bin/bash

#
# Created ....: 12/03/2015
# Purpose ....: Put all Sat 6 content ISO's at the same directory.
# Developer ..: Waldirio M Pinheiro <waldirio@redhat.com>
# Changelog ..: 
#               Waiting ... :)
#


alias cp=cp

ISO="/home/wpinheir/SAT/ISO"
Extracted="/home/wpinheir/SAT/EXTRACTED"
MountPoint="/mnt"
Wait="sleep 3"

copy()
{
for b in $(ls -1 $ISO)
do
  for y in $(ls -1 $ISO/$b)
  do
    echo - $ISO/$b/$y
    mount -o loop $ISO/$b/$y $MountPoint
    $Wait
    echo "cp -R $MountPoint/* $Extracted/$b"
    cp -R $MountPoint/* $Extracted
    umount $MountPoint
    $Wait
  done
done
}

listing()
{

ListFiles=$(find $Extracted -type f -iname listing)

for b in $ListFiles
do
  PathToFile=$(echo $b|sed 's#/listing##g')
  echo "Updating .... $PathToFile"
  ls -1 $PathToFile|grep -v listing > $b
done

}

# Main Funcs
# Copy data from iso to extracted directory.
copy

# Update all listing files in the data structure.
listing
