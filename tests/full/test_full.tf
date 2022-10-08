module "main" {
  source       = "../.."
  admin_state  = "Enabled"
  description  = "${var.name} Link Control Policy."
  mode         = "normal"
  name         = var.name
  organization = "terratest"
}
