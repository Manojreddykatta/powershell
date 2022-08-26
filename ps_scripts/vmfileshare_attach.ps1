$connectTestResult = Test-NetConnection -ComputerName teststorageaccountmanoj.file.core.windows.net -Port 445
if ($connectTestResult.TcpTestSucceeded) {
    # Save the password so the drive will persist on reboot
    cmd.exe /C "cmdkey /add:`"teststorageaccountmanoj.file.core.windows.net`" /user:`"localhost\teststorageaccountmanoj`" /pass:`"cCbs6l8+Xjq04mGREyoSw+1hJF0N8BeJmqnwNXJV/gqo1fFrBMClObWOKa5SAgXxxZwcGT+MMlBM+ASta2Ta8g==`""
    # Mount the drive
    New-PSDrive -Name Z -PSProvider FileSystem -Root "\\teststorageaccountmanoj.file.core.windows.net\testfileshare" -Persist
} else {
    Write-Error -Message "Unable to reach the Azure storage account via port 445. Check to make sure your organization or ISP is not blocking port 445, or use Azure P2S VPN, Azure S2S VPN, or Express Route to tunnel SMB traffic over a different port."
}