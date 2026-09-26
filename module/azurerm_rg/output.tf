output "rg_names" {
  value = {
    for key, rg in azurerm_resource_group.rg :
    key => rg.name
  }
}

output "rg_locations" {
  value = {
    for key, rg in azurerm_resource_group.rg :
    key => rg.location
  }
}