resource "azurerm_role_assignment" "rbac" {
  scope                = azurerm_storage_account.sa.id
  role_definition_name = "Storage Blob Data Contributor"
  principal_id         = var.ad_group_or_sp_id
}
