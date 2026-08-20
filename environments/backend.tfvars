resource_group_name   = "sko-tfstate-rg"
storage_account_name  = "skotfstateaccount"
container_name        = "tfstate"

# Cosmos DB for locking
cosmosdb_account_name = "tfstate-locks"
cosmosdb_database     = "tfstate"
cosmosdb_container    = "locks"
