provider "aws"{
region = "us-east-1"
}

data "aws_ami" "amazon_linux" {
  most_recent = true

  filter {
    name   = "name"
    values = ["al2023-ami-2023.10.20260120.4-kernel-6.12-x86_64-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["137112412989"] 
}

resource "aws_instance" "ec2_instance"{
    ami = data.aws_ami.amazon_linux.id 
    instance_type = "t2.micro"
    key_name = "app-ssh-key"
    tags = {
        Name = var.ec2_name
    }
}
