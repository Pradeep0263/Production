variable "vpc_name" {
  description = "The Name tag of the existing VPC"
  type        = string
  default = "workshop-vpc"
}

variable "subnet_name" {
    description = "The Name tag of the existing subnet"
    type = string
    default = ""  
}

variable "route_table_name" {
    description = "The Name tag of the existing route-table"
    type = string
    default = ""
}

variable "igw_name" {
    description = "The Name tag of the existing Igw"
    type = string
    default = ""
  
}

variable "subnet_id" {
    description = "value of existing subnet id"
    type = string
    default = ""  
}