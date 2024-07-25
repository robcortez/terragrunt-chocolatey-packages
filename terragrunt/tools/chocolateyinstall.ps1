$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = 'b1b1e578b4904dd7d127b704e790642d1ad6d894e1a5c796e1e795eccb2920b5'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.63.2/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
