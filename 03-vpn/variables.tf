variable "common_tags" {
  default = {
    Project     = "roboshop"
    Environment = "dev"
    Terraform   = "true"
  }
}

variable "projectname" {
  default = "roboshop"
}
variable "environment" {
  default = "dev"
}