variable "rg" {
    default = "testtfmrg"
}

variable "loc" {
    default = "East US"
}

variable "tags" {
    type = "map"
    default = {
        environment = "training"
        source      = "citadel"
    }
}
variable "webAppLocations" {
    default = [ "eastus", "canadaeast", "brazilsouth", "japanwest" ]
}
