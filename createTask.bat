powershell -Command "(gc UpdateTimeZone.xml) -replace '--FOLDER--', $("Get-Location") | Out-File temp.xml"

schtasks /Create /XML "temp.xml" /TN "Update Time Zone"

del /f temp.xml

