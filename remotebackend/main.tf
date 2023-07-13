resource "aws_instance" "Demo" {
  ami           = "ami-06ca3ca175f37dd66"
  count         = 1
  instance_type = "t2.micro"
  tags = {
    Name = "Test-dev-server"
    terraform = "true"
    Owner = "dev"
    env = "dev"
  }
}