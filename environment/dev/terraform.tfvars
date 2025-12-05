rgparentvars = {
    rg1 = "East US"
}
strparentvars = {
    storageaccountsatish1 = {
        resource_group_name = "rg1"
        location            = "East US"
        account_tier        = "Standard"
        account_replication_type = "LRS"
    }
}
blobparentvars = {
    container1 = {
        storage_account_name = "storageaccountsatish1"
    }
}
fileparentvars = {
    fileshare1 = {
        storage_account_name = "storageaccountsatish1"
    }
}
tableparentvar = {
    table1 = {
        storage_account_name = "storageaccountsatish1"
    }
}
queueparentvars = {
    queue1 = {
        storage_account_name = "storageaccountsatish1"
    }
}
