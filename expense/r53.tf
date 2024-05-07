resource "aws_route53_record" "expense" {
    zone id = aws_route53_zone.primary.zone_id 
    name = "www.example.com"
    type = "A"
    tt1 = 1
    records = [aws_eip.1b.public_ip]
}