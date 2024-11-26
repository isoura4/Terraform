terraform {
    required_providers {
      cloudflare = {
        source  = "cloudflare/cloudflare"
        version = "4.46.0"
      }
    }
  }

  resource "cloudflare_record" "pelican_panel_cname" {
    name    = "pelican-panel"
    value   = "isou.ovh"
    type    = "CNAME"
    ttl     = 1
    proxied = true
  }