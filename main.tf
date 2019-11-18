resource "google_compute_disk" "default" {
  name   = var.disk_name
  type   = var.disk_type
  zone   = var.zone
  size   = var.size
  labels = var.labels

  lifecycle {
    ignore_changes = [
      # Ignore changes to tags, e.g. because a management agent
      # updates these based on some ruleset managed elsewhere.
      "labels"
    ]
  }

}
