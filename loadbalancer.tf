resource "aws_lb" "lb" {
  name               = "${var.system_name}-${var.env}"
  internal           = var.internal
  load_balancer_type = var.load_balancer_type
  security_groups    = [aws_security_group.lb_sg.id]
  subnets            = module.vpc.public_subnets
}
/* resource "aws_lb_listener" "https_listener" {
  default_action {
    type = "redirect"
    redirect {
      port        = "443"
      protocol    = "HTTPS"
      status_code = "HTTP_301"
    }
  }

  protocol          = "HTTPS"
  load_balancer_arn = aws_lb.lb.arn
  port              = 443
  host = "google.com"
  ssl_policy        = var.ssl_policy
  certificate_arn   = data.aws_acm_certificate.cert.arn
}
*/
resource "aws_lb_listener" "http_listner" {
  load_balancer_arn = aws_lb.lb.arn
  port              = 80
  protocol          = "HTTP"

  default_action {
    type = "redirect"
    redirect {
      port        = "443"
      protocol    = "HTTPS"
      host = "google.com"
      status_code = "HTTP_301"
    }
  }
}


resource "aws_route53_zone" "prod" {
  name = "assmntlex.com"

  tags = {
    Environment = "prod"
  }
}

resource "aws_route53_record" "www-prod" {
  zone_id = aws_route53_zone.prod.zone_id
  name    = "www"
  type    = "CNAME"
  ttl     = 5

  weighted_routing_policy {
    weight = 10
  }
 
  set_identifier = "prod"
  records        = [aws_lb.lb.dns_name]
}
