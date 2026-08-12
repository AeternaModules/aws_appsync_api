output "appsync_apis_id" {
  description = "Map of id values across all appsync_apis, keyed the same as var.appsync_apis"
  value       = { for k, v in aws_appsync_api.appsync_apis : k => v.id if v.id != null && length(v.id) > 0 }
}
output "appsync_apis_api_arn" {
  description = "Map of api_arn values across all appsync_apis, keyed the same as var.appsync_apis"
  value       = { for k, v in aws_appsync_api.appsync_apis : k => v.api_arn if v.api_arn != null && length(v.api_arn) > 0 }
}
output "appsync_apis_api_id" {
  description = "Map of api_id values across all appsync_apis, keyed the same as var.appsync_apis"
  value       = { for k, v in aws_appsync_api.appsync_apis : k => v.api_id if v.api_id != null && length(v.api_id) > 0 }
}
output "appsync_apis_dns" {
  description = "Map of dns values across all appsync_apis, keyed the same as var.appsync_apis"
  value       = { for k, v in aws_appsync_api.appsync_apis : k => v.dns if v.dns != null && length(v.dns) > 0 }
}
output "appsync_apis_event_config" {
  description = "Map of event_config values across all appsync_apis, keyed the same as var.appsync_apis"
  value       = { for k, v in aws_appsync_api.appsync_apis : k => v.event_config if v.event_config != null && length(v.event_config) > 0 }
}
output "appsync_apis_name" {
  description = "Map of name values across all appsync_apis, keyed the same as var.appsync_apis"
  value       = { for k, v in aws_appsync_api.appsync_apis : k => v.name if v.name != null && length(v.name) > 0 }
}
output "appsync_apis_owner_contact" {
  description = "Map of owner_contact values across all appsync_apis, keyed the same as var.appsync_apis"
  value       = { for k, v in aws_appsync_api.appsync_apis : k => v.owner_contact if v.owner_contact != null && length(v.owner_contact) > 0 }
}
output "appsync_apis_region" {
  description = "Map of region values across all appsync_apis, keyed the same as var.appsync_apis"
  value       = { for k, v in aws_appsync_api.appsync_apis : k => v.region if v.region != null && length(v.region) > 0 }
}
output "appsync_apis_tags" {
  description = "Map of tags values across all appsync_apis, keyed the same as var.appsync_apis"
  value       = { for k, v in aws_appsync_api.appsync_apis : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "appsync_apis_tags_all" {
  description = "Map of tags_all values across all appsync_apis, keyed the same as var.appsync_apis"
  value       = { for k, v in aws_appsync_api.appsync_apis : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}
output "appsync_apis_waf_web_acl_arn" {
  description = "Map of waf_web_acl_arn values across all appsync_apis, keyed the same as var.appsync_apis"
  value       = { for k, v in aws_appsync_api.appsync_apis : k => v.waf_web_acl_arn if v.waf_web_acl_arn != null && length(v.waf_web_acl_arn) > 0 }
}
output "appsync_apis_xray_enabled" {
  description = "Map of xray_enabled values across all appsync_apis, keyed the same as var.appsync_apis"
  value       = { for k, v in aws_appsync_api.appsync_apis : k => v.xray_enabled if v.xray_enabled != null }
}

