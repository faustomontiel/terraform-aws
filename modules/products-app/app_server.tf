resource "aws_instance" "ec2_transactions" {
  ami = var.ami
  instance_type = var.instance_type
  
  key_name                    = aws_key_pair.web.key_name
  vpc_security_group_ids      = [aws_security_group.ssh_access.id]
  
  tags = {
    Name = "${var.app_region}-app-server"
  }
  depends_on = [aws_dynamodb_table.transacctions_db,
                aws_s3_bucket.transacction_data]

}
resource "aws_key_pair" "web" {
  key_name   = "web-key-ec2"
  public_key = file("~/.ssh/web-key.pub")
}

resource "aws_security_group" "ssh_access" {
  name        = "ssh-access-ec2"
  description = "Allow SSH access"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}


