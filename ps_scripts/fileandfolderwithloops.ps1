$dest = 'E:\Projects\powershell\test'
$folders = ("dev", "test", "production", "uat")
if (Test-Path -Path $dest ) {
    Write-Host("folder already exists")
}
else {
    Write-Host("new folder created successfully")
}
