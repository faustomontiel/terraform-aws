variable "app_region" {
  type = string
}

variable "bucket" {
 default = "products-transacctions-images" 
}

variable "ami" {
  type = string
}

variable "instance_type" {
  type = string
}
