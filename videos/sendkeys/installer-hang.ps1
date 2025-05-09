Add-Type -AssemblyName System.Windows.Forms
$useip = [System.Windows.Forms.MessageBox]::Show("Do you want to provide a static IP?","Yes or no",4)
if ($useip -eq "Yes"){
    #$ipnumber = Read-Host "enter last octect 1-255 is valid : $network_prefix"
}

Write-Output "and now we are done"