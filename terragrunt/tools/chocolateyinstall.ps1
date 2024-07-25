$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = 'bbac0b7d74e2a40c31ea2f03cc402370a776fab18e1c5ef73bb04995cb768117'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.63.5/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
