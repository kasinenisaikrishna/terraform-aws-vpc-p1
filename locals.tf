locals {
  resource_name = "${var.project_name}-${var.environment}" # here we are storing expression in variables we cannot able to store an expression and locals we cannot able to override, and count.index will not work in locals
}