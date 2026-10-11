output "route53_traffic_policy_instances_id" {
  description = "Map of id values across all route53_traffic_policy_instances, keyed the same as var.route53_traffic_policy_instances"
  value       = { for k, v in aws_route53_traffic_policy_instance.route53_traffic_policy_instances : k => v.id if v.id != null && length(v.id) > 0 }
}
output "route53_traffic_policy_instances_arn" {
  description = "Map of arn values across all route53_traffic_policy_instances, keyed the same as var.route53_traffic_policy_instances"
  value       = { for k, v in aws_route53_traffic_policy_instance.route53_traffic_policy_instances : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "route53_traffic_policy_instances_hosted_zone_id" {
  description = "Map of hosted_zone_id values across all route53_traffic_policy_instances, keyed the same as var.route53_traffic_policy_instances"
  value       = { for k, v in aws_route53_traffic_policy_instance.route53_traffic_policy_instances : k => v.hosted_zone_id if v.hosted_zone_id != null && length(v.hosted_zone_id) > 0 }
}
output "route53_traffic_policy_instances_name" {
  description = "Map of name values across all route53_traffic_policy_instances, keyed the same as var.route53_traffic_policy_instances"
  value       = { for k, v in aws_route53_traffic_policy_instance.route53_traffic_policy_instances : k => v.name if v.name != null && length(v.name) > 0 }
}
output "route53_traffic_policy_instances_traffic_policy_id" {
  description = "Map of traffic_policy_id values across all route53_traffic_policy_instances, keyed the same as var.route53_traffic_policy_instances"
  value       = { for k, v in aws_route53_traffic_policy_instance.route53_traffic_policy_instances : k => v.traffic_policy_id if v.traffic_policy_id != null && length(v.traffic_policy_id) > 0 }
}
output "route53_traffic_policy_instances_traffic_policy_version" {
  description = "Map of traffic_policy_version values across all route53_traffic_policy_instances, keyed the same as var.route53_traffic_policy_instances"
  value       = { for k, v in aws_route53_traffic_policy_instance.route53_traffic_policy_instances : k => v.traffic_policy_version if v.traffic_policy_version != null }
}
output "route53_traffic_policy_instances_ttl" {
  description = "Map of ttl values across all route53_traffic_policy_instances, keyed the same as var.route53_traffic_policy_instances"
  value       = { for k, v in aws_route53_traffic_policy_instance.route53_traffic_policy_instances : k => v.ttl if v.ttl != null }
}

