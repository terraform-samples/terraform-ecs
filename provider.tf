##____    ____     ___   __     __  ___   ____    _____   ____
#|  _ \  |  _ \   / _ \  \ \   / / |_ _| |  _ \  | ____| |  _ \
#| |_) | | |_) | | | | |  \ \ / /   | |  | | | | |  _|   | |_) |
#|  __/  |  _ <  | |_| |   \ V /    | |  | |_| | | |___  |  _ <
#|_|     |_| \_\  \___/     \_/    |___| |____/  |_____| |_| \_\
# Specify the provider and access details
provider "aws" {
  shared_credentials_file = "./credentials.txt"
  profile                 = "${var.environment}"
  region                  = "${var.region}"
}
