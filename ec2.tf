resource "aws_instance" "new_instance" {
    ami = "ami-080b1a55a0ad28c02"
    instance_type = "t3.medium"
    associate_public_ip_address = true
    availability_zone = "ap-south-1a"
    #vpc_security_group_ids = [ aws_security_group.new_sg.id ]
    tags = {
      Name = "K8s"
    }
}