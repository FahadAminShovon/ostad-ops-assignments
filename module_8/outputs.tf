output "ssh_private_key_path" {
  value       = local_file.ssh_private_key_pem.filename
  description = "Path to the generated SSH private key"
}
