resource "aws_key_pair" "Instance_key" {
  key_name   = "Instance-key"
  public_key = file("${path.module}/id_rsa.pub")
}