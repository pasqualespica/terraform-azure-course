provider "aws" {

  
}

variable "AWS_REGION" {
    type = string
    # default = "dajeeee"
}

variable "AMIS" {
    type = map(string)
    default = {
        eu-west-1 = "my ami"
    }
}

#          type          name
resource "aws_instance" "example1" {
    # attribute value
    ami = var.AMIS[var.AWS_REGION]
    instance_type = "t2.micro"
}
resource "aws_instance" "example2" {
    # attribute value
    ami = var.AMIS[var.AWS_REGION]
    instance_type = "t2.small"
}
resource "aws_instance" "example3" {
    # attribute value
    ami = var.AMIS[var.AWS_REGION]
    instance_type = "t2.micro"
}

