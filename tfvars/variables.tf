variable "ami_id" {
    type = string   # data type mentioned here
 default = "ami-09c813fb71547fc4f"   # variable
 # if you dont give default then it will ask dynamically 
}

variable "project" {
  default = "roboshop"
}

variable "environment" {
  type = string
}


variable "instance_type" {

  type = string
}