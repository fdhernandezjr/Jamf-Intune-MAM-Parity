output "deployment_key" {
  description = "Non-sensitive logical scope identifier."
  value       = local.deployment_key
}

output "scope" {
  description = "Validated scope metadata only. This module creates no resources."
  value       = local.scope
}
