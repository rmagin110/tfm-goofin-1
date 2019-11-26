provider "azurerm" {
  version = "~> 1.33.1"
}

resource "azurerm_resource_group" "testtfmrg" {
  name     = "${var.rg}"
  location = "${var.loc}"
  tags = "${var.tags}"
}

resource "random_string" "rnd" {
    length = 8
    lower = true
    number = true
    upper = false
    special = false
}

resource "azurerm_storage_account" "testtfmstac" {
  name                     = "${var.tags["source"]}-stac-${random_string.rnd.result}"
  resource_group_name      = "${azurerm_resource_group.testtfmrg.name}"
  location                 = "${var.webAppLocations[1]}"
  account_tier             = "Standard"
  account_replication_type = "LRS"
}