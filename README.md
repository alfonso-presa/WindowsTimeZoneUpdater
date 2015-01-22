# WindowsTimeZoneUpdater
Automatically change your time zone in windows 8

## How to use

Prior to running the script you will need to run the following command in a PowerShell command line as administrator:

```
set-executionpolicy remotesigned 
```

Run createTask.bat script. This will create an scheduled task that will run every time your computer gets connected to a Wifi network.

If you don't want this to be automatic, you can also both run the detectTimeZone.ps1 file, or run the vbs wrapper. This last will prevent a powershell window to appear.

## How does it work

This script uses:

* ipify.org to get the current ip address.

* geoplugin.net to get the latitude and longitude for the ip.

* askgeo.com to get the TimeZone information for windows for the latitude and longitude. They've kindly provided a free API key to be used in this script.

