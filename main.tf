provider "google" {
  credentials = file("secret.json")
  project = "ftde-batch-4"
  region  = "us-central1"  # Replace with the desired GCP region
}

resource "google_storage_bucket" "my_bucket" {
  name     = "digital-skolah-bucket-test"  # Replace with your unique bucket name
  location = "US"  # Specify the bucket's location (e.g., "US" or "EU")

#  lifecycle {
#    prevent_destroy = true  # Optional: Prevent bucket from being accidentally destroyed
#  }
}
