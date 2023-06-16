resource "aws_api_gateway_resource" "parent_resource" {
  rest_api_id = aws_api_gateway_rest_api.apigw.id
  # if first level resource, provide root_resource_id as parent
  parent_id   = aws_api_gateway_rest_api.apigw.root_resource_id
  path_part   = var.resource_name
}


resource "aws_api_gateway_resource" "child_resource" {
  # create only if child resource is requested
  count = (var.child_resource_name == "none") ? 0 : 1

  rest_api_id = aws_api_gateway_rest_api.apigw.id
  parent_id   = aws_api_gateway_resource.parent_resource.id
  path_part   = var.child_resource_name
}

