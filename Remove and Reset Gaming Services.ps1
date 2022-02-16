Get-AppxPackage gaming.services -allusers | remove-appxpackage -allusers
Remove-Item -Path "HKLM:\System\CurrentControlSet\Services\GamingServices" -recurse