resource "aws_route53_record" "wordpress" {
  zone_id = "Z2JX68ZT77Y2OW"
  name    = "wordpress.murodbey.com"
  type    = "A"
  ttl     = "300"
  records = ["${aws_instance.web.public_ip}"]
}