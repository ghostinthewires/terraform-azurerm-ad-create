##########################################################
## Create DC VM & AD Forest
##########################################################

module "active-directory" {
  source                        = "./modules/active-directory"
  resource_group_name           = "${var.resource_group_name}"
  location                      = "${var.location}"
  prefix                        = "${var.prefix}"
  subnet_id                     = "${var.subnet_id}"
  active_directory_domain       = "${var.prefix}.local"
  active_directory_netbios_name = "${var.prefix}"
  private_ip_address            = "${var.private_ip_address}"
  admin_username                = "${var.admin_username}"
  admin_password                = "${var.admin_password}"
}
