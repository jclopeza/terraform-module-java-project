# Creación de las instancias
resource "aws_instance" "front" {
  ami = "${data.aws_ami.ubuntu.id}"
  instance_type = "${var.instance_type}"
  key_name = "${aws_key_pair.akp.id}"
  subnet_id = "${aws_subnet.public.id}"
  vpc_security_group_ids = [
      "${aws_security_group.allow_22.id}",
      "${aws_security_group.allow_8080.id}"
    ]
  tags = {
    Name = "${var.project_name}-${var.environment}-front"
  }
}
