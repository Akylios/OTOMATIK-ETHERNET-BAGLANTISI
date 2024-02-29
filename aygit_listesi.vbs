'www.sordum.net - 06.04.2017 - Velociraptor
Dim oShell
Set oShell = WScript.CreateObject ("WScript.Shell")
oShell.run "cmd /k wmic nic get name, index > aygit_listesi.txt" , 0 , True
Set oShell = Nothing