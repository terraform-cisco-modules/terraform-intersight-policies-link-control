#____________________________________________________________
#
# Link Control Policy Variables Section.
#____________________________________________________________

variable "description" {
  default     = ""
  description = "Description for the Policy."
  type        = string
}

variable "name" {
  default     = "default"
  description = "Name for the Policy."
  type        = string
}

variable "admin_state" {
  default     = "Enabled"
  description = <<-EOT
    Admin configured UDLD State for this port.
    * Disabled - Admin configured Disabled State.
    * Enabled - Admin configured Enabled State.
  EOT
  type        = string
}

variable "mode" {
  default     = "normal"
  description = <<-EOT
    Admin configured UDLD Mode for this port.
    * normal - Admin configured 'normal' UDLD mode.
    * aggressive - Admin configured 'aggressive' UDLD mode.
  EOT
  type        = string
}

variable "organization" {
  default     = "default"
  description = "Intersight Organization Name to Apply Policy to.  https://intersight.com/an/settings/organizations/."
  type        = string
}

variable "tags" {
  default     = []
  description = "List of Tag Attributes to Assign to the Policy."
  type        = list(map(string))
}
