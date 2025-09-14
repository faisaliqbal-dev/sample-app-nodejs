resource "aws_instance" "production_1_instance" {
  ami                    = var.ami
  instance_type          = var.instance_type
  key_name               = aws_key_pair.Instance_key.key_name
  vpc_security_group_ids = [aws_security_group.TF-sec-grp.id]
  tags = {
    Name = "Jenkins-server"
  }
}

resource "aws_instance" "production_2_instance" {
  ami                    = var.ami
  instance_type          = var.instance_type
  key_name               = aws_key_pair.Instance_key.key_name
  vpc_security_group_ids = [aws_security_group.TF-sec-grp.id]
  tags = {
    Name = "Sonarqube-server"
  }
}
