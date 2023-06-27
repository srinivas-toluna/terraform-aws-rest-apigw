# terraform-aws-rest-apigw
Toluna terraform module for AWS REST API Gateway -OR- API Elements (resources, methods, integrations, etc). 

## Description 
* Normal usage:
    * create API GW 
    * use the above created API GW ID to create multiple APIs
    * create deployment and stage to push the API

## Features
This module supports the following features:

* Types of APIs 
    * REST API (api 1.0 as per AWS terminology)
    * Gateway can be public / private (i.e., REGIONAL, or PRIVATE)

* API GW
    * policy document
    * policy
    * API GW account
    * IAM role for API
        * cloudwatch logs, and additional access policies
    * Inputs for resource policy - eg: allowing traffic from list of VPCEs

* API
    * Resources
        * optional child resource
    * Methods
        * http
    * Integrations
        * lambda
        * http

This module doesn't support creation of stage and deployment. 
Developer needs to do it spearately after creating GW and APIs.

## Parameters
Either create_apigw OR create_api should be true (but not both) in any call to this module.
```yaml
create_apigw (bool)
app_name
env_name
disable_execute_api_endpoint

create_api (bool)
resource_name
child_resource_name
http_method
integration_type

```

