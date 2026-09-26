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