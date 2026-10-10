output "account_regions_id" {
  description = "Map of id values across all account_regions, keyed the same as var.account_regions"
  value       = { for k, v in aws_account_region.account_regions : k => v.id if v.id != null && length(v.id) > 0 }
}
output "account_regions_account_id" {
  description = "Map of account_id values across all account_regions, keyed the same as var.account_regions"
  value       = { for k, v in aws_account_region.account_regions : k => v.account_id if v.account_id != null && length(v.account_id) > 0 }
}
output "account_regions_enabled" {
  description = "Map of enabled values across all account_regions, keyed the same as var.account_regions"
  value       = { for k, v in aws_account_region.account_regions : k => v.enabled if v.enabled != null }
}
output "account_regions_opt_status" {
  description = "Map of opt_status values across all account_regions, keyed the same as var.account_regions"
  value       = { for k, v in aws_account_region.account_regions : k => v.opt_status if v.opt_status != null && length(v.opt_status) > 0 }
}
output "account_regions_region_name" {
  description = "Map of region_name values across all account_regions, keyed the same as var.account_regions"
  value       = { for k, v in aws_account_region.account_regions : k => v.region_name if v.region_name != null && length(v.region_name) > 0 }
}

