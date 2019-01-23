provider "nutanix" {}

resource "nutanix_virtual_machine" "vm1" {
  count = ${var.num_of_vms}
  name        = "roger-test-${count.index}"

  num_vcpus_per_socket = 1
  num_sockets          = 1
  memory_size_mib      = 2048
}
