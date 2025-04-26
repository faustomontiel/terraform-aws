resource "aws_dynamodb_table" "transacctions_db" {
  name = "transacctions"
  billing_mode = "PAY_PER_REQUEST"
  hash_key = "transacctionID"

  attribute = {
    name = "transacctionID"
    type = "N"
  }

  attribute = {
    name = "description"
    type = "S"
  }
}
