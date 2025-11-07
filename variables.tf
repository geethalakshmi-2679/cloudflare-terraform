variable "cloudflare_api_token" {
  description = "Cloudflare API token with DNS edit permissions"
  type        = string
  sensitive   = true
}

variable "zone_id" {
  description = "Cloudflare Zone ID for your domain"
  type        = string
}

variable "dns_records" {
  description = "List of DNS records to manage"
  type = list(object({
    name    = string
    type    = string
    value   = string
    ttl     = number
    proxied = bool
  }))
}
