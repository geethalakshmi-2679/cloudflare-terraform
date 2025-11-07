
output "dns_record_ids" {
  description = "IDs of the created DNS records."
  value       = { for name, record in cloudflare_record.dns : name => record.id }
}
