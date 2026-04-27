 data "aws_key_pair" "project_key" {
  key_name           = var.key_name
  include_public_key = true
}
