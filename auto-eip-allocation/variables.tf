variable "ami-oregon" {
    type = string
    default = "ami-0395649fbe870727e" # AL2023 AMI for us-west-2
}

variable "key-name" {
    type = string
    default = "myKey"
}

variable "vpc" {
    type = string
    default = "	vpc-c198e5b9"
}

variable "eip" {
    type = string
    default ="eipalloc-09684daa11ea05abc"
}

variable "instance-type" {
    type = string
    default = "t2.micro"
}