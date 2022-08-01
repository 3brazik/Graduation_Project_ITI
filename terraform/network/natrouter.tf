resource "google_compute_router" "network_router" {
  name    = "my-router"
  network = google_compute_network.my_vpc.id
  region = google_compute_subnetwork.public_subnet.region
}
