# !/bin/bash
yum update -y
yum install -y httpd.x86_64
systemctl start httpd.service
systemctl enable httpd.service
echo “HELLO WORLD from $(hostname -f).Created by USERDATA in Terraform. NAMASTE” (arrow_symbol) /var/www/html/index.html
