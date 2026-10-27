resource "azuread_administrative_unit_role_member" "administrative_unit_role_members" {
  for_each = var.administrative_unit_role_members

  administrative_unit_object_id = each.value.administrative_unit_object_id
  member_object_id              = each.value.member_object_id
  role_object_id                = each.value.role_object_id

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      read   = timeouts.value.read
    }
  }
}

