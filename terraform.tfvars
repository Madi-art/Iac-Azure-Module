location            = "AustraliaEast"
resource_group_name = "module_vm_windows1"
name                = "nsg_name"
tags = {
  "environment" = "lab"
  "owner" = "Ben"
}
nsg_rules = [
  {
    name                       = "AllowWebIn"
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "80"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  },
  {
    name                       = "AllowSSLIn"
    priority                   = 110
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "443"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  },
  {
    name                       = "AllowRDPIn"
    priority                   = 120
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "3389"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
]


vnet_windows_name = "vNetWindows"

address_space_windows_definition = [
    "10.0.0.0/16"
    ]

subnet_windows_name = "subnetwindowsname"

address_prefixes_windows_definition =  [
    "10.0.2.0/24"
    ]

private_ip_allocation_windows_definition = "Dynamic"

nombre_de_vm_windows = 1

size_vm_windows_definition = "Standard_F2" 

user_windows_name = "adminuser" 

source_image =  [
    "MicrosoftWindowsServer",
    "WindowsServer",
    "2016-Datacenter",
    "latest"
    ]