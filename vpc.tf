resource "aws_vpc" "ganithi" {
    cidr_block = var.cidr_block  
    enable_dns_hostnames = true
    tags = {
        Name = "${var.vpc_name}"
    }
}


resource "aws_internet_gateway" "igw" {
    vpc_id = aws_vpc.ganithi.id
    tags = {
        Name = "${var.vpc_sai}-igw"
    }
  
}
