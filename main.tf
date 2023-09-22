# This is my first change

# This here is my second change, from github this time!


terraform {
    required_providers {
        random = {
            source = "hashicorp/random"
            version = "3.5.1"
        }
    }
}

provider "random" {
    # Config options
}

resource "random_string" "bucket_name" {
    length = 16
    special = false
    upper = false

}


output "random_bucket_name" {
    value = random_string.bucket_name.id
}