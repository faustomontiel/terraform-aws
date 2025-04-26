resource "aws_instance" "ec2_transactions" {
  ami = var.ami
  instance_type = var.instance_type
  tags = {
    Name = "${var.app_region}-app-server"
  }
  depends_on = [aws_dynamodb_table.transacctions_db,
                aws_s3_bucket.transacction_data]

}
