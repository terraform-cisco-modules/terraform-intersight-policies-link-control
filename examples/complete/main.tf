module "link_control" {
  source  = "terraform-cisco-modules/policies-link-control/intersight"
  version = ">= 1.0.1"

  admin_state  = "Enabled"
  description  = "default Link Control Policy."
  mode         = "normal"
  name         = "default"
  organization = "default"
}
