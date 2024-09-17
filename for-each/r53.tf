resource "aws_route53_record" "terraform" {
  for_each = aws_instance.expense
  zone_id = var.zone_id
  #backend.manibhumaraju.online
  name            = each.key == "frontend" ? var.domain_name : "${each.key}.${var.domain_name}"
  type            = "A"
  ttl             = 1
  records         = each.key == "frontend" ? [each.value.public_ip] : [each.value.private_ip]
  allow_overwrite = true
}      