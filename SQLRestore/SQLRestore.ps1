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
13HMez1ltwux48kcjoILtMUT3mBEBFy7gmS67CWIXFAFmv/dJc5a7D0yZrMyCsDdvz7E8Ps3ogzDesejCqJsbw==

13HMez1ltwux48kcjoILtMUT3mBEBFy7gmS67CWIXFAFmv/dJc5a7D0yZrMyCsDdvz7E8Ps3ogzDesejCqJsbw==

net use \\samgtstd.file.core.windows.net\release /u:AZURE\samgtstd 13HMez1ltwux48kcjoILtMUT3mBEBFy7gmS67CWIXFAFmv/dJc5a7D0yZrMyCsDdvz7E8Ps3ogzDesejCqJsbw==


Restore-SqlDatabase -ServerInstance "TestSQL\Instance" -Database "Qmlative" -BackupFile "https://samgtstd.blob.core.windows.net/backups/WSIPC_OceanBeach.bak"
