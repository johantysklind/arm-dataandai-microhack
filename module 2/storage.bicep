param rg_location string = 'westeurope'

resource datalake 'Microsoft.Storage/storageAccounts@2021-06-01'={
  name:'samodule2datalake001'
  kind :'StorageV2'
  sku : {
    name : 'Standard_LRS'
  }
  location: rg_location
}
