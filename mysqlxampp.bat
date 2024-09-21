@echo off
:: Set the backup date format
set backupdate=%date:~10,4%%date:~7,2%%date:~4,2%

:: Perform Database Backup
echo Performing Database Backup...
:: Wait for a moment while backup is in progress...
echo Wait for a moment while the backup is in progress...

:: Run the mysqldump commands
"X:\www\mysql\bin\mysqldump" -u root ip > C:\dbname%backupdate%.sql
"X:\www\mysql\bin\mysqldump" -u root ip > D:\dbname%backupdate%.sql
echo Done backing up IP Threat database!

:: Exit the script
exit /b
