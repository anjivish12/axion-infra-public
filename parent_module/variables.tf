
variable "resource_group" {
    type = map(object({
        name = string
        location = string
    }))
}
variable "acrs"{
    type = map(object({
        name = string
        resource_group_name = string
        location = string
        sku = string
        georeplications = optional(map(object({
          location = string
          zone_redundancy_enabled = string
          tags = optional(map(string))
        })))

    }))
}


variable "aks" {
    type = map(object({
      name = string
      location = string
      resource_group_name = string
      dns_prefix = string
      tags = map(string)
      default_node_pool = list(object({
        name = string
        node_count = number
        vm_size = string
      })) 
      identity = list(object({
        type = string
      }))
    }))
  
}

variable "servers" {

    type = map(object({
      name = string
      resource_group_name = string
      location = string
      sku_name = string
      db_name = string
    }))
  
}