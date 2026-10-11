resource "cloudflare_r2_bucket_cors" "r2_bucket_cors" {
  for_each = var.r2_bucket_cors

  account_id   = each.value.account_id
  bucket_name  = each.value.bucket_name
  jurisdiction = each.value.jurisdiction
  rules        = each.value.rules
}

