# Introduction:

The module is used to deploy azure container registries over terraform with a default setup (Infrastructure as Code).

> **_NOTE:_** The required providers, providers configuration and terraform version are maintained in the user's configuration and are not maintained in the modules themselves.

# Example Use of Module:

    module "acr" {
    source = "github.com/Hamburg-Port-Authority/terraform-azure-acr?ref=1.0.1"

    name                = var.name
    resource_group_name = var.resource_group_name
    sku                 = var.sku
    admin_enabled       = var.admin_enabled
    }
