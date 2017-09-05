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

net use \$SecParamWFPath  /u:AZURE\samgtstd $SecParamSecretKey

expand-archive $SecParamWFPath$SecParamWFZipFile -DestinationPath c:\ -Force