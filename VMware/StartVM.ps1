

#Start-VMX -VMXName "lab-vc-01"
#Start-VMX -VMXName "FreeNAS"
#Start-VMX -VMXName "lab-dc-01"
#Start-VMX -VMXName "lab-nsxmgr-01"
#Start-VMX -VMXName "ESX-02"
#Start-VMX -VMXName "ESX-03"

Start-VMX -VMXName "VYOS"
Start-VMX -VMXName "VPX"
Start-VMX -VMXName "NMAS"

#Start-Sleep -s 540

#Connect-VIServer -Server lab-vc-01.anoprop.com


#Start-VM -VM lab-nsxesg-01-0 -RunASync
#Start-VM -VM lab-nsxdlr-01-0 -RunASync
#Start-VM -VM lab-viewconn72-01 -RunASync
#Get-VMQuestion | Set-VMQuestion -Option "button.yes" -Confirm:$false
#Start-VM -VM lab-uag30-01 -RunASync
# Start-VM -VM vrni-platform -RunASync
# Start-VM -VM vrni-proxy -RunASync
# Start-VM -VM vRops -RunASync

