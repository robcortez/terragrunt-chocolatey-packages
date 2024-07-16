$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = 'a3eaa048f8d2e7e046a58a6f4bf159057d57ef53c8851725f09d7f28869583fc'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.62.0/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
