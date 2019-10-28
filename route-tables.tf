# Creación de las tablas de rutas. Por defecto se crea y se asocia una a la VPC
# que ya hemos creado. Pero creamos una nueva para darle salida a internet
resource "aws_route_table" "public" {
  vpc_id = "${aws_vpc.vpc.id}"
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.igw.id}"
  }
  tags = {
    Name = "${var.project_name}-${var.environment}-public"
  }
}

# Asociamos las subredes a las tablas de rutas
resource "aws_route_table_association" "public-public" {
  subnet_id      = "${aws_subnet.public.id}"
  route_table_id = "${aws_route_table.public.id}"
}