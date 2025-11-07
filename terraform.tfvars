cloudflare_api_token = "F384DlkNxN6wzZpu0l5Tn4_ZdQnqWD-mlhq7BmMu"
zone_id              = "c471e72395813c667710162faaa145cc"

dns_records = [
  {
    name    = "abcdemo"
    type    = "A"
    value   = "192.168.1.10"
    ttl     = 1
    proxied = false
  },
  {
    name    = "api"
    type    = "CNAME"
    value   = "abcdemo.com"
    ttl     = 1
    proxied = true

dns_records = [
  {
    name    = "tf-test"
    type    = "A"
    value   = "8.8.8.8"
    ttl     = 1
    proxied = false
  }
]
  }
]
