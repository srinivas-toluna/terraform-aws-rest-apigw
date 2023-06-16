data "aws_iam_policy_document" "apigw_policy_doc" {
  statement {
    principals {
      type        = "AWS"
      identifiers = ["*"]
    }
    effect = "Allow"
    actions   = ["execute-api:Invoke"]
    # allow all resources, all methods of this API
    resources = ["${aws_api_gateway_rest_api.apigw.execution_arn}/*/*/*"]
  }
}

resource "aws_api_gateway_rest_api_policy" "public_apigw_policy" {
  rest_api_id = aws_api_gateway_rest_api.apigw.id
  policy      = data.aws_iam_policy_document.apigw_policy_doc.json
}
