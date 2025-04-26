resource "aws_s3_bucket" "transacction_data" {
  bucket = "${var.app_region}-${var.bucket}"
}
