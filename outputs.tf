output "recovery_protected_databases_id" {
  description = "Map of id values across all recovery_protected_databases, keyed the same as var.recovery_protected_databases except keys with no id are omitted"
  value       = { for k, v in oci_recovery_protected_database.recovery_protected_databases : k => v.id if v.id != null && length(v.id) > 0 }
}
output "recovery_protected_databases_compartment_id" {
  description = "Map of compartment_id values across all recovery_protected_databases, keyed the same as var.recovery_protected_databases except keys with no compartment_id are omitted"
  value       = { for k, v in oci_recovery_protected_database.recovery_protected_databases : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "recovery_protected_databases_database_id" {
  description = "Map of database_id values across all recovery_protected_databases, keyed the same as var.recovery_protected_databases except keys with no database_id are omitted"
  value       = { for k, v in oci_recovery_protected_database.recovery_protected_databases : k => v.database_id if v.database_id != null && length(v.database_id) > 0 }
}
output "recovery_protected_databases_database_size" {
  description = "Map of database_size values across all recovery_protected_databases, keyed the same as var.recovery_protected_databases except keys with no database_size are omitted"
  value       = { for k, v in oci_recovery_protected_database.recovery_protected_databases : k => v.database_size if v.database_size != null && length(v.database_size) > 0 }
}
output "recovery_protected_databases_db_unique_name" {
  description = "Map of db_unique_name values across all recovery_protected_databases, keyed the same as var.recovery_protected_databases except keys with no db_unique_name are omitted"
  value       = { for k, v in oci_recovery_protected_database.recovery_protected_databases : k => v.db_unique_name if v.db_unique_name != null && length(v.db_unique_name) > 0 }
}
output "recovery_protected_databases_defined_tags" {
  description = "Map of defined_tags values across all recovery_protected_databases, keyed the same as var.recovery_protected_databases except keys with no defined_tags are omitted"
  value       = { for k, v in oci_recovery_protected_database.recovery_protected_databases : k => v.defined_tags if v.defined_tags != null && length(v.defined_tags) > 0 }
}
output "recovery_protected_databases_deletion_schedule" {
  description = "Map of deletion_schedule values across all recovery_protected_databases, keyed the same as var.recovery_protected_databases except keys with no deletion_schedule are omitted"
  value       = { for k, v in oci_recovery_protected_database.recovery_protected_databases : k => v.deletion_schedule if v.deletion_schedule != null && length(v.deletion_schedule) > 0 }
}
output "recovery_protected_databases_display_name" {
  description = "Map of display_name values across all recovery_protected_databases, keyed the same as var.recovery_protected_databases except keys with no display_name are omitted"
  value       = { for k, v in oci_recovery_protected_database.recovery_protected_databases : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "recovery_protected_databases_freeform_tags" {
  description = "Map of freeform_tags values across all recovery_protected_databases, keyed the same as var.recovery_protected_databases except keys with no freeform_tags are omitted"
  value       = { for k, v in oci_recovery_protected_database.recovery_protected_databases : k => v.freeform_tags if v.freeform_tags != null && length(v.freeform_tags) > 0 }
}
output "recovery_protected_databases_health" {
  description = "Map of health values across all recovery_protected_databases, keyed the same as var.recovery_protected_databases except keys with no health are omitted"
  value       = { for k, v in oci_recovery_protected_database.recovery_protected_databases : k => v.health if v.health != null && length(v.health) > 0 }
}
output "recovery_protected_databases_health_details" {
  description = "Map of health_details values across all recovery_protected_databases, keyed the same as var.recovery_protected_databases except keys with no health_details are omitted"
  value       = { for k, v in oci_recovery_protected_database.recovery_protected_databases : k => v.health_details if v.health_details != null && length(v.health_details) > 0 }
}
output "recovery_protected_databases_is_read_only_resource" {
  description = "Map of is_read_only_resource values across all recovery_protected_databases, keyed the same as var.recovery_protected_databases except keys with no is_read_only_resource are omitted"
  value       = { for k, v in oci_recovery_protected_database.recovery_protected_databases : k => v.is_read_only_resource if v.is_read_only_resource != null }
}
output "recovery_protected_databases_is_redo_logs_shipped" {
  description = "Map of is_redo_logs_shipped values across all recovery_protected_databases, keyed the same as var.recovery_protected_databases except keys with no is_redo_logs_shipped are omitted"
  value       = { for k, v in oci_recovery_protected_database.recovery_protected_databases : k => v.is_redo_logs_shipped if v.is_redo_logs_shipped != null }
}
output "recovery_protected_databases_lifecycle_details" {
  description = "Map of lifecycle_details values across all recovery_protected_databases, keyed the same as var.recovery_protected_databases except keys with no lifecycle_details are omitted"
  value       = { for k, v in oci_recovery_protected_database.recovery_protected_databases : k => v.lifecycle_details if v.lifecycle_details != null && length(v.lifecycle_details) > 0 }
}
output "recovery_protected_databases_metrics" {
  description = "Map of metrics values across all recovery_protected_databases, keyed the same as var.recovery_protected_databases except keys with no metrics are omitted"
  value       = { for k, v in oci_recovery_protected_database.recovery_protected_databases : k => v.metrics if v.metrics != null && length(v.metrics) > 0 }
}
output "recovery_protected_databases_password" {
  description = "Map of password values across all recovery_protected_databases, keyed the same as var.recovery_protected_databases except keys with no password are omitted"
  value       = { for k, v in oci_recovery_protected_database.recovery_protected_databases : k => v.password if v.password != null && length(v.password) > 0 }
  sensitive   = true
}
output "recovery_protected_databases_policy_locked_date_time" {
  description = "Map of policy_locked_date_time values across all recovery_protected_databases, keyed the same as var.recovery_protected_databases except keys with no policy_locked_date_time are omitted"
  value       = { for k, v in oci_recovery_protected_database.recovery_protected_databases : k => v.policy_locked_date_time if v.policy_locked_date_time != null && length(v.policy_locked_date_time) > 0 }
}
output "recovery_protected_databases_protection_policy_id" {
  description = "Map of protection_policy_id values across all recovery_protected_databases, keyed the same as var.recovery_protected_databases except keys with no protection_policy_id are omitted"
  value       = { for k, v in oci_recovery_protected_database.recovery_protected_databases : k => v.protection_policy_id if v.protection_policy_id != null && length(v.protection_policy_id) > 0 }
}
output "recovery_protected_databases_recovery_service_subnets" {
  description = "Map of recovery_service_subnets values across all recovery_protected_databases, keyed the same as var.recovery_protected_databases except keys with no recovery_service_subnets are omitted"
  value       = { for k, v in oci_recovery_protected_database.recovery_protected_databases : k => v.recovery_service_subnets if v.recovery_service_subnets != null && length(v.recovery_service_subnets) > 0 }
}
output "recovery_protected_databases_state" {
  description = "Map of state values across all recovery_protected_databases, keyed the same as var.recovery_protected_databases except keys with no state are omitted"
  value       = { for k, v in oci_recovery_protected_database.recovery_protected_databases : k => v.state if v.state != null && length(v.state) > 0 }
}
output "recovery_protected_databases_subscription_id" {
  description = "Map of subscription_id values across all recovery_protected_databases, keyed the same as var.recovery_protected_databases except keys with no subscription_id are omitted"
  value       = { for k, v in oci_recovery_protected_database.recovery_protected_databases : k => v.subscription_id if v.subscription_id != null && length(v.subscription_id) > 0 }
}
output "recovery_protected_databases_system_tags" {
  description = "Map of system_tags values across all recovery_protected_databases, keyed the same as var.recovery_protected_databases except keys with no system_tags are omitted"
  value       = { for k, v in oci_recovery_protected_database.recovery_protected_databases : k => v.system_tags if v.system_tags != null && length(v.system_tags) > 0 }
}
output "recovery_protected_databases_time_created" {
  description = "Map of time_created values across all recovery_protected_databases, keyed the same as var.recovery_protected_databases except keys with no time_created are omitted"
  value       = { for k, v in oci_recovery_protected_database.recovery_protected_databases : k => v.time_created if v.time_created != null && length(v.time_created) > 0 }
}
output "recovery_protected_databases_time_updated" {
  description = "Map of time_updated values across all recovery_protected_databases, keyed the same as var.recovery_protected_databases except keys with no time_updated are omitted"
  value       = { for k, v in oci_recovery_protected_database.recovery_protected_databases : k => v.time_updated if v.time_updated != null && length(v.time_updated) > 0 }
}
output "recovery_protected_databases_vpc_user_name" {
  description = "Map of vpc_user_name values across all recovery_protected_databases, keyed the same as var.recovery_protected_databases except keys with no vpc_user_name are omitted"
  value       = { for k, v in oci_recovery_protected_database.recovery_protected_databases : k => v.vpc_user_name if v.vpc_user_name != null && length(v.vpc_user_name) > 0 }
}

