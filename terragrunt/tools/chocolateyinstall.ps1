$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = 'e58a2f84c1679573c6496b98a01db52281c307dc6164d14998a24637a47d4ad7'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.63.0/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
