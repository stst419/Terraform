variable "aws_access_key" {
default = "AKIA23S7KTW6M6QFIARK"
}
variable "aws_secret_key" {
default = "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"
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
