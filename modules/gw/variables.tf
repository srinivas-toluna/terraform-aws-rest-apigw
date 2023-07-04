# App variables
variable "app_name" {
    type = string
    default = ""
}

variable "env_name" {
    type = string
    default = ""
}

variable "apigw_name_suffix" {
    type = string
    default = ""
}


# ----------- API GW variables
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


