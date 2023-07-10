resource "aws_internet_gateway" "my_igw" {
  vpc_id = aws_vpc.vprofileapp_vpc.id

  tags = var.igw_tags
}
