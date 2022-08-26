$RGName = 'mrk-ps'
$location = 'eastus'
$storageaccountname = 'manojreddk'
$getRg = ( Get-AzResourceGroup -name $RGName -location $location -ErrorAction SilentlyContinue).ResourceGroupName
if ($getRg -eq $RGName) {
    New-AzStorageAccount -ResourceGroupName $RGName -name $storageaccountname -location $location -SkuName 'Standard_RAGRS' -Kind 'StorageV2'
}
else {
    New-AzResourceGroup -name $RGName -location $location
    New-AzStorageAccount -ResourceGroupName $RGName -name $storageaccountname -location $location -SkuName 'Standard_RAGRS' -Kind 'StorageV2'
}
