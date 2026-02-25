resource "tls_private_key" "example" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "aws_key_pair" "generated_key" {
  key_name   = var.key_name
  public_key = tls_private_key.example.public_key_openssh
}

resource "aws_instance" "example" {
    ami           = "ami-06fa3f12191aa3337"  # Specify an appropriate AMI ID
    instance_type = "t2.micro"
    key_name      = aws_key_pair.generated_key.key_name
}
 