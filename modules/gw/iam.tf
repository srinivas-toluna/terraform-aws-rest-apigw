# resource "aws_iam_role" "apigw-role" {
#   name = "apigw-role-${var.app_name}-${var.environment}-cloudwatch-logs"

#   assume_role_policy = <<EOF
# {
#   "Version": "2012-10-17",
#   "Statement": [
#     {
#       "Action": "sts:AssumeRole",
#       "Principal": {
#         "Service": ["apigateway.amazonaws.com"]
#       },
#       "Effect": "Allow",
#       "Sid": ""
#     }
#   ]
# }
# EOF

# }

# resource "aws_iam_role_policy_attachment" "attach-cloudwatch-policy-for-apigw" {
#   role       = aws_iam_role.apigw-role.name
#   policy_arn = "arn:aws:iam::aws:policy/service-role/AmazonAPIGatewayPushToCloudWatchLogs"
# }

# resource "aws_iam_role_policy_attachment" "attach-lambda-full-access-policy-public" {
#   role       = aws_iam_role.apigw-role.name
#   policy_arn = "arn:aws:iam::aws:policy/AWSLambda_FullAccess"
# }

# resource "aws_api_gateway_account" "public-apigw-account" {
#   cloudwatch_role_arn = aws_iam_role.apigw-role.arn
# }

