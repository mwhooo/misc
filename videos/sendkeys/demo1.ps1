add-type -AssemblyName microsoft.VisualBasic
add-type -AssemblyName System.Windows.Forms

Start-Process -FilePath "notepad.exe"
start-sleep -Milliseconds 2500

[Microsoft.VisualBasic.Interaction]::AppActivate("Notepad")
start-sleep -Milliseconds 100
[System.Windows.Forms.SendKeys]::SendWait("+{h}")
start-sleep -Milliseconds 100
[System.Windows.Forms.SendKeys]::SendWait("{e}")
start-sleep -Milliseconds 100
[System.Windows.Forms.SendKeys]::SendWait("{l}")
start-sleep -Milliseconds 100
[System.Windows.Forms.SendKeys]::SendWait("{l}")
start-sleep -Milliseconds 100
[System.Windows.Forms.SendKeys]::SendWait("{o}")

