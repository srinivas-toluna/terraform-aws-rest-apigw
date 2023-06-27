resource "aws_api_gateway_method" "http_method" {

  rest_api_id   = var.apigw_id
  resource_id   = ( (var.child_resource_name == "none") ?  
             aws_api_gateway_resource.parent_resource.id : aws_api_gateway_resource.child_resource[0].id )

  http_method   = var.http_method
  authorization = var.authorization
  api_key_required = var.api_key_required
}