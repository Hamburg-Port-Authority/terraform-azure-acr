# Introduction:

The module is used to deploy azure container registries over terraform with a default setup (Infrastructure as Code).

# Exmaple Use of Modul:

    module "acr" {
    source = "github.com/la-cc/terraform-azure-acr?ref=1.0.0"

    name                = var.name
    resource_group_name = var.resource_group_name
    sku                 = var.sku
    admin_enabled       = var.admin_enabled
    }
