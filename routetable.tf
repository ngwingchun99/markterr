resource "aws_route_table" "publicroute" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name = "${var.tag_proj}-${var.tag_env}-Public"
    Proj = "${var.tag_proj}"
    env  = "${var.tag_env}"
  }

}

resource "aws_route_table" "privateroute1" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.private1.id
  }

  tags = {
    Name = "${var.tag_proj}-${var.tag_env}-ECSPrivate"
    Proj = "${var.tag_proj}"
    env  = "${var.tag_env}"
  }

}

resource "aws_route_table" "privateroute2" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.private2.id
  }

  tags = {
    Name = "${var.tag_proj}-${var.tag_env}-ECSPrivate"
    Proj = "${var.tag_proj}"
    env  = "${var.tag_env}"
  }

}


resource "aws_route_table" "publicroute2" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name = "${var.tag_proj}-${var.tag_env}-publicroute2"
    Proj = "${var.tag_proj}"
    env  = "${var.tag_env}"
  }

}