Import-Module VMware.PowerCLI
Connect-VIServer -Server lab-vc-01.anoprop.com

Get-VM | Shutdown-VMGuest -Confirm:$false

Start-Sleep -s 120

Stop-VMHost -VMHost esx-01.anoprop.com -Force -Confirm:$false -RunASync
Stop-VMHost -VMHost esx-02.anoprop.com -Force -Confirm:$false -RunASync
Stop-VMHost -VMHost esx-03.anoprop.com -Force -Confirm:$false -RunASync

Start-Sleep -s 360

Import-Module C:\labbuildr2017\vmxtoolkit\vmxtoolkit

$nsxmgr = get-vmx | where {$_.VMXName -eq "lab-nsxmgr-01"} | Get-VMXInfo
$labvc = get-vmx | where {$_.VMXName -eq "lab-vc-01"} | Get-VMXInfo
$labdc = get-vmx | where {$_.VMXName -eq "lab-dc-01"} | Get-VMXInfo
$labvpx = get-vmx | where {$_.VMXName -eq "lab-vpx-01"} | Get-VMXInfo
$freenas = get-vmx | where {$_.VMXName -eq "FreeNAS"} | Get-VMXInfo
$vyos = get-vmx | where {$_.VMXName -eq "VYOS"} | Get-VMXInfo

Stop-VMX -VMXName $nsxmgr.VMXName -Mode soft -config $nsxmgr.Configfile
Stop-VMX -VMXName $labvc.VMXName -Mode soft -config $labvc.Configfile
Stop-VMX -VMXName $labdc.VMXName -Mode soft -config $labdc.Configfile
Stop-VMX -VMXName $labvpx.VMXName -Mode soft -config $labvpx.Configfile
Stop-VMX -VMXName $freenas.VMXName -Mode soft -config $freenas.Configfile
Stop-VMX -VMXName $vyos.VMXName -Mode soft -config $vyos.Configfile
