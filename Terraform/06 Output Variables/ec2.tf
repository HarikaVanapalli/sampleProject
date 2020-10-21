provider "aws" {
  profile = "default"
  region = "us-east-1"
}

resource "aws_instance" "ec2example" {
  ami = "ami-00eb20669e0990cb4"
  instance_type = "t2.micro"

  provisioner "local-exec" {
    command = "echo ${aws_instance.ec2example.public_ip} > ip_address.txt"
  }

  tags = {
      Name = "EC2withterraform"
  }
}