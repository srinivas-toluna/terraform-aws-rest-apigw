resource "aws_api_gateway_integration" "integ" {
  rest_api_id             = aws_api_gateway_rest_api.apigw.id
  resource_id             = aws_api_gateway_method.http_method.resource_id
  http_method             = aws_api_gateway_method.http_method.http_method
  integration_http_method = var.http_method
  type                    = var.integration_type
  # uri                     = replace(aws_lambda_function.http_intg_lambda_wrapper_for_aristotle.invoke_arn, "/invocations", ":live/invocations")
  uri = replace("arn:aws:apigateway:us-east-1:lambda:path/2015-03-31/functions/${var.uri}/invocations", "/invocations", ":live/invocations")
}


