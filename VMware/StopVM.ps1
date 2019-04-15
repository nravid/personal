#Connect-VIServer -Server lab-vc-01.anoprop.com

#Get-VM | Shutdown-VMGuest -Confirm:$false

#Start-Sleep -s 120

#Stop-VMHost -VMHost esx-01.anoprop.com -Force -Confirm:$false -RunASync
#Stop-VMHost -VMHost esx-02.anoprop.com -Force -Confirm:$false -RunASync
#Stop-VMHost -VMHost esx-03.anoprop.com -Force -Confirm:$false -RunASync

#Start-Sleep -s 360


#$nsxmgr = get-vmx | where {$_.VMXName -eq "lab-nsxmgr-01"}
#$labvc = get-vmx | where {$_.VMXName -eq "lab-vc-01"}
#$labvpx = get-vmx | where {$_.VMXName -eq "lab-vpx-01"}
#$freenas = get-vmx | where {$_.VMXName -eq "FreeNAS"}
#$nmas = get-vmx | where {$_.VMXName -eq "nmas"}
#$vpx = get-vmx | where {$_.VMXName -eq "VPX"}
$labdc = get-vmx | where {$_.VMXName -eq "lab-dc-01"}
$labgtg = get-vmx | where {$_.VMXName -eq "lab-win10-gtg"}
$vyos = get-vmx | where {$_.VMXName -eq "vyos"}

#Stop-VMX -VMXName $nsxmgr.VMXName -Mode soft -config $nsxmgr.Config
#Stop-VMX -VMXName $labvc.VMXName -Mode soft -config $labvc.Config
#Stop-VMX -VMXName $labvpx.VMXName -Mode soft -config $labvpx.Config
#Stop-VMX -VMXName $freenas.VMXName -Mode soft -config $freenas.Config
#Stop-VMX -VMXName $nmas.VMXName -Mode soft -config $nmas.Config
#Stop-VMX -VMXName $vpx.VMXName -Mode soft -config $vpx.Config
Stop-VMX -VMXName $labdc.VMXName -Mode soft -config $labdc.Config
Stop-VMX -VMXName $lab-win10-gtg.VMXName -Mode soft -config $labgtg.Config
Stop-VMX -VMXName $vyos.VMXName -Mode soft -config $vyos.Config
