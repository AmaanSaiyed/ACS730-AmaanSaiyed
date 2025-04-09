terraform {
  backend "s3" {
    bucket = "amaantempd"
    key    = "alb/terraform.tfstate"
    region = "us-east-1"
  }
}
