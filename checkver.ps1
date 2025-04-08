# checkver.ps1 (in repo root)

$apps = Get-ChildItem .\bucket\*.json | ForEach-Object {
    ($_ | Get-Content | ConvertFrom-Json).Name
}

foreach ($app in $apps) {
    checkver $app -u
}