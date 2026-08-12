variable "appsync_apis" {
  description = <<EOT
Map of appsync_apis, attributes below
Required:
    - name
Optional:
    - owner_contact
    - region
    - tags
    - event_config (block):
        - auth_provider (optional, block):
            - auth_type (required)
            - cognito_config (optional, block):
                - app_id_client_regex (optional)
                - aws_region (required)
                - user_pool_id (required)
            - lambda_authorizer_config (optional, block):
                - authorizer_result_ttl_in_seconds (optional)
                - authorizer_uri (required)
                - identity_validation_expression (optional)
            - openid_connect_config (optional, block):
                - auth_ttl (optional)
                - client_id (optional)
                - iat_ttl (optional)
                - issuer (required)
        - connection_auth_mode (optional, block):
            - auth_type (required)
        - default_publish_auth_mode (optional, block):
            - auth_type (required)
        - default_subscribe_auth_mode (optional, block):
            - auth_type (required)
        - log_config (optional, block):
            - cloudwatch_logs_role_arn (required)
            - log_level (required)
EOT

  type = map(object({
    name          = string
    owner_contact = optional(string)
    region        = optional(string)
    tags          = optional(map(string))
    event_config = optional(list(object({
      auth_provider = optional(list(object({
        auth_type = string
        cognito_config = optional(list(object({
          app_id_client_regex = optional(string)
          aws_region          = string
          user_pool_id        = string
        })))
        lambda_authorizer_config = optional(list(object({
          authorizer_result_ttl_in_seconds = optional(number)
          authorizer_uri                   = string
          identity_validation_expression   = optional(string)
        })))
        openid_connect_config = optional(list(object({
          auth_ttl  = optional(number)
          client_id = optional(string)
          iat_ttl   = optional(number)
          issuer    = string
        })))
      })))
      connection_auth_mode = optional(list(object({
        auth_type = string
      })))
      default_publish_auth_mode = optional(list(object({
        auth_type = string
      })))
      default_subscribe_auth_mode = optional(list(object({
        auth_type = string
      })))
      log_config = optional(list(object({
        cloudwatch_logs_role_arn = string
        log_level                = string
      })))
    })))
  }))
}

