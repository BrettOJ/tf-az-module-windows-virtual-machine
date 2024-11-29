
resource "azurerm_windows_virtual_machine" "win_vm" {
  name                = module.win_vm_name.naming_convention_output[var.naming_convention_info.name].names.0
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location
  size                = var.size
  admin_username      = var.admin_username
  admin_password      = var.admin_password
  network_interface_ids = [
    azurerm_network_interface.example.id,
  ]
  allow_extension_operations                             = var.allow_extension_operations
  availability_set_id                                    = var.availability_set_id
  bypass_platform_safety_checks_on_user_schedule_enabled = var.bypass_platform_safety_checks_on_user_schedule_enabled
  capacity_reservation_group_id                          = var.capacity_reservation_group_id
  computer_name                                          = var.computer_name
  custom_data                                            = var.custom_data
  dedicated_host_group_id                                = var.dedicated_host_group_id
  edge_zone                                              = var.edge_zone
  disk_controller_type                                   = var.disk_controller_type
  enable_automatic_updates                               = var.enable_automatic_updates
  encryption_at_host_enabled                             = var.encryption_at_host_enabled
  eviction_policy                                        = var.eviction_policy
  extensions_time_budget                                 = var.extensions_time_budget
  hotpatching_enabled                                    = var.hotpatching_enabled
  license_type                                           = var.license_type
  max_bid_price                                          = var.max_bid_price
  patch_assessment_mode                                  = var.patch_assessment_mode
  patch_mode                                             = var.patch_mode
  platform_fault_domain                                  = var.platform_fault_domain
  priority                                               = var.priority
  provision_vm_agent                                     = var.provision_vm_agent
  proximity_placement_group_id                           = var.proximity_placement_group_id
  reboot_setting                                         = var.reboot_setting
  secure_boot_enabled                                    = var.secure_boot_enabled
  source_image_id                                        = var.source_image_id
  tags                                                   = var.tags
  user_data                                              = var.user_data
  virtual_machine_scale_set_id                           = var.virtual_machine_scale_set_id
  vm_agent_platform_updates_enabled                      = var.vm_agent_platform_updates_enabled
  vtpm_enabled                                           = var.vtpm_enabled
  zone                                                   = var.zone

  additional_capabilities {
    ultra_ssd_enabled   = var.additional_capabilities.ultra_ssd_enabled
    hibernation_enabled = var.additional_capabilities.hibernation_enabled
  }

  additional_unattend_content {
    content = var.additional_unattend_content.content
    setting = var.additional_unattend_content.setting
  }

  boot_diagnostics {
    storage_account_uri = var.boot_diagnostics.storage_account_uri
  }

  gallery_application {
    version_id                                  = var.gallery_application.version_id
    automatic_upgrade_enabled                   = var.gallery_application.automatic_upgrade_enabled
    configuration_blob_uri                      = var.gallery_application.configuration_blob_uri
    order                                       = var.gallery_application.order
    tag                                         = var.gallery_application.tag
    treat_failure_as_deployment_failure_enabled = var.gallery_application.treat_failure_as_deployment_failure_enabled
  }

  identity {
    type         = var.identity.type
    identity_ids = var.identity.identity_ids
  }

  os_disk {
    caching              = var.os_disk.caching
    storage_account_type = var.os_disk.storage_account_type
    diff_disk_settings {
      option    = var.os_disk.diff_disk_settings.option
      placement = var.os_disk.diff_disk_settings.placement
    }
    disk_encryption_set_id           = var.os_disk.disk_encryption_set_id
    disk_size_gb                     = var.os_disk.disk_size_gb
    name                             = var.os_disk.name
    secure_vm_disk_encryption_set_id = var.os_disk.secure_vm_disk_encryption_set_id
    security_encryption_type         = var.os_disk.security_encryption_type
    write_accelerator_enabled        = var.os_disk.write_accelerator_enabled
  }

  plan {
    name      = var.plan.name
    product   = var.plan.product
    publisher = var.plan.publisher
  }

  secret {
    certificate {
      store = var.secret.certificate.store
      url   = var.secret.certificate.url
    }
    key_vault_id = var.secret.key_vault_id
  }

  source_image_reference {
    publisher = var.source_image_reference.publisher
    offer     = var.source_image_reference.offer
    sku       = var.source_image_reference.sku
    version   = var.source_image_reference.version
  }

  os_image_notification {
    timeout = var.os_image_notification.timeout
  }

  termination_notification {
    enabled = var.termination_notification.enabled
    timeout = var.termination_notification.timeout
  }

  winrm_listener {
    protocol        = var.winrm_listener.protocol
    certificate_url = var.winrm_listener.certificate_url
  }

}
