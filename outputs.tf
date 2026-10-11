output "r2_bucket_cors_account_id" {
  description = "Map of account_id values across all r2_bucket_cors, keyed the same as var.r2_bucket_cors except keys with no account_id are omitted"
  value       = { for k, v in cloudflare_r2_bucket_cors.r2_bucket_cors : k => v.account_id if v.account_id != null && length(v.account_id) > 0 }
}
output "r2_bucket_cors_bucket_name" {
  description = "Map of bucket_name values across all r2_bucket_cors, keyed the same as var.r2_bucket_cors except keys with no bucket_name are omitted"
  value       = { for k, v in cloudflare_r2_bucket_cors.r2_bucket_cors : k => v.bucket_name if v.bucket_name != null && length(v.bucket_name) > 0 }
}
output "r2_bucket_cors_jurisdiction" {
  description = "Map of jurisdiction values across all r2_bucket_cors, keyed the same as var.r2_bucket_cors except keys with no jurisdiction are omitted"
  value       = { for k, v in cloudflare_r2_bucket_cors.r2_bucket_cors : k => v.jurisdiction if v.jurisdiction != null && length(v.jurisdiction) > 0 }
}
output "r2_bucket_cors_rules" {
  description = "Map of rules values across all r2_bucket_cors, keyed the same as var.r2_bucket_cors except keys with no rules are omitted"
  value       = { for k, v in cloudflare_r2_bucket_cors.r2_bucket_cors : k => v.rules if v.rules != null && length(v.rules) > 0 }
}

