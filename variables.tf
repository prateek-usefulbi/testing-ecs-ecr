variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "ap-south-1"
}

variable "mandatory_tags" {
  description = "A map of mandatory tags to assign to the resource"
  type        = map(string)
  default = {
    EmployeeEmail      = "prateek.srivastava@usefulbi.com"
    TechnologyArea     = "DevOps"
    ProjectName        = "Exelexis"
    ClientName         = "Exelexis"
    ProjectTechLead    = "Hardik Soni"
    CreatedByTerrafrom = "Yes"
    Name               = "test"
    ResourceName       = "test"

  }

}


variable "vpc_name" {
  description = "Name of the VPC"
  type        = string
  default     = "exelixis-dev-ai-platform-replica"
}

variable "vpc_cidr" {
  description = "CIDR block for VPC"
  type        = string
  default     = "10.99.196.0/22"
}

variable "public_subnet_cidr" {
  description = "CIDR block for public subnet"
  type        = string
  default     = "10.99.196.0/24"
}

variable "private_subnet_cidrs" {
  description = "CIDR blocks for private subnets"
  type        = list(string)
  default     = ["10.99.197.0/24", "10.99.198.0/24", "10.99.199.0/24"]
}