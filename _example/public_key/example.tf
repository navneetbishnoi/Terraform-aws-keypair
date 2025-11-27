
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
  public_key  = "ssh-exxxxxxxxxxxxxxxxxxxxxxxxxxxxxxRrsa xxxxxxxxxxxxn"
}
