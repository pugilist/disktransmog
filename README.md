Disk Label Transmogrifier
===================

This script is designed to allow individuals to translate different disk references seamlessly on linux systems.  Instead of having to look in /dev/disk to translate what disk uuid translates to what block device, or what partition label belongs to which disk path, you can use this script.  

----------


Usage
-------------
```
Help output
usage: disktransmog [-h] [-f] (-d | -i | -l | -p | -u | -U) string

Transmogrify your disk labels

positional arguments:
  string              input the disk label that you'd like to convert

optional arguments:
  -h,  --help          show this help message and exit
  -f,   --full-path     show full path in output
  -d,  --to-dev        find the associated device
  -i,   --to-id         find the associated id
  -l,   --to-partlabel  find the associated partition label
  -p,  --to-path       find the associated path
  -u,  --to-uuid       find the associated disk uuid
  -U, --to-partuuid   find the associated partition uuid

Note:
String can be a any of the following.

 - disk id
 - partition id
 - partition label
 - device path
 - uuid
 - partition uuid
 - block device
 
Path is optional --  e.g. /dev/sda or sda

A Cry for Help
------------------
My name for this project sucks, can you think of a better one?
