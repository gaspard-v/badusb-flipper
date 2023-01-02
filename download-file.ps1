$p=[System.Net.WebRequest]::GetSystemWebProxy()
$p.Credentials=[System.Net.CredentialCache]::DefaultNetworkCredentials
$c=New-Object Net.WebClient;$c.Proxy=$p
$c.DownloadFile("https://www.google.com",(Join-Path -Path $env:TEMP -ChildPath tmp.txt))
exit