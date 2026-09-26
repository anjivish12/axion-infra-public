output "aks_names" {
  value = {
    for key, aks in azurerm_kubernetes_cluster.aks :
    key => aks.name
  }
}