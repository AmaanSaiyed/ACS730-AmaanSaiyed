#!/bin/bash
yum -y update
yum -y install httpd
myip=`curl http://169.254.169.254/latest/meta-data/local-ipv4`
echo "<h1>Welcome to ACS730 ${prefix}!</h1><h2>My private IP is $myip</h2><h2>Built by Amaan Saiyed using Terraform!</h2><img src='https://amaantempd.s3.us-east-1.amazonaws.com/amaanprojarc.png' alt='Prject Architecture'>"  >  /var/www/html/index.html
sudo systemctl start httpd
sudo systemctl enable httpd