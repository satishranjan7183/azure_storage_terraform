resource "azurerm_storage_account" "sa" {
    for_each = var.strchildvars
  name                     = each.key
  resource_group_name      = each.value.resource_group_name
  location                 = each.value.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  account_kind             = "StorageV2"

  network_rules {
    default_action = "Allow"
  }
 public_network_access_enabled = true

  blob_properties {
    delete_retention_policy {
      days = 30
    }
  }
}
