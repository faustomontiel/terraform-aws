module "west_2" {
  source = "../modules/products-app"
  app_region = "us-west-2"
  ami = "ami-05572e392e80aee89"
  instance_type = "t2.micro"
}

