output "public_ip_front" {
  value = "${aws_instance.front.public_ip}"
}
output "aws_region" {
  value = "${var.aws_region}"
}
output "project_name" {
  value = "${var.project_name}"
}
output "environment" {
  value = "${var.environment}"
}
output "private_key_path" {
  value = "${var.private_key_path}"
}