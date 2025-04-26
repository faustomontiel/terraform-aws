module "west_1" {
  source = "../modules/products-app/"
  app_region = "us-west-1"
  ami = "ami-0ce45259f491c3d4f"
  instance_type = "t2.micro"
}

