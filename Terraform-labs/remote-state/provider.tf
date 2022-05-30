provider "aws" {
  region     = "us-west-2"
}

provider "aws" {
  alias = "mumbai"
  region = "ap-south-1"
}