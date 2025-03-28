terraform {
  backend "s3" {
    bucket = "my-bucket"
    key    = "ENVIRONMENT.tfstate"
    region = "us-east-1"
    use_lockfile = true
  }
}
