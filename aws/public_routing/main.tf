resource "aws_route_table" "public" {
  vpc_id = var.vpc_id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = var.igw_id
  }
}

resource "aws_route_table_association" "public" {
  count          = local.num_azs
  subnet_id      = var.public_subnet_ids[count.index]
  route_table_id = aws_route_table.public.id
}
