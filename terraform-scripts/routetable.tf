resource "aws_route_table" "public_route_table" {
  vpc_id = aws_vpc.vprofileapp_vpc.id

  tags = var.route_table_tags
}

resource "aws_route" "public_subnet_route_az1" {
  route_table_id         = aws_route_table.public_route_table.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.my_igw.id
}

resource "aws_route" "public_subnet_route_az2" {
  route_table_id         = aws_route_table.public_route_table.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.my_igw.id
}
