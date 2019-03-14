module "sofia" {
  source = "github.com/denislavdenov/terraform-aws-consul/sofia"

  instance_type     = "${var.instance_type}"
  security_group_id = "${var.security_group_id}"
  aws_access_key    = "${var.aws_access_key}"
  aws_secret_key    = "${var.aws_secret_key}"
}

output "server_ip1" {
  value = "${module.sofia.server_ip1}"
}

output "server_ip2" {
  value = "${module.sofia.server_ip2}"
}

output "server_ip3" {
  value = "${module.sofia.server_ip3}"
}

output "client_ip1" {
  value = "${module.sofia.client_ip1}"
}
