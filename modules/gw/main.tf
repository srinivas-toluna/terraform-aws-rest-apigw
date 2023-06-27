resource "aws_api_gateway_rest_api" "apigw" {

  name        = "apigw-${var.app_name}-${var.env_name}"
  description = "Created by Terraform on ${timestamp()}"
  endpoint_configuration {
    types = [ var.apigw_type ]
  }

  disable_execute_api_endpoint = var.disable_execute_api_endpoint
}


# resource "aws_api_gateway_deployment" "apigw_deployment" {
#   rest_api_id = aws_api_gateway_rest_api.apigw.id
#   triggers = {
#     redeployment = sha1(jsonencode([
#       aws_api_gateway_rest_api.apigw.body,
      
#     ]))
#   }

#   lifecycle {
#     create_before_destroy = true
#   }
#   # depends_on = [
#   #   aws_api_gateway_rest_api.public_apigw,
#   #   aws_api_gateway_rest_api_policy.public_apigw_policy,
#   # ]
# }

# resource "aws_api_gateway_stage" "stage" {

#   deployment_id = aws_api_gateway_deployment.apigw_deployment.id
#   rest_api_id   = aws_api_gateway_rest_api.apigw.id
#   stage_name    = var.env_name
#   description = "${var.env_name} updated on ${timestamp()}"
# }

# resource "aws_api_gateway_method_settings" "method_settings" {

#   rest_api_id = aws_api_gateway_rest_api.apigw.id
#   stage_name  = aws_api_gateway_stage.stage.stage_name
#   method_path = "*/*"
#   settings {
#     logging_level = "INFO"
#     data_trace_enabled = true
#     metrics_enabled = true
#   }
# }

