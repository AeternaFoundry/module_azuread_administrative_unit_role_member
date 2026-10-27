output "administrative_unit_role_members_id" {
  description = "Map of id values across all administrative_unit_role_members, keyed the same as var.administrative_unit_role_members"
  value       = { for k, v in azuread_administrative_unit_role_member.administrative_unit_role_members : k => v.id }
}
output "administrative_unit_role_members_administrative_unit_object_id" {
  description = "Map of administrative_unit_object_id values across all administrative_unit_role_members, keyed the same as var.administrative_unit_role_members"
  value       = { for k, v in azuread_administrative_unit_role_member.administrative_unit_role_members : k => v.administrative_unit_object_id }
}
output "administrative_unit_role_members_member_object_id" {
  description = "Map of member_object_id values across all administrative_unit_role_members, keyed the same as var.administrative_unit_role_members"
  value       = { for k, v in azuread_administrative_unit_role_member.administrative_unit_role_members : k => v.member_object_id }
}
output "administrative_unit_role_members_role_object_id" {
  description = "Map of role_object_id values across all administrative_unit_role_members, keyed the same as var.administrative_unit_role_members"
  value       = { for k, v in azuread_administrative_unit_role_member.administrative_unit_role_members : k => v.role_object_id }
}

