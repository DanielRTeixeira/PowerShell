function Get-FSMOs {
  Get-ADForest $env:UserDomain | Format-Table SchemaMaster,DomainNamingMaster
  Get-ADDomain $env:UserDomain | Format-Table PDCEmulator,RIDMaster,InfrastructureMaster
}
