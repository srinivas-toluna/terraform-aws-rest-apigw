data "aws_iam_policy_document" "public_apigw_policy_doc" {
  statement {
    sid = ""
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

data "aws_iam_policy_document" "private_apigw_policy_doc" {

  statement {
      sid = ""
      effect = "Deny"
      principals {
        type        = "AWS"
        identifiers = ["*"]
      }
      actions   = ["execute-api:Invoke"]
      resources = [ "${aws_api_gateway_rest_api.apigw.execution_arn}/*/*/*" ]
      condition {
        test     = "ForAllValues:StringNotEquals"
        variable = "aws:sourceVpce"
        values =  var.allowed_vpce_ids
      }
  }
  statement {
    sid = ""
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
  policy      = (var.apigw_type == "PRIVATE") ? data.aws_iam_policy_document.private_apigw_policy_doc.json : data.aws_iam_policy_document.public_apigw_policy_doc.json
}
