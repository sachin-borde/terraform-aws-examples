resource "aws_eip" "nat" {
  domain = "vpc"
  tags   = merge(var.tags, { Name = "nat-eip" })
}

resource "aws_nat_gateway" "nat" {
  allocation_id = aws_eip.nat.id
  subnet_id     = aws_subnet.public[0].id

  tags = merge(var.tags, { Name = "main-nat-gw" })

  depends_on = [aws_internet_gateway.gw]
}
