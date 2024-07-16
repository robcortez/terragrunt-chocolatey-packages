$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = 'b54c7e1f18d382dc7156c36395f419bea02bb8094e2a08b1878072cc3a87e88b'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.61.1/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
