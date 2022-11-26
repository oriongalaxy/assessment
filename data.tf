data "aws_subnet_ids" "subnets" {
    vpc_id = module.vpc.vpc_id   
    
}

data "aws_acm_certificate" "cert" {
  domain      = var.base_domain
  statuses    = ["ISSUED"]
  most_recent = true
}

# data "aws_route53_zone" "zone" {
#   name = var.base_domain
# }
