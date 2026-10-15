variable "environment" {
  description = "Deployment environment label. This module never deploys resources."
  type        = string
  validation {
    condition     = contains(["sandbox", "pilot", "production"], var.environment)
    error_message = "environment must be sandbox, pilot, or production."
  }
}

variable "tenant_key" {
  description = "Opaque non-sensitive tenant key; do not use real tenant IDs or hostnames in public examples."
  type        = string
  validation {
    condition     = can(regex("^[a-z][a-z0-9-]{2,39}$", var.tenant_key))
    error_message = "tenant_key must be a lowercase slug, 3-40 characters."
  }
}

variable "ring" {
  description = "Target rollout ring."
  type        = string
  validation {
    condition     = contains(["lab", "it-pilot", "early-adopters", "general"], var.ring)
    error_message = "Invalid rollout ring."
  }
}

variable "approved_for_production" {
  description = "Explicit policy intent; not a replacement for CI environment approvals."
  type        = bool
  default     = false
}
