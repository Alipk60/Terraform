variable "aws_access_key" {
  default = ""
}
variable "aws_secret_key" {
  default = ""
}
variable "aws_token" {
  default = ""
}
variable "aws_region" {
  default = "us-east-1"
}
variable "amis" {
  type = map(string)
  default = {
    us-east-1 = "ami-04505e74c0741db8d"
  }
}
variable "private_key_name" {
  default = ""
}
variable "path_to_private_key" {
  default = ""
}
variable "path_to_public_key" {
  default = ""
}
variable "instance_username" {
  default = "ubuntu"
}
variable "aws_security_group" {
  default = "web_traffic"
}
variable "host_file" {
  default = "hosts"
}
