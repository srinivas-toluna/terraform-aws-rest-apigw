variable "create_apigw" {
    type = bool
    default = false
}

# App variables
variable "app_name" {
    type = string
    default = ""
}

variable "env_name" {
    type = string
    default = ""
}



# REGIONAL or PRIVATE
variable "apigw_type" {
    type = string
    default = ""
}

variable "allowed_vpce_ids" {
    type = list(string)
    default = []
}


variable "disable_execute_api_endpoint" {
    type = bool
    default = true
}


# ----------- API variables
variable "create_api" {
    type = bool
    default = false
}

variable "apigw_id" {
    type = string
    default = ""
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
    default = ""
}

variable "integration_type" {
    type = string
    default = ""
}

variable "lambda_arn" {
    type = string
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


variable "uri" {
    type = string
    default = ""
}
