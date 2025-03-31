$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = '80f7d242f51049cd7c55e94b0d4c311812aeeae9547d22695314bd6959afb7c8'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.77.5/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
