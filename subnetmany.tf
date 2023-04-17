resource "aws_subent" "terra-subnet"
count =3
availibilty_zone = 
cidr_blocks = [0.0.{count.index}.0/24]
