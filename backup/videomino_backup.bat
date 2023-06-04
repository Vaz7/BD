@echo off

setlocal

REM Set the database connection details
set "host=127.0.0.1"
set "port=3306"
set "database=videomino"
set "username=root"
set "password=1234"

REM Set the backup directory
set "backupDir=C:\Users\henri\Desktop\BD\backup"

REM Set the backup filename
set "backupFile=%backupDir%\videomino_backup.sql"

REM Create the backup using mysqldump
cd C:\Program Files\MySQL\MySQL Server 8.0\bin
echo Creating database backup...
mysqldump --host=%host% --port=%port% --user=%username% --password=%password% %database% > %backupFile%
echo Backup created successfully.

endlocal
