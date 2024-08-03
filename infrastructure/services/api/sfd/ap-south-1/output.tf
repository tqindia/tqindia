"output" "cloudwatch_log_group_name" {
  "value" = "${module.safgs.cloudwatch_log_group_name}"
}

"output" "fdd" {
  "value" = "${module.input.fdd}"
}