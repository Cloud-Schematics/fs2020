data "template_cloudinit_config" "cloud-init-apptier" {
  base64_encode = false
  gzip = false
  part {
    content = <<EOF
#cloud-config
packages:
  - nginx

EOF
  }
}