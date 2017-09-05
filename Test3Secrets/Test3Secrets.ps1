[CmdletBinding()]
param(
    [string] $SecParam1,
    [string] $SecParam2,
    [string] $SecParam3
)

###################################################################################################
$SecParam1 | out-file C:\Logs\newfile-Artifact01.txt
$SecParam2 | out-file C:\Logs\newfile-Artifact01.txt -Append
$SecParam3 | out-file C:\Logs\newfile-Artifact01.txt -Append