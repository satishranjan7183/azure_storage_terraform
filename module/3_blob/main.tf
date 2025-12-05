resource "azurerm_storage_container" "blob_container" {
    for_each = var.blobchildvars
  name                  = each.key
  storage_account_name  = each.value.storage_account_name
#    container_access_type = "private"    # This will not accessible publically
  container_access_type = "container"   # This will accessible publically
}
