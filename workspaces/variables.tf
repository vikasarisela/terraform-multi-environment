variable "ami_id" {
    type = string   # data type mentioned here
 default = "ami-09c813fb71547fc4f"   # variable
 # if you dont give default then it will ask dynamically 
}

variable "project" {
  default = "roboshop"
}

variable "environment" {
  type = map
  default = {
    dev = "dev"
    prod = "prod"
  }
}


variable "instance_type" {
  type = map
  default = {
    dev = "t3.micro"
    prod = "t3.small"
  }
}