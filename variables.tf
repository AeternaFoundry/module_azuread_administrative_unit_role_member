variable "administrative_unit_role_members" {
  description = <<EOT
Map of administrative_unit_role_members, attributes below
Required:
    - administrative_unit_object_id
    - member_object_id
    - role_object_id
Optional:
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - read (optional)
EOT

  type = map(object({
    administrative_unit_object_id = string
    member_object_id              = string
    role_object_id                = string
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      read   = optional(string)
    }))
  }))
  # Note: 3 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

