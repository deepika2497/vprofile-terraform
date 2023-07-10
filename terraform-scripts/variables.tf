variable "region" {
  description = "AWS region"
  default     = "ap-south-1"
}

variable "vpc_cidr_block" {
  description = "CIDR block for VPC"
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidr_block_az1" {
  description = "CIDR block for public subnet in AZ1"
  default     = "10.0.1.0/24"
}

variable "private_subnet_cidr_block_az1" {
  description = "CIDR block for private subnet in AZ1"
  default     = "10.0.2.0/24"
}

variable "public_subnet_cidr_block_az2" {
  description = "CIDR block for public subnet in AZ2"
  default     = "10.0.3.0/24"
}

variable "private_subnet_cidr_block_az2" {
  description = "CIDR block for private subnet in AZ2"
  default     = "10.0.4.0/24"
}

variable "vpc_tags" {
  description = "Tags for VPC"
  type        = map(string)
  default     = {
    Name = "vprofileapp_vpc"
  }
}

variable "subnet_tags" {
  description = "Tags for subnets"
  type        = map(string)
  default     = {
    PublicSubnetAZ1   = "PublicSubnetAZ1"
    PrivateSubnetAZ1  = "PrivateSubnetAZ1"
    PublicSubnetAZ2   = "PublicSubnetAZ2"
    PrivateSubnetAZ2  = "PrivateSubnetAZ2"
  }
}

variable "public_sg_tags" {
  description = "Tags for public security group"
  type        = map(string)
  default     = {
    Name = "vprofileapp_Publicsg"
  }
}

variable "private_sg_tags" {
  description = "Tags for private security group"
  type        = map(string)
  default     = {
    Name = "vprofileapp_Privatesg"
  }
}

variable "route_table_tags" {
  description = "Tags for route table"
  type        = map(string)
  default     = {
    Name = "vprofileapp_PublicRouteTable"
  }
}

variable "igw_tags" {
  description = "Tags for internet gateway"
  type        = map(string)
  default     = {
    Name = "vprofileapp_ig"
  }
}

variable "instance_tags" {
  type = map(string)
  default = {
    Name        = "vprofile_terraform"
    Environment = "Production"
    Project     = "MyProject"
  }
}

variable "instance_type" {
  type    = string
  default = "t2.micro"  # Replace with your desired instance type
}
