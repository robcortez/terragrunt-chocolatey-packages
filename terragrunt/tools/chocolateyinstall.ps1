$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = 'aa87448999b1c01addbad264fdad06d20d16b16b25b91e0d97c0dfbb04f93374'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.59.5/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
