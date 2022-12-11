
variable "location" {
    type = string
    description = "The location for the NSG"
}

variable "resource_group_name" {
  type = string
  description = "The name of the Resouce Group"
}

variable "tags" {
  type = map(any)
  description = "The tag values for the deployment"
}

variable "name" {
  type = string
  description = "Name of the Network Security Group"
}

variable "nsg_rules" {
  type = list(object({
    name                       = string
    priority                   = number
    direction                  = string
    access                     = string
    protocol                   = string
    source_port_range          = string
    destination_port_range     = string
    source_address_prefix      = string
    destination_address_prefix = string
  }))
  description = "The values for each NSG rule "
} 





variable "vnet_windows_name" {
description = "Azure vnet name"
type        = string
}

variable "address_space_windows_definition" {
description = "Defintion of the adress space"
type        = list(string)
}

variable "subnet_windows_name" {
description = "Azure subnet name"
type        = string
}

variable "address_prefixes_windows_definition" {
description = "Definition of the address prefixes"
type        = list(string)   
}

variable "private_ip_allocation_windows_definition" {
description = "Azure private ip alocation dynamic or static"
type        = string
}

variable "nombre_de_vm_windows" {
description = "nombre de machines virtuel"
type        = number
}


variable "size_vm_windows_definition" {
description = "Name of the default type size"
type        = string
}

variable "user_windows_name" {
description = "Name of the default user"
type        = string   
}

variable "source_image" {
description = "les sources de l image windows, server ou client, publishern offer, sku, version"
type        = list(string)
}