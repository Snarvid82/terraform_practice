# store state file remotely in an S3 bucket

terraform {
    backend "s3" {
        bucket = "aev-my-tf-state"
        key = "global/s3/terraform.tfstate"
        region = "eu-north-1"
    }
}
