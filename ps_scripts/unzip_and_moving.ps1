
$dest = 'E:\Projects\powershell\v1.0.0.zip'
Invoke-WebRequest -uri "https://github.com/technext/soffer/archive/refs/tags/v1.0.0.zip" -Method "GET"  -Outfile $dest
Expand-Archive E:\Projects\powershell\v1.0.0.zip  -DestinationPath E:\Projects\powershell\v1.0.0
cd C:\Users\kmano\Downloads\scripting
mkdir content
Move-Item -Path E:\Projects\powershell\v1.0.0\soffer-1.0.0\* -Force -Destination C:\Users\kmano\Downloads\scripting\content
cd C:\Users\kmano\Downloads\scripting\content
.\index.html
