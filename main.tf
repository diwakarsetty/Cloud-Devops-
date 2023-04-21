terraform {
backend "s3" {
bucket = "tharun-terra"
key = "tharun"
region = "us-west-2"
encrypt = true
}
}
