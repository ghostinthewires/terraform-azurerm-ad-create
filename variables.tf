#################################################################
#   Variables
#################################################################

# Generic info
variable resource_group_name {
  description = "The name of the Resource Group where the Domain Controllers resources will be created"
}
variable location {
  description = "The Azure Region in which the Resource Group exists"
}

# Active Directory & Domain Controller
variable prefix {
  description = "The prefix used for all resources in this example. Needs to be a short (6 characters) alphanumeric string. Example: `myprefix`."
}

variable "subnet_id" {
  description = "The Subnet ID which the Domain Controller's NIC should be created in. This should be have already been created seperately"
}
variable private_ip_address {
  description = "The private IP address for the Domain Controller's NIC"
}
variable admin_username {
    description = "The username associated with the local administrator account on the virtual machine"
}
variable admin_password {
  description = "The password associated with the local administrator account on the virtual machine"
}

