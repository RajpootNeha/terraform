provider "aws" {
    region = "ap-south-1"
  
}
resource "aws_instance" "example" { #"example" is resource name ,this is just for refrence 
    ami = "" #Specify an appropriate AMI ID
    instance_type = "t2.micro"
}