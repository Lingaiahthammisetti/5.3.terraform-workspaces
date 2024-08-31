
resource "aws_instance" "workspace" {
  ami           = "ami-041e2ea9402c46c32"
  vpc_security_group_ids =  ["sg-0b8c28fdd8f99cc89"]
  instance_type = lookup(var.instance_type,terraform.workspace)

   tags = {
    Name = "Terraform workspace" #Here 'Helloworld-db' is the ec2-instance name in AWS, not related to Terrafrom.
  }
}

