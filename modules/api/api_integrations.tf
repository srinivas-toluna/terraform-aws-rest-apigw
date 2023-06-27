resource "aws_api_gateway_integration" "integ" {
  rest_api_id             = var.apigw_id
  resource_id             = aws_api_gateway_method.http_method.resource_id
  http_method             = aws_api_gateway_method.http_method.http_method

  integration_http_method = "POST"
  type                    = var.integration_type
  uri = replace("arn:aws:apigateway:us-east-1:lambda:path/2015-03-31/functions/${var.lambda_arn}/invocations", "/invocations", ":live/invocations")
}


