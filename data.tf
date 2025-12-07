data "aws_availability_zones" "available" {
  state = "available"
}

data "aws_vpc" "default" {
  default = true
}

data "aws_route_table" "main" { # aws main route table data source
  vpc_id = data.aws_vpc.default.id
  filter {
    Name = "association.main"
    value = true
  }
}