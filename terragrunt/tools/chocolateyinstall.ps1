$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = '5c4347b880714676fffeca6ac6413cb65ea92d86a24f9bb0266c4bc15777137b'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.59.6/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
