resource "aws_subnet" "public_subnet_az1" {
  vpc_id                  = aws_vpc.vprofileapp_vpc.id
  cidr_block              = var.public_subnet_cidr_block_az1
  availability_zone       = "${var.region}a"
  map_public_ip_on_launch = true

  tags = merge(var.subnet_tags, {
    "Name" = var.subnet_tags["PublicSubnetAZ1"]
  })
}

resource "aws_subnet" "private_subnet_az1" {
  vpc_id                  = aws_vpc.vprofileapp_vpc.id
  cidr_block              = var.private_subnet_cidr_block_az1
  availability_zone       = "${var.region}a"
  map_public_ip_on_launch = false

  tags = merge(var.subnet_tags, {
    "Name" = var.subnet_tags["PrivateSubnetAZ1"]
  })
}

resource "aws_subnet" "public_subnet_az2" {
  vpc_id                  = aws_vpc.vprofileapp_vpc.id
  cidr_block              = var.public_subnet_cidr_block_az2
  availability_zone       = "${var.region}b"
  map_public_ip_on_launch = true

  tags = merge(var.subnet_tags, {
    "Name" = var.subnet_tags["PublicSubnetAZ2"]
  })
}

resource "aws_subnet" "private_subnet_az2" {
  vpc_id                  = aws_vpc.vprofileapp_vpc.id
  cidr_block              = var.private_subnet_cidr_block_az2
  availability_zone       = "${var.region}b"
  map_public_ip_on_launch = false

  tags = merge(var.subnet_tags, {
    "Name" = var.subnet_tags["PrivateSubnetAZ2"]
  })
}
