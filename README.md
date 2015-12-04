# content_ISO

Script to concatenate +1 content ISO from Satellite 6.

This script will:

* 1. Check one structure of directory and sub directory

```
  ISO
   |
   ----rhel6
   |     |---isos here
   |
   ----rhel7
   |     |---isos here
   |
   ----ose3
         |---isos here
```

* 2. Will put the content of all isos together in the same directory
  
```
  ISO
   |
   ----rhel6
   |     |---isos here
   |
   ----rhel7
   |     |---isos here
   |
   ----ose3
   |     |---isos here
   |
   |
   |
  EXTRACTED
   |---- All conent here together
```

* 3. Update all listing files in directories and sub directories according a new structure

At the end, you can use this content to populate your Satellite 6 locally.

Ps.: To download the content ISO, you need:
* 1. Valid Subscription
* 2. Access https://access.redhat.com/downloads/ - Red Hat Satellite - Content ISOs Tab
* 3. Download the .iso files that you would like to create a local content repo

B'Regards
