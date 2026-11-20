module "s3" {
  source = "git::https://github.com/thecloudsolutions/terraform-aws-s3-component.git?ref=main"

  s3_map = { for key, s3 in var.s3_map :
    key =>
    merge(s3,
      {
        access_grants = { for grant_key, access_grant in s3.access_grants :
          grant_key => merge(access_grant,
            {
              grantee = {
                grantee_identifier = try(access_grant.grantee.grantee_identifier, null) != null ? access_grant.grantee.grantee_identifier : access_grant.grantee.grantee_type == "IAM" && try(access_grant.grantee.role_custom_name, null) != null ? module.iam.iam_role_arns[access_grant.grantee.role_custom_name] : access_grant.grantee.grantee_type == "IAM" && try(access_grant.grantee.user_custom_name, null) != null ? module.iam.iam_user_arns[access_grant.grantee.iam_custom_name][access_grant.grantee.user_custom_name] : null
                grantee_type       = access_grant.grantee.grantee_type
              }
            }
          )
        }

        access_grants_instance_resource_policies = { for policy_key, access_grants_instance_resource_policy in s3.access_grants_instance_resource_policies :
          policy_key => merge(access_grants_instance_resource_policy,
            { policy = try(access_grants_instance_resource_policy.policy, null) != null ? access_grants_instance_resource_policy.policy : try(access_grants_instance_resource_policy.policy_custom_name, null) != null ? module.iam.iam_policy_document_jsons[access_grants_instance_resource_policy.iam_custom_name][access_grants_instance_resource_policy.policy_custom_name] : null }
          )
        }

        access_grants_locations = { for location_key, access_grants_location in s3.access_grants_locations :
          location_key => merge(access_grants_location,
            { iam_role_arn = try(access_grants_location.iam_role_arn, null) != null ? access_grants_location.iam_role_arn : try(access_grants_location.iam_role_custom_name, null) != null ? module.iam.iam_role_arns[access_grants_location.iam_role_custom_name] : null }
          )
        }

        access_points = { for access_point_key, access_point in s3.access_points :
          access_point_key =>
          merge(access_point,
            { policy = try(access_point.policy, null) != null ? access_point.policy : try(access_point.policy_custom_name, null) != null ? module.iam.iam_policy_document_jsons[access_point.iam_custom_name][access_point.policy_custom_name] : null }
          )
        }

        access_point_policies = { for policy_key, access_point_policy in s3.access_point_policies :
          policy_key =>
          merge(access_point_policy,
            { policy = try(access_point_policy.policy, null) != null ? access_point_policy.policy : try(access_point_policy.policy_custom_name, null) != null ? module.iam.iam_policy_document_jsons[access_point_policy.iam_custom_name][access_point_policy.policy_custom_name] : null }
          )
        }

        bucket_policy = try(s3.bucket_policy, null) != null ? merge(s3.bucket_policy,
          { policy = try(s3.bucket_policy.policy, null) != null ? s3.bucket_policy.policy : module.iam.iam_policy_document_jsons[s3.bucket_policy.iam_custom_name][s3.bucket_policy.policy_custom_name] }
        ) : null

        bucket_inventory = try(s3.bucket_inventory.destination.bucket.encryption.sse_kms, null) != null ? merge(s3.bucket_inventory,
          {
            destination = merge(s3.bucket_inventory.destination,
              {
                bucket = merge(s3.bucket_inventory.destination.bucket,
                  {
                    encryption = merge(s3.bucket_inventory.destination.bucket.encryption,
                      { sse_kms = { key_id = try(s3.bucket_inventory.destination.bucket.encryption.sse_kms.key_id, null) != null ? s3.bucket_inventory.destination.bucket.encryption.sse_kms.key_id : try(s3.bucket_inventory.destination.bucket.encryption.sse_kms.replica_key_custom_name, null) != null ? try(module.kms.kms_replica_external_key_arns[s3.bucket_inventory.destination.bucket.encryption.sse_kms.kms_key_custom_name][s3.bucket_inventory.destination.bucket.encryption.sse_kms.replica_key_custom_name], module.kms.kms_replica_key_arns[s3.bucket_inventory.destination.bucket.encryption.sse_kms.kms_key_custom_name][s3.bucket_inventory.destination.bucket.encryption.sse_kms.replica_key_custom_name]) : try(s3.bucket_inventory.destination.bucket.encryption.sse_kms.kms_key_custom_name, null) != null ? module.kms.kms_key_arns[s3.bucket_inventory.destination.bucket.encryption.sse_kms.kms_key_custom_name] : null } }
                    )
                  }
                )
              }
            )
          }
        ) : s3.bucket_inventory

        bucket_inventories = { for inventory_key, inventory in s3.bucket_inventories :
          inventory_key => try(inventory.destination.bucket.encryption.sse_kms, null) != null ? merge(inventory,
            {
              destination = merge(inventory.destination,
                {
                  bucket = merge(inventory.destination.bucket,
                    {
                      encryption = merge(inventory.destination.bucket.encryption,
                        { sse_kms = { key_id = try(inventory.destination.bucket.encryption.sse_kms.key_id, null) != null ? inventory.destination.bucket.encryption.sse_kms.key_id : try(inventory.destination.bucket.encryption.sse_kms.replica_key_custom_name, null) != null ? try(module.kms.kms_replica_external_key_arns[inventory.destination.bucket.encryption.sse_kms.kms_key_custom_name][inventory.destination.bucket.encryption.sse_kms.replica_key_custom_name], module.kms.kms_replica_key_arns[inventory.destination.bucket.encryption.sse_kms.kms_key_custom_name][inventory.destination.bucket.encryption.sse_kms.replica_key_custom_name]) : try(inventory.destination.bucket.encryption.sse_kms.kms_key_custom_name, null) != null ? module.kms.kms_key_arns[inventory.destination.bucket.encryption.sse_kms.kms_key_custom_name] : null } }
                      )
                    }
                  )
                }
              )
            }
          ) : inventory
        }

        bucket_metadata_configuration = try(s3.bucket_metadata_configuration, null) != null ? merge(s3.bucket_metadata_configuration,
          {
            metadata_configuration = merge(s3.bucket_metadata_configuration.metadata_configuration,
              {
                inventory_table_configuration = merge(s3.bucket_metadata_configuration.metadata_configuration.inventory_table_configuration,
                  {
                    encryption_configuration = try(s3.bucket_metadata_configuration.metadata_configuration.inventory_table_configuration.encryption_configuration, null) != null ? {
                      kms_key_arn   = try(s3.bucket_metadata_configuration.metadata_configuration.inventory_table_configuration.encryption_configuration.kms_key_arn, null) != null ? s3.bucket_metadata_configuration.metadata_configuration.inventory_table_configuration.encryption_configuration.kms_key_arn : try(s3.bucket_metadata_configuration.metadata_configuration.inventory_table_configuration.encryption_configuration.replica_key_custom_name, null) != null ? try(module.kms.kms_replica_external_key_arns[s3.bucket_metadata_configuration.metadata_configuration.inventory_table_configuration.encryption_configuration.kms_key_custom_name][s3.bucket_metadata_configuration.metadata_configuration.inventory_table_configuration.encryption_configuration.replica_key_custom_name], module.kms.kms_replica_key_arns[s3.bucket_metadata_configuration.metadata_configuration.inventory_table_configuration.encryption_configuration.kms_key_custom_name][s3.bucket_metadata_configuration.metadata_configuration.inventory_table_configuration.encryption_configuration.replica_key_custom_name]) : try(s3.bucket_metadata_configuration.metadata_configuration.inventory_table_configuration.encryption_configuration.kms_key_custom_name, null) != null ? module.kms.kms_key_arns[s3.bucket_metadata_configuration.metadata_configuration.inventory_table_configuration.encryption_configuration.kms_key_custom_name] : null
                      sse_algorithm = s3.bucket_metadata_configuration.metadata_configuration.inventory_table_configuration.encryption_configuration.sse_algorithm
                    } : null
                  }
                )

                journal_table_configuration = merge(s3.bucket_metadata_configuration.metadata_configuration.journal_table_configuration,
                  {
                    encryption_configuration = try(s3.bucket_metadata_configuration.metadata_configuration.journal_table_configuration.encryption_configuration, null) != null ? {
                      kms_key_arn   = try(s3.bucket_metadata_configuration.metadata_configuration.journal_table_configuration.encryption_configuration.kms_key_arn, null) != null ? s3.bucket_metadata_configuration.metadata_configuration.journal_table_configuration.encryption_configuration.kms_key_arn : try(s3.bucket_metadata_configuration.metadata_configuration.journal_table_configuration.encryption_configuration.replica_key_custom_name, null) != null ? try(module.kms.kms_replica_external_key_arns[s3.bucket_metadata_configuration.metadata_configuration.journal_table_configuration.encryption_configuration.kms_key_custom_name][s3.bucket_metadata_configuration.metadata_configuration.journal_table_configuration.encryption_configuration.replica_key_custom_name], module.kms.kms_replica_key_arns[s3.bucket_metadata_configuration.metadata_configuration.journal_table_configuration.encryption_configuration.kms_key_custom_name][s3.bucket_metadata_configuration.metadata_configuration.journal_table_configuration.encryption_configuration.replica_key_custom_name]) : try(s3.bucket_metadata_configuration.metadata_configuration.journal_table_configuration.encryption_configuration.kms_key_custom_name, null) != null ? module.kms.kms_key_arns[s3.bucket_metadata_configuration.metadata_configuration.journal_table_configuration.encryption_configuration.kms_key_custom_name] : null
                      sse_algorithm = s3.bucket_metadata_configuration.metadata_configuration.journal_table_configuration.encryption_configuration.sse_algorithm
                    } : null
                  }
                )
              }
            )
          }
        ) : null

        bucket_replication_configuration = try(s3.bucket_replication_configuration, null) != null ? merge(s3.bucket_replication_configuration,
          {
            role = try(s3.bucket_replication_configuration.role, null) != null ? s3.bucket_replication_configuration.role : try(s3.bucket_replication_configuration.role_custom_name, null) != null ? module.iam.iam_role_arns[s3.bucket_replication_configuration.role_custom_name] : null

            rule = [for rule in s3.bucket_replication_configuration.rule :
              merge(rule,
                {
                  destination = merge(rule.destination,
                    {
                      encryption_configuration = try(rule.destination.encryption_configuration, null) != null ? {
                        replica_kms_key_id = try(rule.destination.encryption_configuration.replica_kms_key_id, null) != null ? rule.destination.encryption_configuration.replica_kms_key_id : try(rule.destination.encryption_configuration.replica_key_custom_name, null) != null ? try(module.kms.kms_replica_external_key_arns[rule.destination.encryption_configuration.replica_kms_key_custom_name][rule.destination.encryption_configuration.replica_key_custom_name], module.kms.kms_replica_key_arns[rule.destination.encryption_configuration.replica_kms_key_custom_name][rule.destination.encryption_configuration.replica_key_custom_name]) : try(rule.destination.encryption_configuration.replica_kms_key_custom_name, null) != null ? module.kms.kms_key_arns[rule.destination.encryption_configuration.replica_kms_key_custom_name] : null
                      } : null
                    }
                  )
                }
              )
            ]
          }
        ) : null

        bucket_server_side_encryption_configuration = try(s3.bucket_server_side_encryption_configuration.rule.apply_server_side_encryption_by_default, null) != null ? merge(s3.bucket_server_side_encryption_configuration,
          {
            rule = merge(s3.bucket_server_side_encryption_configuration.rule,
              {
                apply_server_side_encryption_by_default = {
                  sse_algorithm     = s3.bucket_server_side_encryption_configuration.rule.apply_server_side_encryption_by_default.sse_algorithm
                  kms_master_key_id = try(s3.bucket_server_side_encryption_configuration.rule.apply_server_side_encryption_by_default.kms_master_key_id, null) != null ? s3.bucket_server_side_encryption_configuration.rule.apply_server_side_encryption_by_default.kms_master_key_id : try(s3.bucket_server_side_encryption_configuration.rule.apply_server_side_encryption_by_default.replica_key_custom_name, null) != null ? try(module.kms.kms_replica_external_key_arns[s3.bucket_server_side_encryption_configuration.rule.apply_server_side_encryption_by_default.kms_master_key_custom_name][s3.bucket_server_side_encryption_configuration.rule.apply_server_side_encryption_by_default.replica_key_custom_name], module.kms.kms_replica_key_arns[s3.bucket_server_side_encryption_configuration.rule.apply_server_side_encryption_by_default.kms_master_key_custom_name][s3.bucket_server_side_encryption_configuration.rule.apply_server_side_encryption_by_default.replica_key_custom_name]) : try(s3.bucket_server_side_encryption_configuration.rule.apply_server_side_encryption_by_default.kms_master_key_custom_name, null) != null ? module.kms.kms_key_arns[s3.bucket_server_side_encryption_configuration.rule.apply_server_side_encryption_by_default.kms_master_key_custom_name] : null
                }
              }
            )
          }
        ) : s3.bucket_server_side_encryption_configuration

        multi_region_access_point_policies = { for policy_key, access_point_policy in s3.multi_region_access_point_policies :
          policy_key => merge(access_point_policy,
            {
              details = merge(access_point_policy.details,
                { policy = try(access_point_policy.details.policy, null) != null ? access_point_policy.details.policy : try(access_point_policy.details.policy_custom_name, null) != null ? module.iam.iam_policy_document_jsons[access_point_policy.details.iam_custom_name][access_point_policy.details.policy_custom_name] : null }
              )
            }
          )
        }

        objects = { for object_key, object in s3.objects :
          object_key => merge(object,
            { kms_key_id = try(object.kms_key_id, null) != null ? object.kms_key_id : try(object.replica_key_custom_name, null) != null ? try(module.kms.kms_replica_external_key_arns[object.kms_key_custom_name][object.replica_key_custom_name], module.kms.kms_replica_key_arns[object.kms_key_custom_name][object.replica_key_custom_name]) : try(object.kms_key_custom_name, null) != null ? module.kms.kms_key_arns[object.kms_key_custom_name] : null }
          )
        }

        storage_lens_configurations = { for configuration_key, configuration in s3.storage_lens_configurations :
          configuration_key => merge(configuration,
            {
              storage_lens_configuration = merge(configuration.storage_lens_configuration,
                {
                  data_export = try(configuration.storage_lens_configuration.data_export, null) != null ? merge(configuration.storage_lens_configuration.data_export,
                    {
                      s3_bucket_destination = try(configuration.storage_lens_configuration.data_export.s3_bucket_destination.encryption.sse_kms, null) != null ? merge(configuration.storage_lens_configuration.data_export.s3_bucket_destination,
                        {
                          encryption = merge(configuration.storage_lens_configuration.data_export.s3_bucket_destination.encryption,
                            { sse_kms = { key_id = try(configuration.storage_lens_configuration.data_export.s3_bucket_destination.encryption.sse_kms.key_id, null) != null ? configuration.storage_lens_configuration.data_export.s3_bucket_destination.encryption.sse_kms.key_id : try(configuration.storage_lens_configuration.data_export.s3_bucket_destination.encryption.sse_kms.replica_key_custom_name, null) != null ? try(module.kms.kms_replica_external_key_arns[configuration.storage_lens_configuration.data_export.s3_bucket_destination.encryption.sse_kms.kms_key_custom_name][configuration.storage_lens_configuration.data_export.s3_bucket_destination.encryption.sse_kms.replica_key_custom_name], module.kms.kms_replica_key_arns[configuration.storage_lens_configuration.data_export.s3_bucket_destination.encryption.sse_kms.kms_key_custom_name][configuration.storage_lens_configuration.data_export.s3_bucket_destination.encryption.sse_kms.replica_key_custom_name]) : try(configuration.storage_lens_configuration.data_export.s3_bucket_destination.encryption.sse_kms.kms_key_custom_name, null) != null ? module.kms.kms_key_arns[configuration.storage_lens_configuration.data_export.s3_bucket_destination.encryption.sse_kms.kms_key_custom_name] : null } }
                          )
                        }
                      ) : configuration.storage_lens_configuration.data_export.s3_bucket_destination

                      storage_lens_table_destination = try(configuration.storage_lens_configuration.data_export.storage_lens_table_destination.encryption.sse_kms, null) != null ? merge(configuration.storage_lens_configuration.data_export.storage_lens_table_destination,
                        {
                          encryption = merge(configuration.storage_lens_configuration.data_export.storage_lens_table_destination.encryption,
                            { sse_kms = { key_id = try(configuration.storage_lens_configuration.data_export.storage_lens_table_destination.encryption.sse_kms.key_id, null) != null ? configuration.storage_lens_configuration.data_export.storage_lens_table_destination.encryption.sse_kms.key_id : try(configuration.storage_lens_configuration.data_export.storage_lens_table_destination.encryption.sse_kms.replica_key_custom_name, null) != null ? try(module.kms.kms_replica_external_key_arns[configuration.storage_lens_configuration.data_export.storage_lens_table_destination.encryption.sse_kms.kms_key_custom_name][configuration.storage_lens_configuration.data_export.storage_lens_table_destination.encryption.sse_kms.replica_key_custom_name], module.kms.kms_replica_key_arns[configuration.storage_lens_configuration.data_export.storage_lens_table_destination.encryption.sse_kms.kms_key_custom_name][configuration.storage_lens_configuration.data_export.storage_lens_table_destination.encryption.sse_kms.replica_key_custom_name]) : try(configuration.storage_lens_configuration.data_export.storage_lens_table_destination.encryption.sse_kms.kms_key_custom_name, null) != null ? module.kms.kms_key_arns[configuration.storage_lens_configuration.data_export.storage_lens_table_destination.encryption.sse_kms.kms_key_custom_name] : null } }
                          )
                        }
                      ) : configuration.storage_lens_configuration.data_export.storage_lens_table_destination
                    }
                  ) : null

                  expanded_prefixes_data_export = try(configuration.storage_lens_configuration.expanded_prefixes_data_export, null) != null ? merge(configuration.storage_lens_configuration.expanded_prefixes_data_export,
                    {
                      s3_bucket_destination = try(configuration.storage_lens_configuration.expanded_prefixes_data_export.s3_bucket_destination.encryption.sse_kms, null) != null ? merge(configuration.storage_lens_configuration.expanded_prefixes_data_export.s3_bucket_destination,
                        {
                          encryption = merge(configuration.storage_lens_configuration.expanded_prefixes_data_export.s3_bucket_destination.encryption,
                            { sse_kms = { key_id = try(configuration.storage_lens_configuration.expanded_prefixes_data_export.s3_bucket_destination.encryption.sse_kms.key_id, null) != null ? configuration.storage_lens_configuration.expanded_prefixes_data_export.s3_bucket_destination.encryption.sse_kms.key_id : try(configuration.storage_lens_configuration.expanded_prefixes_data_export.s3_bucket_destination.encryption.sse_kms.replica_key_custom_name, null) != null ? try(module.kms.kms_replica_external_key_arns[configuration.storage_lens_configuration.expanded_prefixes_data_export.s3_bucket_destination.encryption.sse_kms.kms_key_custom_name][configuration.storage_lens_configuration.expanded_prefixes_data_export.s3_bucket_destination.encryption.sse_kms.replica_key_custom_name], module.kms.kms_replica_key_arns[configuration.storage_lens_configuration.expanded_prefixes_data_export.s3_bucket_destination.encryption.sse_kms.kms_key_custom_name][configuration.storage_lens_configuration.expanded_prefixes_data_export.s3_bucket_destination.encryption.sse_kms.replica_key_custom_name]) : try(configuration.storage_lens_configuration.expanded_prefixes_data_export.s3_bucket_destination.encryption.sse_kms.kms_key_custom_name, null) != null ? module.kms.kms_key_arns[configuration.storage_lens_configuration.expanded_prefixes_data_export.s3_bucket_destination.encryption.sse_kms.kms_key_custom_name] : null } }
                          )
                        }
                      ) : configuration.storage_lens_configuration.expanded_prefixes_data_export.s3_bucket_destination

                      storage_lens_table_destination = try(configuration.storage_lens_configuration.expanded_prefixes_data_export.storage_lens_table_destination.encryption.sse_kms, null) != null ? merge(configuration.storage_lens_configuration.expanded_prefixes_data_export.storage_lens_table_destination,
                        {
                          encryption = merge(configuration.storage_lens_configuration.expanded_prefixes_data_export.storage_lens_table_destination.encryption,
                            { sse_kms = { key_id = try(configuration.storage_lens_configuration.expanded_prefixes_data_export.storage_lens_table_destination.encryption.sse_kms.key_id, null) != null ? configuration.storage_lens_configuration.expanded_prefixes_data_export.storage_lens_table_destination.encryption.sse_kms.key_id : try(configuration.storage_lens_configuration.expanded_prefixes_data_export.storage_lens_table_destination.encryption.sse_kms.replica_key_custom_name, null) != null ? try(module.kms.kms_replica_external_key_arns[configuration.storage_lens_configuration.expanded_prefixes_data_export.storage_lens_table_destination.encryption.sse_kms.kms_key_custom_name][configuration.storage_lens_configuration.expanded_prefixes_data_export.storage_lens_table_destination.encryption.sse_kms.replica_key_custom_name], module.kms.kms_replica_key_arns[configuration.storage_lens_configuration.expanded_prefixes_data_export.storage_lens_table_destination.encryption.sse_kms.kms_key_custom_name][configuration.storage_lens_configuration.expanded_prefixes_data_export.storage_lens_table_destination.encryption.sse_kms.replica_key_custom_name]) : try(configuration.storage_lens_configuration.expanded_prefixes_data_export.storage_lens_table_destination.encryption.sse_kms.kms_key_custom_name, null) != null ? module.kms.kms_key_arns[configuration.storage_lens_configuration.expanded_prefixes_data_export.storage_lens_table_destination.encryption.sse_kms.kms_key_custom_name] : null } }
                          )
                        }
                      ) : configuration.storage_lens_configuration.expanded_prefixes_data_export.storage_lens_table_destination
                    }
                  ) : null
                }
              )
            }
          )
        }
      }
    )
  }

  depends_on = [module.kms, module.iam]
}

module "iam" {
  source = "git::https://github.com/thecloudsolutions/terraform-aws-iam-component.git?ref=main"

  iam_map = var.iam_map
}

module "kms" {
  source = "git::https://github.com/thecloudsolutions/terraform-aws-kms-component.git?ref=main"

  kms_map = { for key, kms in var.kms_map :
    key => merge(kms,
      {
        key = try(kms.key, null) != null ? merge(kms.key,
          { policy = try(kms.key.policy, null) != null ? kms.key.policy : try(kms.key.policy_custom_name, null) != null ? module.iam.iam_policy_document_jsons[kms.key.iam_custom_name][kms.key.policy_custom_name] : null }
        ) : null

        external_key = try(kms.external_key, null) != null ? merge(kms.external_key,
          { policy = try(kms.external_key.policy, null) != null ? kms.external_key.policy : try(kms.external_key.policy_custom_name, null) != null ? module.iam.iam_policy_document_jsons[kms.external_key.iam_custom_name][kms.external_key.policy_custom_name] : null }
        ) : null

        grants = { for grant_key, grant in kms.grants :
          grant_key => merge(grant,
            {
              grantee_principal  = try(grant.grantee_principal, null) != null ? grant.grantee_principal : try(grant.grantee_role_custom_name, null) != null ? module.iam.iam_role_arns[grant.grantee_role_custom_name] : try(grant.grantee_user_custom_name, null) != null ? module.iam.iam_user_arns[grant.grantee_iam_custom_name][grant.grantee_user_custom_name] : try(grant.grantee_service_linked_role_custom_name, null) != null ? module.iam.iam_service_linked_role_arns[grant.grantee_iam_custom_name][grant.grantee_service_linked_role_custom_name] : null
              retiring_principal = try(grant.retiring_principal, null) != null ? grant.retiring_principal : try(grant.retiring_role_custom_name, null) != null ? module.iam.iam_role_arns[grant.retiring_role_custom_name] : try(grant.retiring_user_custom_name, null) != null ? module.iam.iam_user_arns[grant.retiring_iam_custom_name][grant.retiring_user_custom_name] : try(grant.retiring_service_linked_role_custom_name, null) != null ? module.iam.iam_service_linked_role_arns[grant.retiring_iam_custom_name][grant.retiring_service_linked_role_custom_name] : null
            }
          )
        }

        replica_keys = { for replica_key, replica in kms.replica_keys :
          replica_key => merge(replica,
            { policy = try(replica.policy, null) != null ? replica.policy : try(replica.policy_custom_name, null) != null ? module.iam.iam_policy_document_jsons[replica.iam_custom_name][replica.policy_custom_name] : null }
          )
        }

        replica_external_keys = { for replica_key, replica in kms.replica_external_keys :
          replica_key => merge(replica,
            { policy = try(replica.policy, null) != null ? replica.policy : try(replica.policy_custom_name, null) != null ? module.iam.iam_policy_document_jsons[replica.iam_custom_name][replica.policy_custom_name] : null }
          )
        }

        key_policy = try(kms.key_policy, null) != null ? merge(kms.key_policy,
          { policy = try(kms.key_policy.policy, null) != null ? kms.key_policy.policy : try(kms.key_policy.policy_custom_name, null) != null ? module.iam.iam_policy_document_jsons[kms.key_policy.iam_custom_name][kms.key_policy.policy_custom_name] : null }
        ) : null
      }
    )
  }
}
