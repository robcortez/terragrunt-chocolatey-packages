$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = '8c18e1547bfb314cdaf315d1584efbe84231f71c07241ebf1ee1417720d4515d'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.62.1/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
