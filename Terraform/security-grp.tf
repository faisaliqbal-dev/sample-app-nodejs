resource "aws_security_group" "TF-sec-grp" {
  name        = "allow_tls"
  description = "Allow HTTP, HTTPS, SSH for WordPress EC2"
  
  tags = {
    Name = "TF-sec-grp"
  }
}


resource "aws_vpc_security_group_ingress_rule" "Jenkins" {
  security_group_id = aws_security_group.TF-sec-grp.id
  cidr_ipv4         = "0.0.0.0/0"
  from_port         = 8080
  ip_protocol       = "tcp"
  to_port           = 8080
}
# Allow SSH
resource "aws_vpc_security_group_ingress_rule" "allow_ssh" {
  security_group_id = aws_security_group.TF-sec-grp.id
  cidr_ipv4         = "0.0.0.0/0"
  from_port         = 22
  ip_protocol       = "tcp"
  to_port           = 22
}
resource "aws_vpc_security_group_ingress_rule" "allow_http" {
  security_group_id = aws_security_group.TF-sec-grp.id
  cidr_ipv4         = "0.0.0.0/0"
  from_port         = 80
  ip_protocol       = "tcp"
  to_port           = 80
}

resource "aws_vpc_security_group_ingress_rule" "allow_sonarqube" {
  security_group_id = aws_security_group.TF-sec-grp.id
  cidr_ipv4         = "0.0.0.0/0"
  from_port         = 9000
  ip_protocol       = "tcp"
  to_port           = 9000
}


resource "aws_vpc_security_group_egress_rule" "allow_all_traffic_ipv4" {
  security_group_id = aws_security_group.TF-sec-grp.id
  cidr_ipv4         = "0.0.0.0/0"
  ip_protocol       = "-1" # semantically equivalent to all ports
}

resource "aws_vpc_security_group_egress_rule" "allow_all_traffic_ipv6" {
  security_group_id = aws_security_group.TF-sec-grp.id
  cidr_ipv6         = "::/0"
  ip_protocol       = "-1" # semantically equivalent to all ports
}