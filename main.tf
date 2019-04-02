module "sofia" {
  source = "github.com/denislavdenov/terraform-aws-consul"

  instance_type     = "${var.instance_type}"
  subnet_id         = "${var.subnet_id}"
  security_group_id = "${var.security_group_id}"
  region            = "${var.region}"
  dcname            = "${var.dcname["dc1"]}"
  IP                = "${var.IP_dc1}"
  subnet_id         = "${var.subnet_id["dc1"]}"
}

module "varna" {
  source = "github.com/denislavdenov/terraform-aws-consul"

  instance_type     = "${var.instance_type}"
  subnet_id         = "${var.subnet_id}"
  security_group_id = "${var.security_group_id}"
  region            = "${var.region}"
  dcname            = "${var.dcname["dc2"]}"
  IP                = "${var.IP_dc2}"
  subnet_id         = "${var.subnet_id["dc2"]}"
}

output "server_ips_sofia" {
  value = "${module.sofia.server_ips}"
}

output "client_ips_sofia" {
  value = "${module.sofia.client_ips}"
}

output "server_ips_varna" {
  value = "${module.varna.server_ips}"
}

output "client_ips_varna" {
  value = "${module.varna.client_ips}"
}
