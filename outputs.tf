output "master_private_ip" {
  value = module.jenkins.master_private_ip
}

output "agent_private_ips" {
  value = module.jenkins.agent_private_ips
}

output "jenkins_login_url" {
  value = "http://${oci_load_balancer.JenkinsLB.ip_addresses[0]}:${var.lb_http_port}/"
}

output "generated_ssh_private_key" {
  value = tls_private_key.public_private_key_pair.private_key_pem
}

output "bastion_public_ip" {
  value = data.oci_core_vnic.bastion_VNIC1.public_ip_address
}
