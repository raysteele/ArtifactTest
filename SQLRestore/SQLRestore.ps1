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

net use $SecParamWFPath  /u:AZURE\samgtstd $SecParamSecretKey

#expand-archive $SecParamWFPath\$SecParamWFZipFile -DestinationPath c:\ -Force

Restore-SqlDatabase -ServerInstance "Computer\Instance" -Database "Qmlative" -BackupFile "https://samgtstd.blob.core.windows.net/backups/WSIPC_OceanBeach.bak" -SqlCredential "mySqlCredential"

Stop-Transcript

WF-Skyward.zip
\\samgtstd.file.core.windows.net\release
13H

net use \\samgtstd.file.core.windows.net\release /u:AZURE\samgtstd 1

Restore-SqlDatabase -ServerInstance "TestSQL\Instance" -Database "Qmlative" -BackupFile "https://samgtstd.blob.core.windows.net/backups/WSIPC_OceanBeach.bak"
