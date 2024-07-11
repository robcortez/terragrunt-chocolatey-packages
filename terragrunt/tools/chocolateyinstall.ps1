$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = '663d170c68a23254b11bcdf88e5a903ae6677a72f9eeb70f5bd2dc76a0331d71'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.60.1/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
