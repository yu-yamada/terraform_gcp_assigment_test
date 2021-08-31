variable "assignment-projects" { 
  type = list(string) 
  default = [
    "recruit-bq-test-yu03",
  ]
}

// assignment
resource "google_bigquery_reservation_assignment" "assignment-test" {
  count       = length(var.assignment-projects) 
  reservation = google_bigquery_reservation.reservation-test01.id
  assignee    = "projects/${element(var.assignment-projects, count.index)}"
  job_type    = "QUERY"
}


resource "google_bigquery_reservation_assignment" "assignment-test-ml" {
  count       = length(var.assignment-projects) 
  reservation = google_bigquery_reservation.reservation-test02.id
  assignee    = "projects/${element(var.assignment-projects, count.index)}"
  job_type    = "ML_EXTERNAL"
}
