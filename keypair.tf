#one way to generate key create from console and add here ssh-22 port shuld be open
#if error occur run cmd "chmod 400 demo.pem"
#  key_name = "demo"

# 2nd way via terraform
resource "aws_key_pair" "demo1" {
  key_name   = "demo1"
  public_key = file("/home/ec2-user/HELLO/pubkey.pub")
}

# public key can be accessed by private key .pem
resource "tls_private_key" "rsa" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

#crete & save the key to local file
resource "local_file" "tfkey" {
  content  = tls_private_key.rsa.private_key_pem
  filename = "tfkey"
}
