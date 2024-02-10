locals {
  name = "${var.projectname}-${var.environment}"
  private_subnet_id = element(split(",", data.aws_ssm_parameter.private_subnet_ids.value), 0)
  current_time = formatdate("YYYY-MM-DD-hh-mm", timestamp())
}