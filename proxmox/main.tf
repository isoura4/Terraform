terraform {
    required_providers {
      proxmox = {
        source  = "Telmate/proxmox"
        version = "2.9.14"
      }
    }
  }


resource "proxmox_lxc" "pelican_panel" {
      target_node = "pve001"
      hostname    = "pelican-panel"
      ostemplate  = "local:vztmpl/debian-12-standard_12.7-1_amd64.tar.zst"
      password    = "NiElS2005@"
      cores       = 1
      memory      = 512
      swap        = 512
      rootfs {
        size     = "5G"
        storage  = "local-lvm"
      }
      network {
        name   = "eth0"
        bridge = "vmbr0"
        ip     = "dhcp"
        hwaddr = "bc:24:11:d9:f4:39"
      }
    }
