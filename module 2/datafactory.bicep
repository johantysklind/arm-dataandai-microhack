param rg_location string = 'westeurope'


resource datafactory 'Microsoft.DataFactory/factories@2018-06-01'={
  name:'dfmodule2solution001'
  location: rg_location

}

