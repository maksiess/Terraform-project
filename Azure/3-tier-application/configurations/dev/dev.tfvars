private_subnet1_range    = "10.0.1.0/24" 
private_subnet2_range    = "10.0.2.0/24" 
private_subnet3_range    = "10.0.3.0/24" 
resource_group_name      = "dev"           #Precreate this while creating Backend Container 
security_group_name      = "sec_group1" 
vm1_computername         = "vm1" 
vm2_computername         = "vm2" 
vm3_computername         = "vm3" 
address_space            = "10.0.0.0/16" 
vnet_name                = "vnet1" 
location                 = "eastus2" 
ssh_key                  = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCsZu2F4ZhoNUwJ4Zc+06uQ5YAq5RKQtZoPraxPoO+ZcEq4Ufj97fwSMVTNx4saaQ5w0It7F65aEnjLY0xYP9PDeZExfXGeh6d+iH2tushNi7sMSOUh3TwMbjbExHI56OUxJeuV71OYUJuuOeA5KEmLAbBv7MFyZLHB+XzfEJB0YQUVR/61BeXZ3yYoWMRHGyDBpOHubvYpE/tpbuABwLg6HjhU4uSTQ3sNwFuXAKCP4R5cwD0YGXBc8Cv4txbADUeyVSUeRp73rWsV6W8nNPCWlpf+OLJs1Zj2Yy01SJ2pP1Ln2lUQmipmLyvfwZUar4LueUu+lhobSE4Tyx+YDnFJ centos@ip-172-31-18-252.eu-west-2.compute.internal" 
environment              = "dev" 
storage_account          = "devmurodbey"

#OS Information 

publisher                = "OpenLogic" 
offer                    = "CentOS" 
sku                      = "7.5" 
version                  = "latest" 
admin_username           = "centos" 
vm_size                  = "Standard_DS1_v2" 