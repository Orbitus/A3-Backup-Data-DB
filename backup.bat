@echo off
::-------------------------------------------::
:: Arma3 Backup Script                       ::
:: Made by Orbitus for MRU an nirownation.de ::
:: If you need help contact me               ::
:: info@orbitus-esport.de                    ::
::-------------------------------------------::

:: Variables
:: Where do you want to save the backups
set _backupdir=I:\A3Backups
:: Where is your game directory
set _gamedir=I:\A3Tanoa


set _backuptime=%DATE:~0,2%-%DATE:~3,2%-%DATE:~6,4%_%TIME:~0,2%-%TIME:~3,2%
:: Backup Script
echo Your backup will be saved at: %_backupdir%\%_backuptime%
echo Your chosen Game directory is: %_gamedir%
echo Is everything alright? If not you have no time to interrupt the backup by closing this window
:: Sleep 10 seconds
ping -n 10 127.0.0.1 > NUL
:: Create Backup Directory
mkdir %_backupdir%\%_backuptime%\files
mkdir %_backupdir%\%_backuptime%\mysql
echo Backup directory created...
echo Backup files into chosen directory ...