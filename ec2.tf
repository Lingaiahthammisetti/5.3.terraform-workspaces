
resource "aws_instance" "workspace" {
  ami           = "ami-041e2ea9402c46c32"
  vpc_security_group_ids = ["sg-0b35c64f66b53871f"]
  instance_type = lookup(var.instance_type,terraform.workspace)
}

