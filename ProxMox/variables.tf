variable "var_pm_api_url" {
  type = string
}

variable "var_pm_api_token_id" {
  type = string
}

variable "var_pm_api_token_secret" {
  type = string
}

variable "var_vm_name" {
  type = string
}

variable "var_target_node" {
  type = string
}

variable "var_define_ssh" {
    type = bool
    default = false
}

variable "var_vm_state" {
    type = string
}

variable "var_boot" {
  type = string
}

variable "var_memory" {
  type = number
}

variable "var_sockets" {
    type = number
}

variable "var_cores" {
  type = number
}

variable "var_scsihw" {
  type = string
}

variable "var_network_id" {
  type = number
}

variable "var_network_model" {
  type = string
  default = "virtio"
}

variable "var_network_bridge" {
  type = string
  default = "vmbr1"
}

variable "var_disk_ide_iso" {
  type = string
}

variable "var_disk_size" {
  type = string
  default = "20G"
}

variable "var_disk_storage" {
  type = string
  default = "AllVMSSD"
}