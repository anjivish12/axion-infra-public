terraform {
    required_providers {
        azurerm = {
            source = "hashicorp/azurerm"
            version = "4.76.0"
        }

    }
}

provider "azurerm"{
    features{}
    subscription_id = "9e00a7ac-bf84-4246-8d3d-d785b7f6e78b"
}