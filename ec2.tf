
resource "aws_instance" "workspace_ec2_instances" {
  ami           =  "ami-09c813fb71547fc4f" 
  vpc_security_group_ids =  ["sg-06b1b57b365846051"]
  instance_type = lookup(var.instance_type, terraform.workspace)

   tags = {
    Name = "EC2-Workspaces" #Here 'Helloworld-db' is the ec2-instance name in AWS, not related to Terrafrom.
  }
}

