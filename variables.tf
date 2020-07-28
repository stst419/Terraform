variable "aws_access_key" {
default = ""
}
variable "aws_secret_key" {
default = ""
}
variable "region" {
default = "us-east-1"
}
variable "instanceType" {
   default = "t2.micro"
}
variable "amis" {
  default = {
    "us-east-1"="ami-0eac7ca9a70303752"
}
}
