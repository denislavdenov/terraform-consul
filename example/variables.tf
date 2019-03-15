variable "aws_access_key" {}

variable "aws_secret_key" {}

variable "instance_type" {}

variable "subnet_id" {}

variable "security_group_id" {
  type = "list"
}
