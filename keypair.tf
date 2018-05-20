###_  __  _____  __   __  ____       _      ___   ____
##| |/ / | ____| \ \ / / |  _ \     / \    |_ _| |  _ \
##| ' /  |  _|    \ V /  | |_) |   / _ \    | |  | |_) |
##| . \  | |___    | |   |  __/   / ___ \   | |  |  _ <
##|_|\_\ |_____|   |_|   |_|     /_/   \_\ |___| |_| \_\

## keypair for ec2
resource "aws_key_pair" "ecs-key" {
  key_name   = "ecs-key-${var.environment}"
  public_key = "${file("./_ssh/instance-key.pub")}"
}
