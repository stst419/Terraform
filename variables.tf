variable "aws_access_key" {
type = string
}
variable "aws_secret_key" {
type = string
}
variable "region" {
default = "us-east-1"
}
variable "instanceType" {
   type = string
}
variable "amis" {
  default = {
    "us-east-1"="ami-0eac7ca9a70303752"
}
}
