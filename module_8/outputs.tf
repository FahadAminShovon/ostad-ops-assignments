output "ssh_private_key_path" {
  value       = local_file.ssh_private_key_pem.filename
  description = "Path to the generated SSH private key"
}

output "bastion_public_ip" {
  value       = aws_instance.bastion.public_ip
  description = "Bastion host public IP"
}

output "public_ec2_public_ip" {
  value       = aws_instance.public.public_ip
  description = "Public EC2 public IP"
}

output "private_ec2_private_ip" {
  value       = aws_instance.private.private_ip
  description = "Private EC2 private IP"
}
