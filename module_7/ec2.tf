data "aws_ami" "ubuntu_2404" {
  owners      = ["099720109477"]
  most_recent = true
  filter {
    name   = "name"
    values = ["*ubuntu-noble-24.04-amd64-server-*"]
  }

  filter {
    name   = "architecture"
    values = ["x86_64"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }
}

data "aws_subnets" "selected" {
  filter {
    name   = "vpc-id"
    values = [var.vpc_id]
  }
}

resource "aws_security_group" "ssh_anywhere" {
  name        = "tf-assignment-ssh-anywhere"
  description = "SSH access from anywhere (assignment only)"
  vpc_id      = var.vpc_id

  ingress {
    description = "SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    description = "All outbound"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = var.tags
}

resource "aws_instance" "assignment_ec2" {
  ami                    = data.aws_ami.ubuntu_2404.id
  instance_type          = var.instance_type
  subnet_id              = data.aws_subnets.selected.ids[0]
  vpc_security_group_ids = [aws_security_group.ssh_anywhere.id]
  key_name               = var.key_name

  tags = var.tags
}
