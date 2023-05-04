terraform {
  required_version = "~> 0.13.5"

  backend "s3" {
    region   = "us-east-1"
    bucket   = "devops-challenge-pf"
    profile  = ""
    role_arn = ""
    encrypt  = "true"
    key      = "ec2-sem-count/terraform.tfsate"
  }
}