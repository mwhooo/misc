add-type -AssemblyName microsoft.VisualBasic

Start-Process powershell.exe -ArgumentList "installer-hangs.ps1" -Windowstyle Hidden

start-sleep -Milliseconds 5000

[Microsoft.VisualBasic.Interaction]::AppActivate("Yes or no")
start-sleep -Milliseconds 1000

[System.Windows.Forms.SendKeys]::SendWait("{ENTER}")
