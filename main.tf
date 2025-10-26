# Create S3

resource "aws_s3_bucket" "s3_for_state_backend" {
  bucket = "aev-my-tf-state"
}

# Create default VPC
resource "aws_default_vpc" "default" {
    tags = {
        Name = "Default VPC"
    }
}

# Create Public Subnet 1
resource "aws_subnet" "public_subnet1" {
    vpc_id = aws_default_vpc.default.id
    cidr_block = "172.31.1.0/24"
    availability_zone = "eu-north-1a"
    map_public_ip_on_launch = true

    tags = {
        Name = "Public Subnet1"

    }
}

# Create Public Subnet 2
resource "aws_subnet" "public_subnet2" {
    vpc_id = aws_default_vpc.default.id
    cidr_block = "172.31.2.0/24"
    availability_zone = "eu-north-1b"
    map_public_ip_on_launch = true

    tags = {
        Name = "Public Subnet2"

    }
}

resource "aws_internet_gateway" "gw" {
    vpc_id = aws_default_vpc.default.id

    tags = {
        Name = "VPC Internet Gateway"
    }

}