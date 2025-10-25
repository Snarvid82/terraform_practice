# Create S3

resource "aws_s3_bucket" "s3_for_state_backend" {
  bucket = "aev-my-tf-state"
}