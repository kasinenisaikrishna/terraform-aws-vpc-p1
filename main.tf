resource "aws_vpc" "main" {
    cidr_block       = var.vpc_cidr
    enable_dns_hostnames = var.enable_dns_hostnames # default it is false but we need it as true and this variable is extra one copied from argument reference

  tags = merge(
    var.common_tags,
    var.vpc_tags,
    {
        Name = local.resource_name
    }
  )
}