resource "oci_recovery_protected_database" "recovery_protected_databases" {
  for_each = var.recovery_protected_databases

  compartment_id       = each.value.compartment_id
  db_unique_name       = each.value.db_unique_name
  display_name         = each.value.display_name
  password             = each.value.password
  protection_policy_id = each.value.protection_policy_id
  database_id          = each.value.database_id
  database_size        = each.value.database_size
  defined_tags         = each.value.defined_tags
  deletion_schedule    = each.value.deletion_schedule
  freeform_tags        = each.value.freeform_tags
  is_redo_logs_shipped = each.value.is_redo_logs_shipped
  subscription_id      = each.value.subscription_id

  dynamic "recovery_service_subnets" {
    for_each = each.value.recovery_service_subnets
    content {
      recovery_service_subnet_id = recovery_service_subnets.value.recovery_service_subnet_id
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

