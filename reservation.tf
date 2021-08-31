resource "google_bigquery_reservation" "reservation-test01" {
  name              = "test01"
  location          = "US"
  slot_capacity     = 100
  ignore_idle_slots = false
  project           = var.gcp_project
}


resource "google_bigquery_reservation" "reservation-test02" {
  name              = "test02"
  location          = "US"
  slot_capacity     = 100
  ignore_idle_slots = false
  project           = var.gcp_project
}
