locals {
  resource_name = "${var.project_name}-${var.environment}"                 # here we are storing expression in variables we cannot able to store an expression and locals we cannot able to override, and count.index will not work in locals
  az_names      = slice(data.aws_availability_zones.available.names, 0, 2) # search first 2 elements from list in terraform, we need to use slice function in slice function starting index is inclusive and ending index is exclusive if you want to get first 2 elements we need to give start index as 0 and end index as 2 
}