/*terraform {
  backend "s3" {
    bucket = "terraform-lab-backend1"
    key = "tfstatefiles/demo.tfstate"
    region = "us-west-2"
    dynamodb_table = "terraform-lock-demo"
  }
}

resource "time_sleep" "wait_150_secs" {
  create_duration = "150s"
}
*/