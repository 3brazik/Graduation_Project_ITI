
#IAP firewall to access instance
resource "google_compute_firewall" "allow_ssh_firewall" {
  project     = "mohamed-abdelrazik-project"
  name        = "allow-ssh-firewall"
  network     = var.vpc_name
  direction = "INGRESS"
  source_ranges = [ "0.0.0.0/0" ]

  depends_on = [
    module.network
  ]
 
  allow {
    protocol  = "tcp"
    ports     = ["22"]
  }

} 