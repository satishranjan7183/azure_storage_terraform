resource "azurerm_storage_table" "table" {
    for_each = var.tablechildvar
  name                 = each.key
  storage_account_name = each.value.storage_account_name
}
