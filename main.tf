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

# Create an Internet Gateway
resource "aws_internet_gateway" "gw" {
    vpc_id = aws_default_vpc.default.id

    tags = {
        Name = "VPC Internet Gateway"
    }

}

# Create private app subnet 1
resource "aws_subnet" "app_private_subnet1" {
    vpc_id = aws_default_vpc.default.id
    cidr_block = "172.31.3.0/24"
    availability_zone = "eu-north-1a"
    tags = {
        Name = "Private App Subnet 1"
    }
}


# Create private app subnet 2
resource "aws_subnet" "app_private_subnet2" {
    vpc_id = aws_default_vpc.default.id
    cidr_block = "172.31.4.0/24"
    availability_zone = "eu-north-1b"
    tags = {
        Name = "Private App Subnet 2"
    }
}


# Create private database subnet 1
resource "aws_subnet" "db_private_subnet1" {
    vpc_id = aws_default_vpc.default.id
    cidr_block = "172.31.5.0/24"
    availability_zone = "eu-north-1b"
    tags = {
        Name = "Private DB Subnet 1"
    }
}


# Create private database subnet 2
resource "aws_subnet" "db_private_subnet2" {
    vpc_id = aws_default_vpc.default.id
    cidr_block = "172.31.6.0/24"
    availability_zone = "eu-north-1b"
    tags = {
        Name = "Private DB Subnet 2"
    }
}


# Create EC2 instances


# Create security groups


# Create private route table


# Associate the private subnet with the private route table


