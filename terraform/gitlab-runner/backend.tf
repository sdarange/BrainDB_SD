terraform {
  backend "s3" {
    bucket       = "braindb-remote-backend-bucket"
    region       = "ap-south-1"
    key          = "gitlab-runner-tf/terraform.tfstate"
    encrypt      = true
    use_lockfile = true
  }
}
