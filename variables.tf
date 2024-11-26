variable "pm_user" {
    description = "Proxmox user"
    type        = string
  }

  variable "pm_password" {
    description = "Proxmox password"
    type        = string
    sensitive   = true
  }

  variable "cloudflare_email" {
    description = "Cloudflare email"
    type        = string
  }

  variable "cloudflare_api_key" {
    description = "Cloudflare API key"
    type        = string
    sensitive   = true
  }
  