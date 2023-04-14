resource "aws_instance" "web" {
ami = "ami-07d3a50bd29811cd1"
instance_type = "t2.micro"
 vpc_security_group_ids = [aws_security_group.tf-sg.id]


#one way to generate key create from console and add here ssh-22 port shuld be open
#if error occur run cmd "chmod 400 demo.pem"
 key_name = "demo"

  tags = {
    Name = "terra-linux"
   }
 }
