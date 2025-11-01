 backend "s3" {
    bucket = "roboshop-dev"
    key    = "multi-env-dev"
    region = "us-east-1"
    use_lockfile = true  
    encrypt = true
  }