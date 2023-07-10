resource "aws_vpc" "vprofileapp_vpc" {
  cidr_block           = var.vpc_cidr_block
  enable_dns_hostnames = true
  enable_dns_support   = true

  tags = var.vpc_tags
}
