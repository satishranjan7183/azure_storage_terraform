module "rg" {
    source = "../../module/1_rg"
    rgchildvars = var.rgparentvars
}

module "storageaccount" {
    source = "../../module/2_storageaccount"
    strchildvars = var.strparentvars
    depends_on = [ module.rg ]
}

module "blobcontainer" {
    source = "../../module/3_blob"
    blobchildvars = var.blobparentvars
    depends_on = [ module.storageaccount ]
}

module "file" {
    source = "../../module/4_file"
    filechildvars = var.fileparentvars
    depends_on = [ module.storageaccount ]
}

module "table" {
    source = "../../module/5_table"
    tablechildvar = var.tableparentvar
    depends_on = [ module.storageaccount ]
}

module "queue" {
    source = "../../module/6_queue"
    queuechildvars = var.queueparentvars
    depends_on = [ module.storageaccount ]
}

# module "privateendpoint" {
#     source = "../../module/7_privateendpoint"
# }

# module "rbacroleassignment" {
#     source = "../../module/8_rbacroleassignment"
# }