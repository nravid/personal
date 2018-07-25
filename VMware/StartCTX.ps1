Import-Module C:\labbuildr2017\vmxtoolkit\vmxtoolkit

$labdc = get-vmx | where {$_.VMXName -eq "lab-dc-01"} | Get-VMXInfo
$labvpx = get-vmx | where {$_.VMXName -eq "lab-vpx-01"} | Get-VMXInfo
$vyos = get-vmx | where {$_.VMXName -eq "VYOS"} | Get-VMXInfo
$XA01 = get-vmx | where {$_.VMXName -eq "lab-XA714-01"} | Get-VMXInfo
$XA02 = get-vmx | where {$_.VMXName -eq "lab-XA714-02"} | Get-VMXInfo
$WIN10 = get-vmx | where {$_.VMXName -eq "lab-win10-01"} | Get-VMXInfo

Start-VMX -VMXName "VYOS"
Start-VMX -VMXName "lab-dc-01"
Start-VMX -VMXName "lab-vpx-01"
Start-VMX -VMXName "lab-XA714-01"
Start-VMX -VMXName "lab-XA714-02"
Start-VMX -VMXName "lab-win10-01"


