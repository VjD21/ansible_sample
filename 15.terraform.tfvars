aws_region           = "us-east-2"
vpc_cidr             = "10.37.0.0/16"
vpc_name             = "ansible-vpc"
key_name             = "jkey"
public_subnet_cidrs  = ["10.37.1.0/24", "10.37.2.0/24", "10.37.3.0/24"]    #List
private_subnet_cidrs = ["10.37.10.0/24", "10.37.20.0/24", "10.37.30.0/24"] #List
azs                  = ["us-east-2a", "us-east-2b", "us-east-2c"]          #List
environment          = "production"
instance_type = {
  development = "t3.small"
  testing     = "t3.small"
  production  = "t3.small"
}
amis = {
  us-east-2 = "ami-0d9a665f802ae6227" # Canonical, Ubuntu, 22.04 LTS, amd64 focal image
}
projid    = "ansible-with-terraform"
imagename = "ami-0d9a665f802ae6227"
