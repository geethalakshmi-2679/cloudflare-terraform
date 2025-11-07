variable "zone_id" {
  description = "The Zone ID of the Cloudflare domain."
  type        = string
}

variable "dns_records" {
  description = "List of DNS records to create."
  type = list(object({
    name    = string
    type    = string
    value   = string
    ttl     = number
    proxied = bool
  }))
}
