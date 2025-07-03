terraform {
  backend "s3" {
    bucket         = "my-tf-state-tf-bucket"
    key            = "dev/eks.tfstate"
    region         = "us-east-1"
    dynamodb_table = "tf-lock-table"
    encrypt        = true
  }
}

