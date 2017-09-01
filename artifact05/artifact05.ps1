[CmdletBinding()]
param(
    [string] $Param1,
    [string] $Param2,
    [string] $Param3
)

###################################################################################################
$Param1 | out-file C:\Logs\newfile-Artifact01.txt
$Param2 | out-file C:\Logs\newfile-Artifact01.txt -Append
$Param3 | out-file C:\Logs\newfile-Artifact01.txt -Append