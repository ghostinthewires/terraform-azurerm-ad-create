# terraform-azurerm-ad-create
This module quickly creates an Azure Windows Server 2012 R2 VM and creates an Active Directory Forest using a Virtual Machine Extension in Terraform (using the [azurerm_virtual_machine_extension resource](https://www.terraform.io/docs/providers/azurerm/r/virtual_machine_extension.html)).


## Notes

- This module is intended as an example of creating a VM and Active Directory Domain, and **it is not recommended for production use** as the configuration has been simplified for demo purposes, e.g.:
  - The Active Directory Forest has a single node, for demonstration purposes
  - There's no security rules configured on the network, so everything's open etc.
- The numbering on the files within the modules below have no effect on which order the resources are created in - it's purely to make the examples easier to understand.

## Running this Example

Initialize the modules (and download the Azure Provider) by running `terraform init`:

```bash
$ terraform init
```

In order to run this example you'll need some kind of credentials configured - either a Service Principal or to be logged into the Azure CLI. You can find out more about this on [the Azure Provider overview page](https://www.terraform.io/docs/providers/azurerm/index.html)

Once you've initialized the Provider - you can run the sample by running:

```bash
$ terraform apply
```
## Modules

This module makes use of 1 nested module:
 * [modules/active-directory](modules/active-directory)
    - This module creates an Active Directory Forest on a single Virtual Machine

## Authors

Originally created by [ghostinthewires](https://github.com/ghostinthewires)
