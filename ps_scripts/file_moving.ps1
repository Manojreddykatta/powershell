cd C:\Users\kmano\Downloads
New-Item -Path C:\Users\kmano\Downloads -Name sample-movingfile.txt -ItemType file
mkdir scripting
Move-Item -Path C:\Users\kmano\Downloads\sample-movingfile.txt -Destination C:\Users\kmano\Downloads\scripting\sample-movingfile.txt