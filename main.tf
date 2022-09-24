#____________________________________________________________
#
# Intersight Organization Data Source
# GUI Location: Settings > Settings > Organizations > {Name}
#____________________________________________________________

data "intersight_organization_organization" "org_moid" {
  name = var.organization
}

#__________________________________________________________________
#
# Intersight Link Control Policy
# GUI Location: Policies > Create Policy > Link Control
#__________________________________________________________________

resource "intersight_fabric_link_control_policy" "link_control" {
  depends_on = [
    data.intersight_organization_organization.org_moid
  ]
  description = var.description != "" ? var.description : "${var.name} Link Control Policy."
  name        = var.name
  organization {
    moid        = data.intersight_organization_organization.org_moid.results[0].moid
    object_type = "organization.Organization"
  }
  udld_settings {
    admin_state = var.admin_state
    mode        = var.mode
  }
  dynamic "tags" {
    for_each = var.tags
    content {
      key   = tags.value.key
      value = tags.value.value
    }
  }
}
