data "aws_availability_zones" "available" {
  state = "available"
}

data "aws_vpc" "default" {
  default = true
}

data "aws_route_table" "main" { # aws main route table data source
  vpc_id = data.aws_vpc.default.id
  filter { # to get main route table id 
    name   = "association.main"
    values = ["true"]
  }
}