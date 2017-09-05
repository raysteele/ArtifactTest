[CmdletBinding()]
param(
    [string] $SecParamWFZipFile,
    [string] $SecParamWFPath,
    [string] $SecParamSecretKey
)

###################################################################################################
$SecParamWFZipFile | out-file C:\Logs\newfile-Artifact01.txt
$SecParamWFPath | out-file C:\Logs\newfile-Artifact01.txt -Append
$SecParamSecretKey | out-file C:\Logs\newfile-Artifact01.txt -Append


#param ($zipfile,$SecureKey)

#net use \\samgtstd.file.core.windows.net\release  /u:AZURE\samgtstd $SecureKey

#expand-archive \\samgtstd.file.core.windows.net\release\$zipfile -DestinationPath f:\ -Force