module "rg"{
    source = "../module/azurerm_rg"
    rgs = var.resource_group
}

module "acr" {
    depends_on = [ module.rg ]
    source = "../module/azurerm_acr"
    acrs = var.acrs
  
}

module "aks" {
    depends_on = [ module.rg ]
    source = "../module/azurerm_aks"
    aks = var.aks
}

module "server"{
    depends_on = [ module.rg ]
    source = "../module/azurerm_postgres_server"
    servers = var.servers
}