add-type -AssemblyName microsoft.VisualBasic
add-type -AssemblyName System.Windows.Forms

Start-Process -FilePath "mmc.exe" -ArgumentList "compmgmt.msc"

start-sleep -Milliseconds 2500

[Microsoft.VisualBasic.Interaction]::AppActivate("Computer Management")
start-sleep -Milliseconds 1000

[System.Windows.Forms.SendKeys]::SendWait("{DOWN 3}")
start-sleep -Milliseconds 1000
[System.Windows.Forms.SendKeys]::SendWait("{RIGHT 2}")
start-sleep -Milliseconds 1000
[System.Windows.Forms.SendKeys]::SendWait("{DOWN 1}")
start-sleep -Milliseconds 1000
[System.Windows.Forms.SendKeys]::SendWait("{RIGHT 1}")
start-sleep -Milliseconds 1000
[System.Windows.Forms.SendKeys]::SendWait("{DOWN 2}")


