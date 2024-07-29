# MUST BE RUN AS ADMINISTRATOR
# If you have a custom path to your SSMS folder, change any of the if statements to your own custom path.
#
#  SQL Server Management Studio 16
If (Test-Path 'C:\Program Files (x86)\Microsoft SQL Server\130\Tools\Binn\ManagementStudio\ssms.pkgundef') 
{
   powershell -Command "(Get-Content 'C:\Program Files (x86)\Microsoft SQL Server\140\Tools\Binn\ManagementStudio\ssms.pkgundef') -replace '\[\`$RootKey\`$\\Themes\\{1ded0138-47ce-435e-84ef-9ec1f439b749}\]', '//[`$RootKey`$\Themes\{1ded0138-47ce-435e-84ef-9ec1f439b749}]' | Out-File 'C:\Program Files (x86)\Microsoft SQL Server\130\Tools\Binn\ManagementStudio\ssms.pkgundef'"
}
#  SQL Server Management Studio 17
ElseIf (Test-Path 'C:\Program Files (x86)\Microsoft SQL Server\140\Tools\Binn\ManagementStudio\ssms.pkgundef') 
{
   powershell -Command "(Get-Content 'C:\Program Files (x86)\Microsoft SQL Server\140\Tools\Binn\ManagementStudio\ssms.pkgundef') -replace '\[\`$RootKey\`$\\Themes\\{1ded0138-47ce-435e-84ef-9ec1f439b749}\]', '//[`$RootKey`$\Themes\{1ded0138-47ce-435e-84ef-9ec1f439b749}]' | Out-File 'C:\Program Files (x86)\Microsoft SQL Server\140\Tools\Binn\ManagementStudio\ssms.pkgundef'"
}
#  SQL Server Management Studio 18
ElseIf (Test-Path 'C:\Program Files (x86)\Microsoft SQL Server Management Studio 18\Common7\IDE\ssms.pkgundef') 
{
   powershell -Command "(Get-Content 'C:\Program Files (x86)\Microsoft SQL Server Management Studio 18\Common7\IDE\ssms.pkgundef') -replace '\[\`$RootKey\`$\\Themes\\{1ded0138-47ce-435e-84ef-9ec1f439b749}\]', '//[`$RootKey`$\Themes\{1ded0138-47ce-435e-84ef-9ec1f439b749}]' | Out-File 'C:\Program Files (x86)\Microsoft SQL Server Management Studio 18\Common7\IDE\ssms.pkgundef'"
}
#  SQL Server Management Studio 19
ElseIf (Test-Path 'C:\Program Files (x86)\Microsoft SQL Server Management Studio 19\Common7\IDE\ssms.pkgundef') 
{
   powershell -Command "(Get-Content 'C:\Program Files (x86)\Microsoft SQL Server Management Studio 19\Common7\IDE\ssms.pkgundef') -replace '\[\`$RootKey\`$\\Themes\\{1ded0138-47ce-435e-84ef-9ec1f439b749}\]', '//[`$RootKey`$\Themes\{1ded0138-47ce-435e-84ef-9ec1f439b749}]' | Out-File 'C:\Program Files (x86)\Microsoft SQL Server Management Studio 19\Common7\IDE\ssms.pkgundef'"
}
Else {Write-Output 'ssms.pkgundef not found, please check if the path is right'} 
Pause