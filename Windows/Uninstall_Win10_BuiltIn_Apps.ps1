<#
Based on 
http://www.digitalcitizen.life/how-remove-default-windows-10-apps-powershell-3-steps

Run as Administrator
#>


$applist = ("3dbuilder",
"alarms",
"calculator",
"communications",
"camera",
"dolbyaccess",
"fitbitcoach",
"officehub",
"skypeapp",
"getstarted",
"zunemusic",
"maps",
"solitairecollection",
"bingfinance",
"zunevideo",
"bingnews",
"onenote",
"people",
"windowsphone",
"phototastic",
"photos",
"picsart",
"windowsstore",
"bingsports",
"soundrecorder",
"bingweather",
"xbox")

ForEach ($app in $applist) {
    $appdel = $null
    $appdel = "*" + $app + "*"
    Get-AppxPackage $appdel | Remove-AppxPackage
} #ForEach $app
