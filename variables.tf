variable "r2_bucket_cors" {
  description = <<EOT
Map of r2_bucket_cors, attributes below
Required:
    - account_id
    - bucket_name
Optional:
    - jurisdiction
    - rules
EOT

  type = map(object({
    account_id   = string
    bucket_name  = string
    jurisdiction = optional(string)
    rules = optional(list(object({
      allowed = object({
        headers = optional(list(string))
        methods = list(string)
        origins = list(string)
      })
      expose_headers  = optional(list(string))
      id              = optional(string)
      max_age_seconds = optional(number)
    })))
  }))
}

