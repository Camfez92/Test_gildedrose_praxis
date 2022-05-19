# Creating Public Security Group
resource "aws_security_group" "ec2_public_security_group" {
  name        = var.sg_name
  description = var.sg_description
  vpc_id      = var.vpc_id

  ingress {
    from_port   = 8080 # Jenkins Port
    protocol    = "TCP"
    to_port     = 8080
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 8081 # Gildedrose API Port
    protocol    = "TCP"
    to_port     = 8081
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 4200 # Gildedrose Frontend Port
    protocol    = "TCP"
    to_port     = 4200
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 5432 # Postgres Port
    protocol    = "TCP"
    to_port     = 5432
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 22 # SSH Port
    protocol    = "TCP"
    to_port     = 22
    cidr_blocks = ["0.0.0.0/0"] # Host IP from group members
  }

  egress {
    from_port   = 0    # Any Outside Port
    protocol    = "-1" # Open all out rule
    to_port     = 0
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = var.sg_tags
}