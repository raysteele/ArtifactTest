param(
    [string] $StringParam1Value,
    [string] $StringParam2Value
)

$StringParam1Value | out-file newfile.txt
$StringParam2Value | out-file newfile.txt -Append