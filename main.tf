terraform {
    required_providers {
      proxmox = {
        source  = "Telmate/proxmox"
        version = "2.9.14"
      }
      cloudflare = {
        source  = "cloudflare/cloudflare"
        version = "4.46.0"
      }
    }
  }

  provider "proxmox" {
    pm_api_url  = "https://192.168.5.1:8006/api2/json"
    pm_user     = var.pm_user
    pm_password = var.pm_password
    pm_tls_insecure = true
  }

  provider "cloudflare" {
    email = var.cloudflare_email
    api_key = var.cloudflare_api_key
  }
