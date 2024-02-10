variable "common_tags" {
   default = {
     Project     = "roboshop"
     Environment = "dev"
     Terraform   = "true"
  }
}

variable "tags" {
   default = {
     Component = "payment"
  }
}

variable "projectname" {
  default = "roboshop"
}
variable "environment" {
  default = "dev"
}

variable "zone_name" {
  default = "kalidindi.cloud"
}