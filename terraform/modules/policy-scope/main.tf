locals {
  deployment_key = "${var.tenant_key}/${var.environment}/${var.ring}"
  scope = {
    tenant_key              = var.tenant_key
    environment             = var.environment
    ring                    = var.ring
    approved_for_production = var.approved_for_production
    deployable              = false
  }
}
