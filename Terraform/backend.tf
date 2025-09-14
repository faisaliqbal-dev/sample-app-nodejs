terraform {
  backend "s3" {
    bucket = "wordpress-tfstate-files"
    key    = "tfstatefile"
    region = "ap-south-1"
  }
}
