resource "aws_instance" "ubuntu" {
  ami           = var.amis[var.aws_region]
  instance_type = "t2.micro"
  key_name      = var.private_key_name
  vpc_security_group_ids = ["${aws_security_group.web_traffic.id}"]


  connection {
    type        = "ssh"
    host        = self.public_ip
    private_key = file(var.path_to_private_key)
    user        = var.instance_username
  }


  provisioner "local-exec" {
    command = "echo ${element(aws_instance.ubuntu.*.public_ip, count.index)} >> ${var.host_file}"
  }
  count = 1

  provisioner "local-exec" {
    command = "sleep 120; ansible-playbook -u ubuntu --private-key ./project2.pem -i hosts playbook.yml"
  }

}

output "ec2_global_ips" {

  value = "${aws_instance.ubuntu.*.public_ip}"

}

