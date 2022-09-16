data "cloudflare_zone" "mydomain" {
  name = var.cloudflare_domain
}

resource "cloudflare_record" "record" {
  zone_id = data.cloudflare_zone.mydomain.id
  name    = var.cloudflare_newsubdomain
  value   = aws_cloudfront_distribution.s3_distribution.domain_name
  #var.cloudflare_cname
  type    = "CNAME"
  proxied = true
}