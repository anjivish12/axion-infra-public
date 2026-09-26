resource_group = {
    rg1 = {
        name = "anjali"
        location = "Central India"
    }
}

acrs = {

 acr1 =  {
        name                = "acr123micro"
        resource_group_name = "anjali"
        location            = "Central India"
        sku                 = "Premium"  
    }
}

aks = {
    aks1 = {
        name = "aks-123-anjali"
        location = "Central India"
        resource_group_name = "anjali"
        dns_prefix = "aksdns"
        tags = {
            "resource" = "aks"
            "owner" = "anjali"
        }
        default_node_pool = [{
            name       = "default"
            node_count = 1
            vm_size    = "Standard_D2s_v6"
        }]

        identity = [{
          type = "SystemAssigned"
        }]
    }
}


servers = {
    server1 = {
        name = "aks-postgres"
        resource_group_name = "anjali"
        location = "Central India"
        sku_name = "GP_Standard_D4s_v3"
        db_name = "axiondb"
    }
}