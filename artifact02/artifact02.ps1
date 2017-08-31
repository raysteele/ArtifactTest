param(
    [string] $StringParam1Value,
    [string] $StringParam2Value
)

$StringParam1Value | out-file newfile-Artifact02.txt
$StringParam2Value | out-file newfile-Artifact02.txt -Append