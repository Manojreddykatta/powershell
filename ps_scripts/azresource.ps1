$rg = @{
    Name = 'mrk-ps'
    Location = 'EastUS'
}
New-AzResourceGroup @rg
$vnet = @{
    Name = 'mrk-VNet'
    ResourceGroupName = 'mrk-ps'
    Location = 'EastUS'
    AddressPrefix = '10.0.0.0/16'    
}
$virtualNetwork = New-AzVirtualNetwork @vnet
$subnet = @{
    Name = 'mrk-subnet1'
    VirtualNetwork = $virtualNetwork
    AddressPrefix = '10.0.0.0/24'
}
$subnetConfig = Add-AzVirtualNetworkSubnetConfig @subnet
$virtualNetwork | Set-AzVirtualNetwork
$ip = @{
    Name = 'mrk-ip'
    ResourceGroupName = 'mrk-ps'
    AllocationMethod = 'dynamic'
    location = 'EastUS'
}
New-AzPublicIpAddress @ip 
$vm1 = @{
    ResourceGroupName = 'mrk-ps'
    Location = 'EastUS'
    Name = 'mrk-vm'
    VirtualNetworkName = 'mrk-vnet'
    SubnetName = 'mrk-subnet1'
}
New-AzVM @vm1