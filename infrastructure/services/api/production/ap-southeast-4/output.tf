"output" "bucket_arn" {
  "value" = "${module.s3.bucket_arn}"
}

"output" "bucket_id" {
  "value" = "${module.s3.bucket_id}"
}

"output" "cloudfront_read_path" {
  "value" = "${module.s3.cloudfront_read_path}"
}