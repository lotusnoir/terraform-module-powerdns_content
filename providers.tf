terraform {
  required_version = "1.9.7"
  required_providers {
    powerdns = {
      source = "pan-net/powerdns"
    }
  }
}

#provider "powerdns" {
#  server_url = "https://api_url"
#  api_key = "xxxxxxxxxxxx"
#  insecure_https = true
#}
