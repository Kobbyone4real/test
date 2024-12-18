resource "aws_lightsail_instance" "server" {
    name ="dev-server"
    blueprint_id ="ubuntu_18_04"
    bundle_id = "medium_1_0"
    availability_zone = "us-east-1a"
  user_data = <<-EOF
              #!/bin/bash
              sudo yum update -y
              sudo yum install -y httpd
              sudo systemctl start httpd
              sudo systemctl enable httpd
              echo "<h1>Apache is successfully installed on the Lightsail instance!</h1>" > /var/www/html/index.html
              EOF

   
}