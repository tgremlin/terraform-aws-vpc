resource "aws_vpc" "main" {
  cidr_block       = var.vpc_cidr
  instance_tenancy = "default"

  tags = {
    Name = "main"
  }
}

resource "aws_subnet" "private" {
  for_each = var.azs

  vpc_id                  = aws_vpc.vpc.id
  availability_zone       = format("%s%s", local.region_name, each.key)
  cidr_block              = cidrsubnet(var.cidr_block, 8, each.value)
  map_public_ip_on_launch = false
}
