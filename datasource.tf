data "aws_vpc" "new_vpc" {
  filter {
    name   = "tag:Name"
    values = [var.vpc_name]
  }
}

data "aws_subnet" "new_subnets" {
    id = var.subnet_id
  }

data "aws_route_table" "new_route_T" {
     subnet_id = var.subnet_id 
  }

/*data "aws_ami" "amzn_linux" {
  most_recent = true

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-gp2"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["273354665338"] # Amazon's official account
}*/
