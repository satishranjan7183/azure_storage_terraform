resource "azurerm_storage_share" "file_share" {
    for_each = var.filechildvars
  name                 = each.key
  storage_account_name = each.value.storage_account_name
  quota                = 100   # In GB
}
