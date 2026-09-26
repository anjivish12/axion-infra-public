variable "servers" {

    type = map(object({
      name = string
      resource_group_name = string
      location = string
      sku_name = string
      db_name = string

    }))
  
}