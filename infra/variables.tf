#######################################################
# config variables
#######################################################

variable "aws_region" {
  type        = string
  description = "AWS default region (where to deploy your resources)"
}

#######################################################
# EC2 variables
#######################################################

variable "instance_type" {
  type        = string
  description = "EC2 instance type"
}

variable "ec2_tags" {
  type        = map(string)
  description = "EC2 resource tags"
}

variable "ami_id" {
  type        = string
  description = "EC2 AMI ID"
}

variable "subnet_id" {
  type        = string
  description = "Subnet to deploy your resources"
}

variable "public_ip" {
  type        = bool
  description = "Do you need public ip (true->yes,false->no)"
}

variable "key_pair_name" {
  type        = string
  description = "Key pair name"
}

variable "user_data" {
  type        = string
  description = "user data path"
}

##############################################
# Security group variables
##############################################

variable "sg_name" {
  type        = string
  description = "Security group name"
}

variable "sg_description" {
  type        = string
  description = "Security group description"
}

variable "vpc_id" {
  type        = string
  description = "VPC ID"
}

variable "sg_tags" {
  type        = map(string)
  description = "SG resource tags"
}

##############################################
# RDS variables
##############################################

variable "rds_identifier" {
  type        = string
  description = "RDS database identifier"
}

variable "rds_tags" {
  type        = map(string)
  description = "RDS database resource tags"
}

variable "rds_allocated_storage" {
  type        = number
  description = "RDS database storage in gigabytes"
}
variable "rds_engine" {
  type        = string
  description = "RDS database engine"
}

variable "rds_engine_version" {
  type        = string
  description = "RDS database engine version"
}

variable "rds_instance_class" {
  type        = string
  description = "RDS database instance type"
}

variable "rds_name" {
  type        = string
  description = "Name for the RDS database"
}

variable "rds_username" {
  type        = string
  description = "Username for connect to the RDS database"
}

variable "rds_password" {
  type        = string
  description = "Password for connect to the RDS database"
}

variable "rds_port" {
  type        = number
  description = "Port for connect to the RDS database"
}

variable "rds_skip_final_snapshot" {
  type        = bool
  description = "Do you want to skip the snapshot creation step at the destroy of the database? (true->yes,false->no)"
}

##############################################
# RDS variables
##############################################

variable "db_subnet_name" {
  type        = string
  description = "Name for the db subnet group"
}

variable "db_subnet_ids" {
  type        = set(string)
  description = "Subnets for deploy the dbs"
}

variable "db_subnet_tags" {
  type        = map(string)
  description = "DB subnet resource tags"
}
