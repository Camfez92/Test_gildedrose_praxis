
module "deploy_ec2_and_rds" {
  source        = "../infra"
  aws_region    = "us-east-1"
  instance_type = "t2.small"
  ec2_tags      = { Name = "group6-ec2" }
  ami_id        = "ami-005de95e8ff495156"
  key_pair_name = "grupo6-key"
  user_data     = file("../infra/user_data.sh")

  subnet_id = "subnet-04e972f3a706c00e8"
  public_ip = true

  sg_name        = "group6-ec2"
  sg_description = "Allow http over port 80 and ssh over port 22"
  vpc_id         = "vpc-031420f7c99b1a0bd"
  sg_tags        = { Name = "group6-ec2" }

###############################
#RDS
###############################


db_subnet_name = "group6-db_subnet_group"
db_subnet_ids  = ["subnet-04e972f3a706c00e8", "subnet-0ee2351fb4338f1c7"]
db_subnet_tags = { Name = "group6-db_subnet_group" }
rds_identifier          = "group6-rds"
rds_allocated_storage   = 20
rds_engine              = "postgres"
rds_engine_version      = "14.1"
rds_instance_class      = "db.t3.micro"
rds_name                = "group6rds"
rds_username            = "postgres"
rds_password            = "group6-rds"
rds_tags                = { Name = "group6-rds" }
rds_port                = 5432
rds_skip_final_snapshot = true
}
