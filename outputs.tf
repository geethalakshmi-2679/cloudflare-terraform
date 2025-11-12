
output "dns_records_created" {
  value = module.cloudflare.dns_record_ids
}
