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