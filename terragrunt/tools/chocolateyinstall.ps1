$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = '268156634d275b37a2412b3479b72288642a0edd7b2568cec3e4c7f7c5f79ede'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.61.0/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
