# Creamos un nuevo Internet Gateway y lo asociamos a nuestra VPC
resource "aws_internet_gateway" "igw" {
  vpc_id = "${aws_vpc.vpc.id}"
  tags = {
    Name = "${var.project_name}-${var.environment}-igw"
  }
}
