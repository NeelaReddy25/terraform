resource "aws_route53_record" "expense" {
    count = length(var.instance_names)
    zone_id = var.zone_id
    name = local.record_name
    type = "A"
    ttl = 1
    records = local.record_value  
    #if records already exists
    allow_overwrite = true  
}