# resource "cloudflare_record" "dns" {
#   for_each = { for record in var.dns_records : record.name => record }

#   zone_id = var.zone_id
#   name    = each.value.name
#   type    = each.value.type
#   content = each.value.value  
#   ttl     = each.value.ttl
#   proxied = each.value.proxied
# }



terraform {
  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "~> 4.0"
    }
  }

  # Optional: Remote backend (uncomment if using Terraform Cloud or S3)
  # backend "remote" {
  #   organization = "your-org"
  #   workspaces {
  #     name = "cloudflare-dns"
  #   }
  # }
}

provider "cloudflare" {
   api_token = var.cloudflare_api_token
 }


module "cloudflare" {
  source  = "./modules/cloudflare"
   zone_id = var.zone_id
  dns_records = [
    {
      name    = "www"
      type    = "A"
      value   = "192.0.2.1"
      ttl     = 1
      proxied = true
    },
    {
      name    = "api"
      type    = "CNAME"
      value   = "abcdemo.com"
      ttl     = 1
      proxied = false
    },
    {
      name    = "tf-test"
      type    = "A"
      value   = "8.8.8.8"
      ttl     = 1
      proxied = false
    },
    {
      name    = "_google-site-verification"
      type    = "TXT"
      value   = "google-site-verification=abc123xyz"
      ttl     = 3600
      proxied = false
    }
  ]
}
  
