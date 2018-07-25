
Import-Module C:\labbuildr2017\vmxtoolkit\vmxtoolkit

$labdc = get-vmx | where {$_.VMXName -eq "lab-dc-01"} | Get-VMXInfo
$labvpx = get-vmx | where {$_.VMXName -eq "lab-vpx-01"} | Get-VMXInfo
$vyos = get-vmx | where {$_.VMXName -eq "VYOS"} | Get-VMXInfo
$XA01 = get-vmx | where {$_.VMXName -eq "lab-XA714-01"} | Get-VMXInfo
$XA02 = get-vmx | where {$_.VMXName -eq "lab-XA714-02"} | Get-VMXInfo
$WIN10 = get-vmx | where {$_.VMXName -eq "lab-win10-01"} | Get-VMXInfo

Stop-VMX -VMXName $WIN10.VMXName -Mode soft -config $WIN10.Configfile
Stop-VMX -VMXName $XA01.VMXName -Mode soft -config $XA01.Configfile
Stop-VMX -VMXName $XA02.VMXName -Mode soft -config $XA02.Configfile
Stop-VMX -VMXName $labdc.VMXName -Mode soft -config $labdc.Configfile
Stop-VMX -VMXName $labvpx.VMXName -Mode soft -config $labvpx.Configfile
Stop-VMX -VMXName $vyos.VMXName -Mode soft -config $vyos.Configfile
