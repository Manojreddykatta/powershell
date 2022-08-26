$src = "C:\Users\kmano\OneDrive\Desktop\venky_local"
$dest ="C:\Users\kmano\OneDrive\Desktop\venky_remote"
Copy-Item -Exclude '*.pdf', '*.log' -ErrorAction silentlyContinue -recurse "$src\*" $dest