resource "proxmox_vm_qemu" "production" {
  name = var.var_vm_name
  target_node = var.var_target_node
  agent = 1
  define_connection_info = var.var_define_ssh
  vm_state = var.var_vm_state
  boot = var.var_boot
  memory = var.var_memory
  sockets = var.var_sockets
  cores = var.var_cores
  scsihw = var.var_scsihw

  vga {
    type = "std"
  }

  network {
    id = var.var_network_id
    model = var.var_network_model
    bridge = var.var_network_bridge
  }

  disks {
    ide {
      ide0 {
        cdrom {
          iso = var.var_disk_ide_iso
        }
      }
    }
    scsi {
      scsi0 {
        disk {
          size = var.var_disk_size
          storage = var.var_disk_storage
        }
      }
    }
  }
}