# VPC Endpoints Security Group

resource "aws_security_group" "vpc_endpoints" {
  name_prefix = "${local.name_prefix}-vpc-endpoints-"
  vpc_id      = aws_vpc.main.id
  description = "Security group for VPC endpoints"

  # # Allow HTTPS from ECS tasks
  # ingress {
  #   description     = "HTTPS from ECS"
  #   from_port       = 443
  #   to_port         = 443
  #   protocol        = "tcp"
  #   cidr_blocks = [aws_vpc.main.cidr_block]
  # }

  # Allow HTTPS from VPC CIDR
  ingress {
    description = "HTTPS from VPC"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = [aws_vpc.main.cidr_block]
  }

  tags = var.mandatory_tags

  lifecycle {
    create_before_destroy = true
  }
}


 