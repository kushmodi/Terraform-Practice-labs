terraform {
  cloud {
    organization = "einfochipspvtltd"

    workspaces {
      name = "remote-backend-demo"
      hostname = "app.terraform.io"
    }
  }
}