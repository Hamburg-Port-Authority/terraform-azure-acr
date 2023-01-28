variable "name" {
  type        = string
  description = "Name of the Azure Container Registry. Specifies the name of the Container Registry. Changing this forces a new resource to be created."
}

variable "resource_group_name" {
  type        = string
  description = "Resource group in which the Azure Container Registry is created."
}

variable "sku" {

  type        = string
  description = <<-EOT
  Basic
  A cost-optimized entry point for developers learning about Azure Container Registry.
  Basic registries have the same programmatic capabilities as Standard and Premium, e.g. Azure Active Directory authentication integration, image deletion, and web hooks, however, there are size and usage constraints.

  Standard
  Standard registries offer the same capabilities as Basic, with increased storage limits and image throughput.
  Standard registries should satisfy the needs of most production scenarios.

  Premium
  Premium registries provide higher limits on constraints such as storage and concurrent operations, enabling high-volume scenarios.
  In addition to higher image throughput capacity, Premium adds features like geo-replication for managing a single registry across multiple regions, maintaining a network-close registry to each deployment.
  EOT

  default = "Basic"
}

variable "admin_enabled" {
  type        = bool
  description = "Specifies whether the admin user is enabled. Defaults to false."
  default     = false
}

variable "tags" {
  type        = map(string)
  description = "Defines the default tags.  Some tags like owner are enforced by Azure policies. "
  default = {
    TF-Managed  = "true"
    TF-Worfklow = ""
    Maintainer  = ""

  }
}
