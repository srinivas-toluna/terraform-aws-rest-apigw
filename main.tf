locals {
  app_name = var.app_name
}

module "gw" {
  count = (var.create_apigw == true) ? 1 : 0
  
  source = "./modules/gw"

  app_name = var.app_name
  env_name = var.env_name
  apigw_name_suffix = var.apigw_name_suffix

  apigw_type = var.apigw_type
  allowed_vpce_ids = var.allowed_vpce_ids
  disable_execute_api_endpoint = var.disable_execute_api_endpoint
}

module "api" {
  count = (var.create_api == true) ? 1 : 0
  
  source = "./modules/api"

  apigw_id = var.apigw_id
  app_name = var.app_name
  env_name = var.env_name
  apigw_name_suffix = var.apigw_name_suffix

  resource_name = var.resource_name
  child_resource_name = var.child_resource_name
  http_method = var.http_method
  integration_type = var.integration_type

  authorization = var.authorization
  api_key_required = var.api_key_required
  lambda_arn = var.lambda_arn
}