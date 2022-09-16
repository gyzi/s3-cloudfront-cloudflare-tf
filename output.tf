output "cloudfront_url" {
  value = aws_cloudfront_distribution.s3_distribution.domain_name
}
output "record" {
  value = cloudflare_record.record.hostname
}

output "bucket" {
  value = aws_s3_bucket.b.bucket_regional_domain_name
}

output "metadata" {
  value     = cloudflare_record.record.metadata
  sensitive = true
}

