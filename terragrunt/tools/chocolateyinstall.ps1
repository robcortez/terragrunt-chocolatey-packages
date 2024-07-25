$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = '363ccf22cb454d2aa7f9f841b44aa009150bb8c5445b05ce3c79e1f111c92e25'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.63.3/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
