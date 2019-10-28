# Creamos una clave en AWS para acceder a las instancias EC2
resource "aws_key_pair" "akp" {
  key_name   = "${var.project_name}-${var.environment}"
  public_key = "${file(var.public_key_path)}"
}
