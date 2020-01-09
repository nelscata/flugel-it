variable "AWS_REGION" {
  default = "us-east-1"
}

# Keys will be used by ansible for Instance Configuration
variable "PATH_TO_PRIVATE_KEY" {
  default = "mykey"
}

variable "PATH_TO_PUBLIC_KEY" {
  default = "mykey.pub"
}

#Image available for the region selected
variable "AMIS" {
  type = map(string)
  default = {
    #Ubuntu server Image - free tier for this demo
    us-east-1 = "ami-09f9d773751b9d606"
  }
}
