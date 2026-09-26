resource "azurerm_postgresql_flexible_server" "server" {
    for_each = var.servers
  name                          = each.value.name
  resource_group_name           = each.value.resource_group_name
  location                      = each.value.location
  version                       = "12"
  public_network_access_enabled = true
  administrator_login           = "server"
  administrator_password        = "Anjali@12345"
  zone                          = "1"
  storage_mb   = 32768
  storage_tier = "P4"
  sku_name   = each.value.sku_name

}

resource "azurerm_postgresql_flexible_server_database" "database" {
  for_each = var.servers
  name      = each.value.db_name
  server_id = azurerm_postgresql_flexible_server.server[each.key].id
  collation = "en_US.utf8"
  charset   = "UTF8"
}