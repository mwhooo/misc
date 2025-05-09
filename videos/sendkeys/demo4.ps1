add-type -AssemblyName microsoft.VisualBasic

Start-Process powershell.exe -ArgumentList "D:\__DEMOS\powershell-part57\installer-hangs.ps1" -Windowstyle Hidden

start-sleep -Milliseconds 5000

[Microsoft.VisualBasic.Interaction]::AppActivate("Yes or no")
start-sleep -Milliseconds 1000

[System.Windows.Forms.SendKeys]::SendWait("{ENTER}")


Installer hangs script

Add-Type -AssemblyName System.Windows.Forms
$useip = [System.Windows.Forms.MessageBox]::Show("Do you want to provide a static IP?","Yes or no",4)
if ($useip -eq "Yes"){
    #$ipnumber = Read-Host "enter last octect 1-255 is valid : $network_prefix"
}

Write-Output "and now we are done"