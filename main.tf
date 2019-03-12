resource "aws_key_pair" "key" {
  key_name   = "key"
  public_key = "${file("~/.ssh/id_rsa.pub")}"
}

resource "aws_instance" "consul" {
  ami                    = "${var.ami}"
  instance_type          = "${var.instance_type}"
  key_name               = "${aws_key_pair.key.id}"
  vpc_security_group_ids = ["${var.security_group_id}"]
  count                  = "${var.count}"
  private_ip             = "172.31.16.1${count.index + 1}"
  associate_public_ip_address = true
  tags {
    Name = "consul-server${count.index + 1}"
  }

  connection {
    user        = "ubuntu"
    private_key = "${file("~/.ssh/id_rsa")}"
  }

  provisioner "file" {
    source      = "scripts"
    destination = "/tmp"
  }

  provisioner "remote-exec" {
    inline = [
      "sudo bash /tmp/scripts/install_consul.sh"
    ]
  }
  provisioner "remote-exec" {
    inline = [
      "sudo bash /tmp/scripts/start_consul.sh"
    ]
  }
  provisioner "remote-exec" {
    inline = [
      "sudo bash /tmp/scripts/keyvalue.sh"
    ]
  }

}
output "server_id" {
  value = "${join(", ", aws_instance.consul.*.id)}"
}

output "server_ip" {
  value = "${join(", ", aws_instance.consul.*.public_ip)}"
}

