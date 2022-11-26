output "vpc_id" {
  description = "The ID of the VPC"
  value       = module.vpc.vpc_id
}

output "https_to_lb" {
    value = "https://${aws_lb.lb.dns_name}"
}

output "subnetid" {
    value = module.vpc.public_subnets
}
