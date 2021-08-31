/*
variable "gcp_project" {
  type    = string
  default = "recruit-bq-test-yu01"
}
*/

variable "gcp_project" {}
variable "gcp_regions" {
  type = map(string)
  default = {
    tokyo      = "asia-northeast1"
    us-central = "us-central1"
  }
}


