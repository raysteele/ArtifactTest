[CmdletBinding()]
param(
    [string] $SecParamWFZipFile,
    [string] $SecParamWFPath,
    [string] $SecParamSecretKey
)

 Start-Transcript -Path C:\Logs\QCode2WF-Transcript.txt -Append


###################################################################################################
$SecParamWFZipFile | out-file C:\Logs\QCode2WF-Log.txt
$SecParamWFPath | out-file C:\Logs\QCode2WF-Log.txt -Append
$SecParamSecretKey | out-file C:\Logs\QCode2WF-Log.txt -Append


#param ($zipfile,$SecureKey)

net use \\$SecParamWFPath  /u:AZURE\samgtstd $SecParamSecretKey

expand-archive $SecParamWFPath$SecParamWFZipFile -DestinationPath c:\ -Force

Stop-Transcript