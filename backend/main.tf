resource "aws_s3_bucket" "terraform_state" {
  bucket = "transacctionsprods-terraform-state"

  tags = {
    Name        = "Terraform State Bucket Transactions"
    Environment = "dev"
  }
}



resource "aws_dynamodb_table" "terraform_locks" {
  name         = "terraform-locks"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }

  tags = {
    Name        = "Terraform Locks Table"
    Environment = "dev"
  }
}

