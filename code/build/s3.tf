provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "dev_s3" {
  bucket_prefix = "dev-"

  tags = {
    Environment          = "Dev"
    yor_name             = "dev_s3"
    yor_trace            = "d7d6fe02-db17-40fd-8860-64a3f8903d7c"
    git_commit           = "3b5e7ac73a1ad91490f7c83723cc3dac50c3f2b9"
    git_file             = "code/build/s3.tf"
    git_last_modified_at = "2024-09-12 13:31:00"
    git_last_modified_by = "88540356+codecloudmaster@users.noreply.github.com"
    git_modifiers        = "88540356+codecloudmaster"
    git_org              = "codecloudmaster"
    git_repo             = "prisma-cloud-devsecops-workshop"
  }
}

resource "aws_s3_bucket_ownership_controls" "dev_s3" {
  bucket = aws_s3_bucket.dev_s3.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}
