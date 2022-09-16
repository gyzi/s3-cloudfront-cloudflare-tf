terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.30.0"
    }
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  # Configuration options
  region = var.region
}

provider "cloudflare" {
  api_token = var.cloudflare_api_token
}