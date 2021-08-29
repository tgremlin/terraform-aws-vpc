variable "vpc_cidr" {
  type = string
  default = "10.0.0.0/16"
}

variable "azs" {
 type = map(number)
 default = {
   a = 1
   b = 2
   c = 3
 }
}
