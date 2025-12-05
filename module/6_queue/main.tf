resource "azurerm_storage_queue" "queue" {
    for_each = var.queuechildvars
  name                 = each.key
  storage_account_name = each.value.storage_account_name
}
