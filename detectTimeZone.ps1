$ip=Invoke-RestMethod("http://api.ipify.org?format=json")

$location=Invoke-RestMethod("http://www.geoplugin.net/json.gp?ip=" + $ip)

$latitude=$location.geoplugin_latitude
$longitude=$location.geoplugin_longitude

$url = "http://api.askgeo.com/v1/1309/913e044ce1af2d5dffbfa5eac6cd0eeed47db6bfd0e92e90dd5d80a01d0012bc/query.json?points=" + $latitude + "," + $longitude + "&databases=TimeZone"

$tz = Invoke-RestMethod($url)

tzutil /s $tz.data[0].TimeZone.WindowsStandardName