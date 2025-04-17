resource "aws_internet_gateway" "new_igw" {
    vpc_id = data.aws_vpc.new_vpc.id
    tags = {
      Name = "ws-igw"
    }
}

resource "aws_security_group" "new_sg" {
    name = "ws-sg"
    description = "Allow specific TLS inbound traffic and all outbound traffic"
    vpc_id = data.aws_vpc.new_vpc.id
    tags = {
      Name = "ws-sg"
    }
}

resource "aws_vpc_security_group_ingress_rule" "http_rule" {
  security_group_id = aws_security_group.new_sg.id
  cidr_ipv4         = data.aws_vpc.new_vpc.cidr_block
  from_port         = 80
  ip_protocol       = "tcp"
  to_port           = 80
}

resource "aws_vpc_security_group_ingress_rule" "ssh_rule" {
  security_group_id = aws_security_group.new_sg.id
  cidr_ipv4         = data.aws_vpc.new_vpc.cidr_block
  from_port         = 22
  ip_protocol       = "tcp"
  to_port           = 22
}
