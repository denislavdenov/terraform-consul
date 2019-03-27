module "sofia" {
  source = "github.com/denislavdenov/terraform-aws-consul"

  instance_type     = "${var.instance_type}"
  subnet_id         = "${var.subnet_id}"
  security_group_id = "${var.security_group_id}"
  aws_access_key    = "${var.aws_access_key}"
  aws_secret_key    = "${var.aws_secret_key}"
  region            = "${var.region}"
}

output "server_ips" {
  value = "${module.sofia.server_ips}"
}

output "client_ips" {
  value = "${module.sofia.client_ips}"
}
