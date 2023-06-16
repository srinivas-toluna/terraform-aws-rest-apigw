# App variables
variable "app_name" {
    type = string
}

variable "env_name" {
    type = string
}

variable "environment" {
    type = string
}


# ----------- API GW variables
# variable "apigw_type" {
#     type = string
# }

variable "disable_execute_api_endpoint" {
    type = bool
    default = true
}


# ----------- API variables
# variable "api_name" {
#     type = string
# }

# variable "apigw_already_exists" {
#     type = bool
# }

# variable "apigw_id" {
#     type = string
# }

variable "resource_name" {
    type = string
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
}

variable "authorization" {
    type = string
    default = "NONE"
}

variable "api_key_required" {
    type = bool
    default = false
}


variable "uri" {
    type = string
}
