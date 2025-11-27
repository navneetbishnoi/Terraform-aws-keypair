
provider "aws" {
  region = "eu-west-1"
}

####----------------------------------------------------------------------------------
##  Module      : public KEY PAIR
####----------------------------------------------------------------------------------
module "public_keypair" {
  source = "../../"

  name        = "public-key"
  environment = "test"
  label_order = ["name", "environment"]
  public_key  = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIFoLb9ZYPCUIMtIWkT9rJUlIdJiw2VZ3C4V6LL+1Rrsa roshan@roshan"
}
