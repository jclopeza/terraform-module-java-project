# Creación de security groups para asociar a las instancias
resource "aws_security_group" "allow_8080" {
  vpc_id      = "${aws_vpc.vpc.id}"
  name        = "allow_8080"
  description = "Allow 8080 inbound traffic"
  ingress {
    from_port       = 8080
    to_port         = 8080
    protocol        = "tcp"
    cidr_blocks     = ["0.0.0.0/0"]
  }
  egress {
    from_port       = 0
    to_port         = 0
    protocol        = "-1"
    cidr_blocks     = ["0.0.0.0/0"]
  }
  tags = {
    Name = "allow_8080"
  }
}
resource "aws_security_group" "allow_22" {
  vpc_id      = "${aws_vpc.vpc.id}"
  name        = "allow_22"
  description = "Allow 22 inbound traffic"
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks     = ["0.0.0.0/0"]
  }
  egress {
    from_port       = 0
    to_port         = 0
    protocol        = "-1"
    cidr_blocks     = ["0.0.0.0/0"]
  }
  tags = {
    Name = "allow_22"
  }
}