terraform {
  required_providers {
    proxmox = {
      source = "Telmate/proxmox"
      version = "3.0.1-rc6"
    }
  }
}

provider "proxmox" {
  # Configuration options
  pm_api_url = var.var_pm_api_url
  pm_api_token_id = var.var_pm_api_token_id
  pm_api_token_secret = var.var_pm_api_token_secret
  pm_tls_insecure = true  
}
