terraform {
  required_version = ">= 1.6.0, < 2.0.0"
}

module "policy_scope" {
  source                  = "../../modules/policy-scope"
  environment             = "sandbox"
  tenant_key              = "example-lab"
  ring                    = "lab"
  approved_for_production = false
}

output "scope" {
  value = module.policy_scope.scope
}
