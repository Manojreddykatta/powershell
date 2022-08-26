$Username = "wm"
$Password = 'Welcome@2022' | ConvertTo-SecureString -Force -AsPlainText
$Credential = New-Object -TypeName PSCredential -ArgumentList ($Username, $Password)
New-AzVm `
    -ResourceGroupName 'mrk-ps' `
    -Name 'mrk-VM' `
    -Location 'EastUS' `
    -VirtualNetworkName 'mrk-Vnet' `
    -Size 'Standard_D4s_v3' `
    -SubnetName 'mrk-Subnet' `
    -SecurityGroupName 'mrk-NetworkSecurityGroup' `
    -PublicIpAddressName 'mrk-PublicIpAddress' `
    -OpenPorts 80,3389,445 `
    -credential $Credential
Invoke-AzVmRunCommand `
    -ResourceGroupName 'mrk-ps' `
    -VMName 'mrk-VM' `
    -CommandId 'RunPowerShellScript' `
    -ScriptPath 'E:\Projects\powershell\ps_scripts\telegraminstall.ps1'