$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = '3ce319b28f0c0344978164dd3f3b5dcf548be8e375ba305e91f875238e7e31ff'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.59.7/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
