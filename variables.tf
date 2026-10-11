variable "route53_traffic_policy_instances" {
  description = <<EOT
Map of route53_traffic_policy_instances, attributes below
Required:
    - hosted_zone_id
    - name
    - traffic_policy_id
    - traffic_policy_version
    - ttl
EOT

  type = map(object({
    hosted_zone_id         = string
    name                   = string
    traffic_policy_id      = string
    traffic_policy_version = number
    ttl                    = number
  }))
  validation {
    condition = alltrue([
      for k, v in var.route53_traffic_policy_instances : (
        length(v.traffic_policy_id) >= 1 && length(v.traffic_policy_id) <= 36
      )
    ])
    error_message = "must be between 1 and 36 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.route53_traffic_policy_instances : (
        v.traffic_policy_version >= 1 && v.traffic_policy_version <= 1000
      )
    ])
    error_message = "must be between 1 and 1000"
  }
  validation {
    condition = alltrue([
      for k, v in var.route53_traffic_policy_instances : (
        v.ttl <= 2147483647
      )
    ])
    error_message = "must be at most 2147483647"
  }
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

