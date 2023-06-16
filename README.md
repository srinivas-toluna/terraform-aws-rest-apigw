# terraform-aws-rest-apigw
Toluna terraform module for AWS REST API Gateway and Gateway Elements (resources, methods, integrations, etc)

## Requirements
This module supports the following features:
API GW as well as APIs elements separately or together (one APIGW may have multiple APIs)

* Types of APIs 
    * REST API (api 1.0 as per AWS lingo)
    * HTTP API (api 2.0 as per AWS lingo) - phase 2 development

* API GW
    * policy document
    * policy
    * API GW account
    * IAM role for API
        * cloudwatch logs, and additional access policies
    * API deployment
    * API stage
    * public / private API GW

* Inputs for resource policy - eg: allowing traffic from list of VPCEs

* Integrations
    * lambda
        * lambda forwarder
    * http


## Parameters
```yaml
app_name
env_name
environment (contains color also)

disable_execute_api_endpoint

resource_name
child_resource_name
http_method
integration_type

```

## Toggles
