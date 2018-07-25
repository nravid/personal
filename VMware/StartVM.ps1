Import-Module C:\labbuildr2017\vmxtoolkit\vmxtoolkit

$nsxmgr = get-vmx | where {$_.VMXName -eq "lab-nsxmgr-01"} | Get-VMXInfo
$labvc = get-vmx | where {$_.VMXName -eq "lab-vc-01"} | Get-VMXInfo
$labdc = get-vmx | where {$_.VMXName -eq "lab-dc-01"} | Get-VMXInfo
$labvpx = get-vmx | where {$_.VMXName -eq "lab-vpx-01"} | Get-VMXInfo
$freenas = get-vmx | where {$_.VMXName -eq "FreeNAS"} | Get-VMXInfo
$vyos = get-vmx | where {$_.VMXName -eq "VYOS"} | Get-VMXInfo
$esx1 = get-vmx | where {$_.VMXName -eq "ESX-01"} | Get-VMXInfo
$esx2 = get-vmx | where {$_.VMXName -eq "ESX-02"} | Get-VMXInfo
$esx3 = get-vmx | where {$_.VMXName -eq "ESX-03"} | Get-VMXInfo

Start-VMX -VMXName "lab-vc-01"
Start-VMX -VMXName "VYOS"
Start-VMX -VMXName "FreeNAS"
Start-VMX -VMXName "lab-dc-01"
Start-VMX -VMXName "lab-nsxmgr-01"
Start-VMX -VMXName "lab-vpx-01"
Start-VMX -VMXName "ESX-01"
Start-VMX -VMXName "ESX-02"
Start-VMX -VMXName "ESX-03"

Start-Sleep -s 540

Import-Module VMware.PowerCLI
Connect-VIServer -Server lab-vc-01.anoprop.com


Start-VM -VM lab-nsxesg-01-0 -RunASync
Start-VM -VM lab-nsxdlr-01-0 -RunASync
Start-VM -VM lab-viewconn72-01 -RunASync
Get-VMQuestion | Set-VMQuestion -Option "button.yes" -Confirm:$false
Start-VM -VM lab-uag30-01 -RunASync
# Start-VM -VM vrni-platform -RunASync
# Start-VM -VM vrni-proxy -RunASync
# Start-VM -VM vRops -RunASync

