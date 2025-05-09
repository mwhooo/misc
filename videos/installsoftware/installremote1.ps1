#YOU NEED TO HAVE THE FOLLOWING:
#1. The script must be run from a domain account with admin rights on the remote servers

#content server.txt should contain 1 server per line

$CWD = Split-Path $MyInvocation.MyCommand.Definition
$servers = get-content $CWD\server.txt
$domaincreds = Get-Credential

foreach($server in $servers){
    Invoke-Command -ComputerName $server -ScriptBlock {
        $URL = "https://www.7-zip.org/a/7z1900-x64.exe"
        $outfile = "C:\Windows\Temp\7z1900-x64.exe"
        Invoke-WebRequest -Uri $URL -Method Get -OutFile $outfile
        Start-Process -FilePath $outfile -ArgumentList "/S" -Wait
    } -Credential $domaincreds
}
