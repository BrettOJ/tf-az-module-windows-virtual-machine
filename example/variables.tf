variable "admin_password" {
  description = "The Password which should be used for the local-administrator on this Virtual Machine."
  type        = string
}

variable "admin_username" {
  description = "The username of the local administrator used for the Virtual Machine."
  type        = string
}

variable "location" {
  description = "The Azure location where the Windows Virtual Machine should exist."
  type        = string
}

variable "name" {
  description = "The name of the Windows Virtual Machine."
  type        = string
}

variable "network_interface_ids" {
  description = "A list of Network Interface IDs which should be attached to this Virtual Machine. The first Network Interface ID in this list will be the Primary Network Interface on the Virtual Machine."
  type        = list(string)
}

variable "resource_group_name" {
  description = "The name of the Resource Group in which the Windows Virtual Machine should be exist."
  type        = string
}

variable "size" {
  description = "The SKU which should be used for this Virtual Machine, such as Standard_F2."
  type        = string
}

variable "allow_extension_operations" {
  description = "Should Extension Operations be allowed on this Virtual Machine?"
  type        = bool
  default     = true
}

variable "availability_set_id" {
  description = "Specifies the ID of the Availability Set in which the Virtual Machine should exist."
  type        = string
}

variable "bypass_platform_safety_checks_on_user_schedule_enabled" {
  description = "Specifies whether to skip platform scheduled patching when a user schedule is associated with the VM."
  type        = bool
  default     = false
}

variable "capacity_reservation_group_id" {
  description = "Specifies the ID of the Capacity Reservation Group which the Virtual Machine should be allocated to."
  type        = string
}

variable "computer_name" {
  description = "Specifies the Hostname which should be used for this Virtual Machine."
  type        = string
}

variable "custom_data" {
  description = "The Base64-Encoded Custom Data which should be used for this Virtual Machine."
  type        = string
}

variable "dedicated_host_id" {
  description = "The ID of a Dedicated Host where this machine should be run on."
  type        = string
}

variable "dedicated_host_group_id" {
  description = "The ID of a Dedicated Host Group that this Windows Virtual Machine should be run within."
  type        = string
}

variable "edge_zone" {
  description = "Specifies the Edge Zone within the Azure Region where this Windows Virtual Machine should exist."
  type        = string
}

variable "disk_controller_type" {
  description = "Specifies the Disk Controller Type used for this Virtual Machine."
  type        = string
}

variable "enable_automatic_updates" {
  description = "Specifies if Automatic Updates are Enabled for the Windows Virtual Machine."
  type        = bool
  default     = true
}

variable "encryption_at_host_enabled" {
  description = "Should all of the disks (including the temp disk) attached to this Virtual Machine be encrypted by enabling Encryption at Host?"
  type        = bool
}

variable "eviction_policy" {
  description = "Specifies what should happen when the Virtual Machine is evicted for price reasons when using a Spot instance."
  type        = string
}

variable "extensions_time_budget" {
  description = "Specifies the duration allocated for all extensions to start."
  type        = string
  default     = "PT1H30M"
}

variable "hotpatching_enabled" {
  description = "Should the VM be patched without requiring a reboot?"
  type        = bool
  default     = false
}

variable "license_type" {
  description = "Specifies the type of on-premise license (also known as Azure Hybrid Use Benefit) which should be used for this Virtual Machine."
  type        = string
}

variable "max_bid_price" {
  description = "The maximum price you're willing to pay for this Virtual Machine, in US Dollars; which must be greater than the current spot price."
  type        = number

}

variable "patch_assessment_mode" {
  description = "Specifies the mode of VM Guest Patching for the Virtual Machine."
  type        = string
  default     = "ImageDefault"
}

variable "patch_mode" {
  description = "Specifies the mode of in-guest patching to this Windows Virtual Machine."
  type        = string
  default     = "AutomaticByOS"
}

variable "platform_fault_domain" {
  description = "Specifies the Platform Fault Domain in which this Windows Virtual Machine should be created."
  type        = number
  default     = -1
}

variable "priority" {
  description = "Specifies the priority of this Virtual Machine."
  type        = string
  default     = "Regular"
}

variable "provision_vm_agent" {
  description = "Should the Azure VM Agent be provisioned on this Virtual Machine?"
  type        = bool
  default     = true
}

variable "proximity_placement_group_id" {
  description = "The ID of the Proximity Placement Group which the Virtual Machine should be assigned to."
  type        = string
}

variable "reboot_setting" {
  description = "Specifies the reboot setting for platform scheduled patching."
  type        = string
}

variable "secure_boot_enabled" {
  description = "Specifies if Secure Boot and Trusted Launch is enabled for the Virtual Machine."
  type        = bool
}

variable "source_image_id" {
  description = "The ID of the Image which this Virtual Machine should be created from."
  type        = string
}

variable "tags" {
  description = "A mapping of tags which should be assigned to this Virtual Machine."
  type        = map(string)
}

variable "user_data" {
  description = "The Base64-Encoded User Data which should be used for this Virtual Machine."
  type        = string
}

variable "virtual_machine_scale_set_id" {
  description = "Specifies the Orchestrated Virtual Machine Scale Set that this Virtual Machine should be created within."
  type        = string
}

variable "vm_agent_platform_updates_enabled" {
  description = "Specifies whether VMAgent Platform Updates is enabled."
  type        = bool
  default     = false
}

variable "vtpm_enabled" {
  description = "Specifies if vTPM (virtual Trusted Platform Module) and Trusted Launch is enabled for the Virtual Machine."
  type        = bool
}

variable "zone" {
  description = "Specifies the Availability Zone in which this Windows Virtual Machine should be located."
  type        = string
}

variable "additional_capabilities_ultra_ssd_enabled" {
  description = "A additional_capabilities block as defined below."
  type        = bool
}

variable "additional_capabilities_hibernation_enabled" {
  description = "A additional_capabilities block as defined below."
  type        = bool
}

variable "additional_unattend_content_content" {
  description = "A additional_unattend_content block as defined below."
  type        = string
}

variable "additional_unattend_content_setting" {
  description = "A additional_unattend_content block as defined below."
  type        = string
}

variable "boot_diagnostics_storage_account_uri" {
  description = "A boot_diagnostics block as defined below."
  type        = string
}

variable "diff_disk_settings_option" {
  description = "A diff_disk_settings block as defined below."
  type        = string
}

variable "diff_disk_settings_placement" {
  description = "A diff_disk_settings block as defined below."
  type        = string
}

variable "gallery_application_version_id" {
  description = "A gallery_application block as defined below."
  type        = string
}

variable "gallery_application_automatic_upgrade_enabled" {
  description = "A gallery_application block as defined below."
  type        = bool
}

variable "gallery_application_configuration_blob_uri" {
  description = "A gallery_application block as defined below."
  type        = string
}

variable "gallery_application_order" {
  description = "A gallery_application block as defined below."
  type        = number
}

variable "gallery_application_tag" {
  description = "A gallery_application block as defined below."
  type        = string
}

variable "gallery_application_treat_failure_as_deployment_failure_enabled" {
  description = "A gallery_application block as defined below."
  type        = bool
}

variable "identity_type" {
  description = "An identity block as defined below."
  type        = string
}

variable "identity_identity_ids" {
  description = "An identity block as defined below."
  type        = list(string)
}

variable "os_disk_caching" {
  description = "A os_disk block as defined below."
  type        = string
}

variable "os_disk_storage_account_type" {
  description = "A os_disk block as defined below."
  type        = string
}

variable "os_disk_disk_encryption_set_id" {
  description = "A os_disk block as defined below."
  type        = string
}

variable "os_disk_disk_size_gb" {
  description = "A os_disk block as defined below."
  type        = number
}

variable "os_disk_name" {
  description = "A os_disk block as defined below."
  type        = string
}

variable "os_disk_secure_vm_disk_encryption_set_id" {
  description = "A os_disk block as defined below."
  type        = string
}

variable "os_disk_security_encryption_type" {
  description = "A os_disk block as defined below."
  type        = string
}

variable "os_disk_write_accelerator_enabled" {
  description = "A os_disk block as defined below."
  type        = bool
}

variable "os_disk_diff_disk_settings_option" {
  description = "A os_disk block as defined below."
  type        = string

}

variable "os_disk_diff_disk_settings_placement" {
  description = "A os_disk block as defined below."
  type        = string
}

variable "plan_name" {
  description = "A plan block as defined below."
  type        = string
}

variable "plan_product" {
  description = "A plan block as defined below."
  type        = string
}

variable "plan_publisher" {
  description = "A plan block as defined below."
  type        = string
}

variable "secret_certificate_store" {
  description = "A secret block as defined below."
  type        = string
}

variable "secret_certificate_url" {
  description = "A secret block as defined below."
  type        = string
}

variable "secret_key_vault_id" {
  description = "A secret block as defined below."
  type        = string
}

variable "source_image_reference_publisher" {
  description = "A source_image_reference block as defined below."
  type        = string
}

variable "source_image_reference_offer" {
  description = "A source_image_reference block as defined below."
  type        = string
}

variable "source_image_reference_sku" {
  description = "A source_image_reference block as defined below."
  type        = string
}

variable "source_image_reference_version" {
  description = "A source_image_reference block as defined below."
  type        = string
}

variable "os_image_notification_timeout" {
  description = "A os_image_notification block as defined below."
  type        = string
}

variable "termination_notification_enabled" {
  description = "A termination_notification block as defined below."
  type        = bool
}

variable "termination_notification_timeout" {
  description = "A termination_notification block as defined below."
  type        = string
}

variable "winrm_listener_protocol" {
  description = "A winrm_listener block as defined below."
  type        = string
}

variable "winrm_listener_certificate_url" {
  description = "A winrm_listener block as defined below."
  type        = string
}

