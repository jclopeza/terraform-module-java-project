# Creación de las subredes
# En las subredes que serán públicas, habilitamos la asignación automática de IP pública
resource "aws_subnet" "public" {
  vpc_id     = "${aws_vpc.vpc.id}"
  cidr_block = "192.168.1.0/24"
  availability_zone = "${data.aws_availability_zones.available.names[0]}"
  tags = {
    Name = "${var.project_name}-${var.environment}-public"
  }
  map_public_ip_on_launch = true
}
