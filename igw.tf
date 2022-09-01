resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name        = "testing igw"
    environment = "${var.tag_env}"
  }
}
