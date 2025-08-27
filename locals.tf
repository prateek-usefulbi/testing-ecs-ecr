locals {
  name_prefix = "exelixis"
  common_tags = var.mandatory_tags
  private_subnet_ids = aws_subnet.private[*].id

}