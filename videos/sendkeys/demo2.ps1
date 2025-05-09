add-type -AssemblyName microsoft.VisualBasic
add-type -AssemblyName System.Windows.Forms

Start-Process -FilePath "notepad.exe" 
Start-Sleep -Milliseconds 100
[Microsoft.VisualBasic.Interaction]::AppActivate("Notepad")

$line = "some line to write to notepad" #this can also come from a file or database

foreach ($c in $line.GetEnumerator()){
       [System.Windows.Forms.SendKeys]::SendWait("{$c}")
       Start-Sleep -Milliseconds 10
}

