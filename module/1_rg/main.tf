resource "azurerm_resource_group" "rg" {
    for_each = var.rgchildvars
  name     = each.key
  location = each.value
}
