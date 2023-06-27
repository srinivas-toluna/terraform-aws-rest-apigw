# to be provided when only APIs are to be created, and APIGW is already available
variable "apigw_id" {
    type = string
}

variable "app_name" {
    type = string
}

variable "env_name" {
    type = string
}

variable "resource_name" {
    type = string
    default = ""
}

variable "child_resource_name" {
    type = string
    default = "none"
}

variable "http_method" {
    type = string
    # valid values: ANY, GET, POST, ...
    default   = "ANY"
}

variable "integration_type" {
    type = string
    # valid values: AWS_PROXY (that is LAMBDA), HTTP, ...
    default = ""
}

variable "authorization" {
    type = string
    default = "NONE"
}

variable "api_key_required" {
    type = bool
    default = false
}

variable "lambda_arn" {
    type = string
    default = ""
}
