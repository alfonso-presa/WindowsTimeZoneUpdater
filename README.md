# WindowsTimeZoneUpdater
Automatically change your time zone in windows 8

## How to use

To use this, right now you need to create an account in https://askgeo.com, and set the ASKGEO_ACCOUNT_ID and ASKGEO_ACCOUNT_KEY to the values they provide.

Prior to running the script you will need to run the following command in a PowerShell command line as administrator: 

```
set-executionpolicy remotesigned 
```

You can also both run the detectTimeZone.ps1 file, or run the vbs wrapper. This last one is specially useful if you want to run it from an automatic task as it will not pop up a powershell window.

## How does it work

This script uses:

* ipify.org to get the current ip address.

* geoplugin.net to get the latitude and longitude for the ip.

* askgeo.com to get the TimeZone information for windows for the latitude and longitude.

