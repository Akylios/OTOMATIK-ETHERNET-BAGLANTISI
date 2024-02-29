'www.sordum.net - 06.04.2017 - Velociraptor
If Not WScript.Arguments.Named.Exists("elevate") Then
  CreateObject("Shell.Application").ShellExecute WScript.FullName _
    , WScript.ScriptFullName & " /elevate", "", "runas", 1
  WScript.Quit
End If

Dim oShell
Set oShell = WScript.CreateObject ("WScript.Shell")
oShell.run "wmic path win32_networkadapter where NetConnectionID='Ethernet 2' call disable" , 0 , True
Set oShell = Nothing