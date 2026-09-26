output "acr_names" {
  value = {
    for key, acr in azurerm_container_registry.acr :
    key => acr.name
  }
}