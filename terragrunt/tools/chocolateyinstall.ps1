$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = 'a3d744bc7dce53f988f44ab3ecdfcd1e7443541ead07b68c764b08e4c6b13228'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.60.0/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
