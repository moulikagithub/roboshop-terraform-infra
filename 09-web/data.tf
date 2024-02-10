data "aws_ami" "centos8"{
    owners = ["973714476881"]
    most_recent      = true

    filter {
        name   = "name"
        values = ["Centos-8-DevOps-Practice"]
    }

    filter {
        name   = "root-device-type"
        values = ["ebs"]
    }

    filter {
        name   = "virtualization-type"
        values = ["hvm"]
    }
}
data "aws_ssm_parameter" "private_subnet_ids" {
  name = "/${var.projectname}/${var.environment}/private_subnet_ids"
}
data "aws_ssm_parameter" "vpc_id" {
  name = "/${var.projectname}/${var.environment}/vpc_id"
}
data "aws_ssm_parameter" "web_alb_sg_id" {
  name = "/${var.projectname}/${var.environment}/web_alb_sg_id"
}
data "aws_ssm_parameter" "web_sg_id" {
  name = "/${var.projectname}/${var.environment}/web_sg_id"
}
data "aws_ssm_parameter" "web_alb_listener_arn" {
  name = "/${var.projectname}/${var.environment}/web_alb_listener_arn"
}