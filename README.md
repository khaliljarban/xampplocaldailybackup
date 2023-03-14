# XAMPP WINDOWS DATABASE BACKUP DAILY
a patch to help deal with "Error: MySQL Shutdown Unexpectedly".

## What is the script do? ##
The script, i take a daily backup for xampp database folder. up to 7 days. (each day in a seperate folder).
this keep your local databases safe. so you can restore them in case of "Error: MySQL Shutdown Unexpectedly".



* Copy xampp-backup to C drive
* Open Task Scheduler
* Import C:\xampp-backup\XamppDb.xml to tasks
* Find the XamppDb in the list. then right click & run. 
* Verify a folder creation in C:\xampp-backup\db\ . With the date of the day