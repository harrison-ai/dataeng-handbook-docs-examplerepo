terraform {
  backend "s3" {
    bucket  = "production-annalise-ai-terraform"
    key     = "publicapi/dev/tfstate"
    region  = "ap-southeast-2"
    profile = "annalise-sandpit"
  }
}
