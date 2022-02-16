Option Explicit

Dim str_ComputerName
Dim obj_WMIService
Dim col_Computers
Dim obj_Computer
Dim int_Return

str_ComputerName = InputBox("Enter new computer name for this computer where the name is (yourrname-PC/Laptop/Tablet):", "Rename Computer")

Set obj_WMIService = GetObject("winmgmts:" & "{impersonationLevel=impersonate}!\\" & "." & "\root\cimv2")
Set col_Computers = obj_WMIService.ExecQuery ("Select Name from Win32_ComputerSystem")

For Each obj_Computer in col_Computers
      int_Return = obj_Computer.Rename(str_ComputerName)
      If int_Return <> 0 Then
            MsgBox "Error renaming computer"
      Else
            'Success and as requested, no restart
      End If
Next