targetScope = 'subscription'

param rg_name string = 'rgModule2Solution' 
param rg_location string = 'westeurope'

resource rgSolution 'Microsoft.Resources/resourceGroups@2021-04-01' ={
  name: rg_name
  location: rg_location
}

module storage 'storage.bicep'= {
  name: 'MyModule'
  scope: rgSolution
  params: {
    rg_location: rg_location
  }
}


module datafactory 'datafactory.bicep'= {
  name: 'df'
  scope: rgSolution
  params: {
    rg_location: rg_location
  }
}
