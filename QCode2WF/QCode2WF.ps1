[CmdletBinding()]
param(
    [string] $SecParamWFZipFile,
    [string] $SecParamWFPath,
    [string] $SecParamSecretKey
)

###################################################################################################
$SecParamWFZipFile | out-file C:\Logs\QCode2WF-Log.txt
$SecParamWFPath | out-file C:\Logs\QCode2WF-Log.txt -Append
$SecParamSecretKey | out-file C:\Logs\QCode2WF-Log.txt -Append


#param ($zipfile,$SecureKey)

#net use \\samgtstd.file.core.windows.net\release  /u:AZURE\samgtstd $SecureKey

#expand-archive \\samgtstd.file.core.windows.net\release\$zipfile -DestinationPath f:\ -Force