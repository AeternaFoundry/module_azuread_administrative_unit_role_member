variable "administrative_unit_role_members" {
  description = <<EOT
Map of administrative_unit_role_members, attributes below
Required:
    - administrative_unit_object_id
    - member_object_id
    - role_object_id
EOT

  type = map(object({
    administrative_unit_object_id = string
    member_object_id              = string
    role_object_id                = string
  }))
  # Note: 3 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

