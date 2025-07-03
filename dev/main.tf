module "rg" {
    source = "../rg"
    rg_name= var.rg_name
}

module "vnet" {
    depends_on = [ module.rg ]
    source = "../vnet"
    vnet_name= var.vnet_name
}

module "subnet_name" {
    depends_on = [ module.vnet ]
    source = "../subnet"
    subnet_name= var.subnet_name
}

module "storage_account" {
    depends_on = [ module.rg ]
    source = "../stg"
    storage_account_name = var.storage_account_name
}
# farzi addition just to check 

# # module "keyvault" {
#     depends_on = [ module.rg ]
#     source = "../kv"
#     keyvault_name = var.keyvault_name
# }