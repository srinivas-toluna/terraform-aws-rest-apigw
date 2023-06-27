output "apigw_id" {
    value = can(module.gw[0]) ? module.gw[0].apigw_id : ""
    # value = module.gw.aws_api_gateway_rest_api.apigw.id
}