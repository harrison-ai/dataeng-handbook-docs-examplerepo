terraform {
  backend "s3" {
    bucket  = "bucket-prod"
    key     = "publicapi/prod/tfstate"
    region  = "ap-southeast-2"
    profile = "profile-prod"
  }
}
