$src='C:\Users\kmano\OneDrive\Desktop\axiom\Tasks\powershell\source'
cd $src
ForEach ($Dir in ("file1", "file2", "file3"))
    {
        New-Item -ItemType Directory -Path $Dir
    }
    ForEach ($file in ("s1.txt", "s2.log", "s3.pdf","s4.tf"))
    {
        New-Item -ItemType file -Path C:\Users\kmano\OneDrive\Desktop\axiom\Tasks\powershell\source\$file
    }