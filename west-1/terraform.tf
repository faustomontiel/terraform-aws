terraform {
  backend "s3" {
    bucket = "transacctionsprods-terraform-state"
    key = "west-1/terraform.tfstate"
    region = "us-west-1" 
    dynamodb_table = "terraform-locks"
  }
}

