variable "region" {
  type    = string
#  default = "us-east-1"
}

variable "env" {
  type    = string
  default = "staging"
}

variable "bucket_name" {
  type    = string
}

variable "cloudflare_email" {
  type = string
}
variable "cloudflare_api_token" {
  type = string
}

variable "cloudflare_domain" {
  type        = string
  description = "cloudflare domain"
}

variable "cloudflare_newsubdomain" {
  type        = string
  description = "cloudflare new subdomain"
}

variable "account_id" {
  type = string
  default = "395206648811"
}