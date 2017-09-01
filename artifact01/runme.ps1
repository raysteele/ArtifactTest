param(
    [string] $StringParam1,
    [string] $StringParam2
)

$StringParam1 | out-file C:\Logs\newfile-Artifact01.txt
$StringParam2 | out-file C:\Logs\newfile-Artifact01.txt -Append