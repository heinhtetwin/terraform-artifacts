resource "aws_instance" "web-test" {
  ami           = var.image_id
  instance_type = var.instance_type
  for_each      = var.webservers
  tags = {
    Name = each.value
  }
}