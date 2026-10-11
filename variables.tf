variable "recovery_protected_databases" {
  description = <<EOT
Map of recovery_protected_databases, attributes below
Required:
    - compartment_id
    - db_unique_name
    - display_name
    - password
    - protection_policy_id
    - recovery_service_subnets (block):
        - recovery_service_subnet_id (required)
Optional:
    - database_id
    - database_size
    - defined_tags
    - deletion_schedule
    - freeform_tags
    - is_redo_logs_shipped
    - subscription_id
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    compartment_id       = string
    db_unique_name       = string
    display_name         = string
    password             = string
    protection_policy_id = string
    database_id          = optional(string)
    database_size        = optional(string)
    defined_tags         = optional(map(string))
    deletion_schedule    = optional(string)
    freeform_tags        = optional(map(string))
    is_redo_logs_shipped = optional(bool)
    subscription_id      = optional(string)
    recovery_service_subnets = list(object({
      recovery_service_subnet_id = string
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.recovery_protected_databases : (
        length(v.recovery_service_subnets) >= 1
      )
    ])
    error_message = "Each recovery_service_subnets list must contain at least 1 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.recovery_protected_databases : (
        v.deletion_schedule == null || (contains([for v in ["DELETE_AFTER_72_HOURS", "DELETE_AFTER_RETENTION_PERIOD"] : lower(v)], lower(v.deletion_schedule)))
      )
    ])
    error_message = "must be one of: \"DELETE_AFTER_72_HOURS\", \"DELETE_AFTER_RETENTION_PERIOD\""
  }
}

