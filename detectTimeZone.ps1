$ip=Invoke-RestMethod("http://api.ipify.org?format=json")

$location=Invoke-RestMethod("http://www.geoplugin.net/json.gp?ip=" + $ip)

$latitude=$location.geoplugin_latitude
$longitude=$location.geoplugin_longitude

$url = "http://api.askgeo.com/v1/" + $env:ASKGEO_ACCOUNT_ID + "/" + $env:ASKGEO_ACCOUNT_KEY + "/query.json?points=" + $latitude + "," + $longitude + "&databases=TimeZone"

$tz = Invoke-RestMethod($url)

tzutil /s $tz.data[0].TimeZone.WindowsStandardName