provider "elasticstack" {
  elasticsearch {
    api_key  = "TzZMNkQ0WUJQY2x5X2NfdmdwOHQ6V0c3ZGlfY1FUREtlOUx0eFlNelJ2UQ=="
    endpoints = ["https://elastic-europe.pvhcorp.com"]
  }
}

# module "Add-User" {
#   source = "./modules/elasticstack_elasticsearch_security_user"
# }

# module "Add-ApiKey" {
#   source = "./modules/elasticstack_elasticsearch_security_api_key"
# }

module "Add-Developer" {
  source = "./modules/elasticstack_elasticsearch_security_role_mapping"
}
