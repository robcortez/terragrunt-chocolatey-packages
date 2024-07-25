$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = '94c4568b14d0c227e94387c0391bddc251ffdbc440ee7f6c3963971a24a3fef0'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.63.6/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
