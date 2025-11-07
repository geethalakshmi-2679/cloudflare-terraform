# output "dns_records_created" {
#   value = [for r in cloudflare_record.dns : r.hostname]
# }

output "dns_records_created" {
  value = module.cloudflare.dns_record_ids
}
