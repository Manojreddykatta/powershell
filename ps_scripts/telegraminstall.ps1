md -Path $env:temp\chromeinstall -erroraction SilentlyContinue | Out-Null
$Download = join-path $env:temp\chromeinstall tsetup-x64.4.1.0.exe
Invoke-WebRequest 'https://telegram.org/dl/desktop/win64/tsetup-x64.4.1.0.exe'  -OutFile $Download
Invoke-Expression "$Download /silent /install"
