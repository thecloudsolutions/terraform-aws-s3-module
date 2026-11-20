variable "s3_map" {
  type = map(object({
    access_grants = optional(map(object({
      region                             = optional(string)
      account_id                         = optional(string)
      access_grants_location_id          = optional(string)
      access_grants_location_custom_name = optional(string)
      permission                         = string
      s3_prefix_type                     = optional(string)

      access_grants_location_configuration = optional(object({
        s3_sub_prefix = optional(string)
      }))

      grantee = object({
        grantee_identifier = optional(string)
        grantee_type       = string
        role_custom_name   = optional(string)
        iam_custom_name    = optional(string)
        user_custom_name   = optional(string)
      })

      tags = optional(map(string))
    })), {})

    access_grants_instances = optional(map(object({
      region              = optional(string)
      account_id          = optional(string)
      identity_center_arn = optional(string)

      tags = optional(map(string))
    })), {})

    access_grants_instance_resource_policies = optional(map(object({
      region                             = optional(string)
      account_id                         = optional(string)
      access_grants_instance_custom_name = optional(string)
      policy                             = optional(string)
      iam_custom_name                    = optional(string)
      policy_custom_name                 = optional(string)
    })), {})

    access_grants_locations = optional(map(object({
      region                             = optional(string)
      account_id                         = optional(string)
      access_grants_instance_custom_name = optional(string)
      iam_role_arn                       = optional(string)
      iam_role_custom_name               = optional(string)
      location_scope                     = optional(string)

      tags = optional(map(string))
    })), {})

    access_points = optional(map(object({
      region             = optional(string)
      bucket             = optional(string)
      name               = string
      account_id         = optional(string)
      bucket_account_id  = optional(string)
      policy             = optional(string)
      iam_custom_name    = optional(string)
      policy_custom_name = optional(string)

      public_access_block_configuration = optional(object({
        block_public_acls       = optional(bool)
        block_public_policy     = optional(bool)
        ignore_public_acls      = optional(bool)
        restrict_public_buckets = optional(bool)
      }))

      vpc_configuration = optional(object({
        vpc_id = string
      }))

      tags = optional(map(string))
    })), {})

    access_point_policies = optional(map(object({
      region                   = optional(string)
      access_point_arn         = optional(string)
      access_point_custom_name = optional(string)
      policy                   = optional(string)
      iam_custom_name          = optional(string)
      policy_custom_name       = optional(string)
    })), {})

    bucket = optional(object({
      region              = optional(string)
      bucket              = optional(string)
      bucket_namespace    = optional(string)
      bucket_prefix       = optional(string)
      force_destroy       = optional(bool)
      object_lock_enabled = optional(bool)

      tags = optional(map(string))
    }))

    bucket_abac = optional(object({
      region                = optional(string)
      bucket                = optional(string)
      expected_bucket_owner = optional(string)

      abac_status = object({
        status = string
      })
    }))

    bucket_accelerate_configuration = optional(object({
      region                = optional(string)
      bucket                = optional(string)
      expected_bucket_owner = optional(string)
      status                = string
    }))

    bucket_acl = optional(object({
      region                = optional(string)
      bucket                = optional(string)
      acl                   = optional(string)
      expected_bucket_owner = optional(string)

      access_control_policy = optional(object({
        grant = list(object({
          permission = string

          grantee = object({
            email_address = optional(string)
            id            = optional(string)
            type          = string
            uri           = optional(string)
          })
        }))

        owner = object({
          id           = string
          display_name = optional(string)
        })
      }))
    }))

    bucket_analytics_configuration = optional(object({
      region = optional(string)
      name   = string

      bucket = optional(string)
      filter = optional(object({
        prefix = optional(string)
        tags   = optional(map(string))
      }))

      storage_class_analysis = optional(object({
        data_export = object({
          output_schema_version = optional(string)
          destination = object({
            s3_bucket_destination = object({
              bucket_arn        = string
              bucket_account_id = optional(string)
              format            = optional(string)
              prefix            = optional(string)
            })
          })
        })
      }))
    }))

    bucket_analytics_configurations = optional(map(object({
      region = optional(string)
      name   = string

      bucket = optional(string)
      filter = optional(object({
        prefix = optional(string)
        tags   = optional(map(string))
      }))

      storage_class_analysis = optional(object({
        data_export = object({
          output_schema_version = optional(string)
          destination = object({
            s3_bucket_destination = object({
              bucket_arn        = string
              bucket_account_id = optional(string)
              format            = optional(string)
              prefix            = optional(string)
            })
          })
        })
      }))
    })), {})

    bucket_cors_configuration = optional(object({
      region                = optional(string)
      bucket                = optional(string)
      expected_bucket_owner = optional(string)

      cors_rule = set(object({
        allowed_headers = optional(set(string))
        allowed_methods = set(string)
        allowed_origins = set(string)
        expose_headers  = optional(set(string))
        id              = optional(string)
        max_age_seconds = optional(number)
      }))
    }))

    bucket_intelligent_tiering_configurations = optional(map(object({
      region = optional(string)
      bucket = optional(string)
      name   = string
      status = optional(string)

      filter = optional(object({
        prefix = optional(string)
        tags   = optional(map(string))
      }))

      tiering = set(object({
        access_tier = string
        days        = number
      }))
    })), {})

    bucket_inventory = optional(object({
      region                   = optional(string)
      name                     = string
      included_object_versions = string

      schedule = object({
        frequency = string
      })

      destination = object({
        bucket = object({
          bucket_arn = string
          format     = string
          account_id = optional(string)
          prefix     = optional(string)
          encryption = optional(object({
            sse_kms = optional(object({
              key_id                  = optional(string)
              kms_key_custom_name     = optional(string)
              replica_key_custom_name = optional(string)
            }))

            sse_s3 = optional(object({}))
          }))
        })
      })

      bucket  = optional(string)
      enabled = optional(bool)

      filter = optional(object({
        prefix = optional(string)
      }))

      optional_fields = optional(list(string))
    }))

    bucket_inventories = optional(map(object({
      region                   = optional(string)
      name                     = string
      included_object_versions = string

      schedule = object({
        frequency = string
      })

      destination = object({
        bucket = object({
          bucket_arn = string
          format     = string
          account_id = optional(string)
          prefix     = optional(string)
          encryption = optional(object({
            sse_kms = optional(object({
              key_id                  = optional(string)
              kms_key_custom_name     = optional(string)
              replica_key_custom_name = optional(string)
            }))

            sse_s3 = optional(object({}))
          }))
        })
      })

      bucket  = optional(string)
      enabled = optional(bool)

      filter = optional(object({
        prefix = optional(string)
      }))

      optional_fields = optional(list(string))
    })), {})

    bucket_lifecycle_configuration = optional(object({
      region                                 = optional(string)
      bucket                                 = optional(string)
      expected_bucket_owner                  = optional(string)
      transition_default_minimum_object_size = optional(string)

      rule = list(object({
        abort_incomplete_multipart_upload = optional(object({
          days_after_initiation = optional(number)
        }))

        expiration = optional(object({
          date                         = optional(string)
          days                         = optional(number)
          expired_object_delete_marker = optional(bool)
        }))

        filter = optional(object({
          and = optional(object({
            object_size_greater_than = optional(number)
            object_size_less_than    = optional(number)
            prefix                   = optional(string)
            tags                     = optional(map(string))
          }))

          object_size_greater_than = optional(number)
          object_size_less_than    = optional(number)
          prefix                   = optional(string)

          tag = optional(list(object({
            key   = string
            value = string
          })))
        }))

        id     = string
        prefix = optional(string)

        noncurrent_version_expiration = optional(object({
          newer_noncurrent_versions = optional(number)
          noncurrent_days           = number
        }))

        noncurrent_version_transition = optional(list(object({
          newer_noncurrent_versions = optional(number)
          noncurrent_days           = number
          storage_class             = string
        })))

        status = string

        transition = optional(list(object({
          date          = optional(string)
          days          = optional(number)
          storage_class = string
        })))
      }))

      timeouts = optional(object({
        create = optional(string)
        update = optional(string)
      }))
    }))

    bucket_logging = optional(object({
      region                = optional(string)
      bucket                = optional(string)
      expected_bucket_owner = optional(string)
      target_bucket         = string

      target_grant = optional(set(object({
        grantee = object({
          email_address = optional(string)
          id            = optional(string)
          type          = string
          uri           = optional(string)
        })

        permission = string
      })))

      target_object_key_format = optional(object({
        partitioned_prefix = optional(object({
          partition_date_source = string
        }))

        simple_prefix = optional(object({}))
      }))

      target_prefix = string
    }))

    bucket_metadata_configuration = optional(object({
      region                = optional(string)
      bucket                = optional(string)
      expected_bucket_owner = optional(string)

      metadata_configuration = object({
        inventory_table_configuration = object({
          configuration_state = string
          encryption_configuration = optional(object({
            kms_key_arn             = optional(string)
            kms_key_custom_name     = optional(string)
            replica_key_custom_name = optional(string)
            sse_algorithm           = string
          }))
        })

        journal_table_configuration = object({
          encryption_configuration = optional(object({
            kms_key_arn             = optional(string)
            kms_key_custom_name     = optional(string)
            replica_key_custom_name = optional(string)
            sse_algorithm           = string
          }))

          record_expiration = object({
            days       = optional(number)
            expiration = string
          })
        })
      })

      timeouts = optional(object({
        create = optional(string)
      }))
    }))

    bucket_metrics = optional(map(object({
      region = optional(string)
      bucket = optional(string)
      name   = string

      filter = optional(object({
        access_point = optional(string)
        prefix       = optional(string)
        tags         = optional(map(string))
      }))
    })), {})

    bucket_notification = optional(object({
      region      = optional(string)
      bucket      = optional(string)
      eventbridge = optional(bool)

      lambda_function = optional(list(object({
        events              = set(string)
        filter_prefix       = optional(string)
        filter_suffix       = optional(string)
        id                  = optional(string)
        lambda_function_arn = optional(string)
      })))

      queue = optional(list(object({
        events        = set(string)
        filter_prefix = optional(string)
        filter_suffix = optional(string)
        id            = optional(string)
        queue_arn     = string
      })))

      topic = optional(list(object({
        events        = set(string)
        filter_prefix = optional(string)
        filter_suffix = optional(string)
        id            = optional(string)
        topic_arn     = string
      })))
    }))

    bucket_object_lock_configuration = optional(object({
      region                = optional(string)
      bucket                = optional(string)
      expected_bucket_owner = optional(string)
      object_lock_enabled   = optional(string)

      rule = optional(object({
        default_retention = object({
          days  = optional(number)
          mode  = string
          years = optional(number)
        })
      }))

      token = optional(string)
    }))

    bucket_ownership_controls = optional(object({
      region = optional(string)
      rule = object({
        object_ownership = string
      })
      bucket = optional(string)
    }))

    bucket_policy = optional(object({
      region             = optional(string)
      policy             = optional(string)
      iam_custom_name    = optional(string)
      policy_custom_name = optional(string)
      bucket             = optional(string)
    }))

    bucket_public_access_block = optional(object({
      region                  = optional(string)
      bucket                  = optional(string)
      block_public_acls       = optional(bool)
      block_public_policy     = optional(bool)
      ignore_public_acls      = optional(bool)
      restrict_public_buckets = optional(bool)
      skip_destroy            = optional(bool)
    }))

    bucket_replication_configuration = optional(object({
      region           = optional(string)
      role             = optional(string)
      role_custom_name = optional(string)
      bucket           = optional(string)
      token            = optional(string)

      rule = list(object({
        delete_marker_replication = optional(object({
          status = string
        }))
        destination = object({
          access_control_translation = optional(object({
            owner = string
          }))

          account = optional(string)
          bucket  = string

          encryption_configuration = optional(object({
            replica_kms_key_id          = optional(string)
            replica_kms_key_custom_name = optional(string)
            replica_key_custom_name     = optional(string)
          }))

          metrics = optional(object({
            event_threshold = optional(object({
              minutes = number
            }))

            status = string
          }))

          replication_time = optional(object({
            status = string

            time = object({
              minutes = number
            })
          }))

          storage_class = optional(string)
        })

        existing_object_replication = optional(object({
          status = string
        }))

        filter = optional(object({
          and = optional(object({
            prefix = optional(string)
            tags   = optional(map(string))
          }))

          prefix = optional(string)

          tag = optional(object({
            key   = string
            value = string
          }))
        }))

        id       = optional(string)
        prefix   = optional(string)
        priority = optional(string)

        source_selection_criteria = optional(object({
          replica_modifications = optional(object({
            status = string
          }))
          sse_kms_encrypted_objects = optional(object({
            status = string
          }))
        }))

        status = string
      }))
    }))

    bucket_request_payment_configuration = optional(object({
      region                = optional(string)
      bucket                = optional(string)
      expected_bucket_owner = optional(string)
      payer                 = string
    }))

    bucket_server_side_encryption_configuration = optional(object({
      region                = optional(string)
      bucket                = optional(string)
      expected_bucket_owner = optional(string)

      rule = object({
        apply_server_side_encryption_by_default = optional(object({
          sse_algorithm              = string
          kms_master_key_id          = optional(string)
          kms_master_key_custom_name = optional(string)
          replica_key_custom_name    = optional(string)
        }))

        blocked_encryption_types = optional(list(string))
        bucket_key_enabled       = optional(bool)
      })
    }))

    bucket_versioning = optional(object({
      region = optional(string)
      versioning_configuration = object({
        status     = string
        mfa_delete = optional(string)
      })

      bucket                = optional(string)
      expected_bucket_owner = optional(string)
      mfa                   = optional(string)
    }))

    bucket_website_configuration = optional(object({
      region = optional(string)
      bucket = optional(string)
      error_document = optional(object({
        key = string
      }))

      expected_bucket_owner = optional(string)

      index_document = optional(object({
        suffix = string
      }))

      redirect_all_requests_to = optional(object({
        host_name = string
        protocol  = optional(string)
      }))

      routing_rule = optional(object({
        condition = optional(object({
          http_error_code_returned_equals = optional(number)
          key_prefix_equals               = optional(string)
        }))

        redirect = object({
          host_name               = optional(string)
          http_redirect_code      = optional(number)
          protocol                = optional(string)
          replace_key_prefix_with = optional(string)
          replace_key_with        = optional(string)
        })
      }))

      routing_rules = optional(string)
    }))

    directory_bucket = optional(object({
      region          = optional(string)
      bucket          = string
      data_redundancy = optional(string)
      force_destroy   = optional(bool)

      location = object({
        name = string
        type = optional(string)
      })

      type = optional(string)
      tags = optional(map(string))
    }))

    directory_bucket_access_point_scopes = optional(map(object({
      region                   = optional(string)
      account_id               = optional(string)
      name                     = optional(string)
      access_point_custom_name = optional(string)

      scope = object({
        permissions = optional(list(string))
        prefixes    = optional(list(string))
      })
    })), {})

    multi_region_access_points = optional(map(object({
      region     = optional(string)
      account_id = optional(string)

      details = object({
        name = string
        public_access_block = optional(object({
          block_public_acls       = optional(bool)
          block_public_policy     = optional(bool)
          ignore_public_acls      = optional(bool)
          restrict_public_buckets = optional(bool)
        }))

        region = set(object({
          bucket            = optional(string)
          bucket_account_id = optional(string)
        }))
      })

      timeouts = optional(object({
        create = optional(string)
        delete = optional(string)
      }))
    })), {})

    multi_region_access_point_policies = optional(map(object({
      region     = optional(string)
      account_id = optional(string)

      details = object({
        name                                  = optional(string)
        multi_region_access_point_custom_name = optional(string)
        policy                                = optional(string)
        iam_custom_name                       = optional(string)
        policy_custom_name                    = optional(string)
      })

      timeouts = optional(object({
        create = optional(string)
        update = optional(string)
      }))
    })), {})

    multi_region_access_point_routes = optional(map(object({
      region                                = optional(string)
      account_id                            = optional(string)
      mrap                                  = optional(string)
      multi_region_access_point_custom_name = optional(string)

      route = set(object({
        bucket                  = string
        region                  = string
        traffic_dial_percentage = number
      }))
    })), {})

    objects = optional(map(object({
      region                        = optional(string)
      key                           = string
      bucket                        = optional(string)
      acl                           = optional(string)
      bucket_key_enabled            = optional(bool)
      cache_control                 = optional(string)
      checksum_algorithm            = optional(string)
      content_base64                = optional(string)
      content_disposition           = optional(string)
      content_encoding              = optional(string)
      content_language              = optional(string)
      content_type                  = optional(string)
      content                       = optional(string)
      etag                          = optional(string)
      force_destroy                 = optional(bool)
      kms_key_id                    = optional(string)
      kms_key_custom_name           = optional(string)
      replica_key_custom_name       = optional(string)
      metadata                      = optional(map(string))
      object_lock_legal_hold_status = optional(string)
      object_lock_mode              = optional(string)
      object_lock_retain_until_date = optional(string)

      override_provider = optional(object({
        default_tags = optional(object({
          tags = optional(map(string))
        }))
      }))

      server_side_encryption = optional(string)
      source_hash            = optional(string)
      source_to_file         = optional(string)
      storage_class          = optional(string)
      website_redirect       = optional(string)
      tags                   = optional(map(string))
    })), {})

    storage_lens_configurations = optional(map(object({
      region     = optional(string)
      config_id  = string
      account_id = optional(string)

      storage_lens_configuration = object({
        account_level = object({
          activity_metrics = optional(object({
            enabled = optional(bool)
          }))

          advanced_cost_optimization_metrics = optional(object({
            enabled = optional(bool)
          }))

          advanced_data_protection_metrics = optional(object({
            enabled = optional(bool)
          }))

          advanced_performance_metrics = optional(object({
            enabled = optional(bool)
          }))

          bucket_level = object({
            activity_metrics = optional(object({
              enabled = optional(bool)
            }))

            advanced_cost_optimization_metrics = optional(object({
              enabled = optional(bool)
            }))

            advanced_data_protection_metrics = optional(object({
              enabled = optional(bool)
            }))

            advanced_performance_metrics = optional(object({
              enabled = optional(bool)
            }))

            detailed_status_code_metrics = optional(object({
              enabled = optional(bool)
            }))

            prefix_level = optional(object({
              storage_metrics = object({
                enabled = optional(bool)
                selection_criteria = optional(object({
                  delimiter                    = optional(string)
                  max_depth                    = optional(number)
                  min_storage_bytes_percentage = optional(number)
                }))
              })
            }))
          })

          detailed_status_code_metrics = optional(object({
            enabled = optional(bool)
          }))
        })

        aws_org = optional(object({
          arn = string
        }))

        data_export = optional(object({
          cloud_watch_metrics = optional(object({
            enabled = bool
          }))

          s3_bucket_destination = optional(object({
            account_id = string
            arn        = optional(string)
            encryption = optional(object({
              sse_kms = optional(object({
                key_id                  = optional(string)
                kms_key_custom_name     = optional(string)
                replica_key_custom_name = optional(string)
              }))

              sse_s3 = optional(object({}))
            }))

            format                = string
            output_schema_version = string
            prefix                = optional(string)
          }))

          storage_lens_table_destination = optional(object({
            enabled = bool
            encryption = optional(object({
              sse_kms = optional(object({
                key_id                  = optional(string)
                kms_key_custom_name     = optional(string)
                replica_key_custom_name = optional(string)
              }))

              sse_s3 = optional(object({}))
            }))
          }))
        }))

        expanded_prefixes_data_export = optional(object({
          s3_bucket_destination = optional(object({
            account_id = string
            arn        = optional(string)
            encryption = optional(object({
              sse_kms = optional(object({
                key_id                  = optional(string)
                kms_key_custom_name     = optional(string)
                replica_key_custom_name = optional(string)
              }))

              sse_s3 = optional(object({}))
            }))

            format                = string
            output_schema_version = string
            prefix                = optional(string)
          }))

          storage_lens_table_destination = optional(object({
            enabled = bool
            encryption = optional(object({
              sse_kms = optional(object({
                key_id                  = optional(string)
                kms_key_custom_name     = optional(string)
                replica_key_custom_name = optional(string)
              }))

              sse_s3 = optional(object({}))
            }))
          }))
        }))

        enabled = bool
        exclude = optional(object({
          buckets = optional(set(string))
          regions = optional(set(string))
        }))

        include = optional(object({
          buckets = optional(set(string))
          regions = optional(set(string))
        }))

        prefix_delimiter = optional(string)
      })

      tags = optional(map(string))
    })), {})
  }))

  description = "Keyed collection of s3 definitions"
}

variable "iam_map" {
  type = map(object({
    account_alias = optional(object({
      account_alias = string
    }))

    account_password_policy = optional(object({
      allow_users_to_change_password = optional(bool)
      hard_expiry                    = optional(bool)
      max_password_age               = optional(number)
      minimum_password_length        = optional(number)
      password_reuse_prevention      = optional(number)
      require_lowercase_characters   = optional(bool)
      require_numbers                = optional(bool)
      require_symbols                = optional(bool)
      require_uppercase_characters   = optional(bool)
    }))

    role = optional(object({
      assume_role_policy                      = optional(string)
      assume_role_policy_document_custom_name = optional(string)
      description                             = optional(string)
      force_detach_policies                   = optional(bool)
      inline_policy = optional(set(object({
        name   = string
        policy = string
      })), [])

      managed_policy_arns              = optional(set(string))
      max_session_duration             = optional(number)
      name                             = optional(string)
      name_prefix                      = optional(string)
      path                             = optional(string)
      permissions_boundary             = optional(string)
      permissions_boundary_custom_name = optional(string)

      tags = optional(map(string))
    }))

    policy_documents = optional(map(object({
      override_policy_documents = optional(list(string))
      policy_id                 = optional(string)
      source_policy_documents   = optional(list(string))
      policy_version            = optional(string)

      statement = optional(list(object({
        actions       = optional(set(string))
        effect        = optional(string)
        not_actions   = optional(set(string))
        not_resources = optional(set(string))
        resources     = optional(set(string))
        sid           = optional(string)

        condition = optional(set(object({
          test     = string
          variable = string
          values   = list(any)
        })), [])

        principals = optional(set(object({
          identifiers                = set(string)
          saml_provider_custom_names = optional(set(string), [])
          type                       = string
        })), [])

        not_principals = optional(set(object({
          identifiers                = set(string)
          saml_provider_custom_names = optional(set(string), [])
          type                       = string
        })), [])
      })), [])
    })), {})

    role_policies = optional(map(object({
      name                        = optional(string)
      name_prefix                 = optional(string)
      policy                      = optional(string)
      policy_document_custom_name = optional(string)
      role                        = optional(string)
    })), {})

    role_policy_attachments = optional(list(object({
      custom_name        = optional(string)
      policy_arn         = optional(string)
      policy_custom_name = optional(string)
      role               = optional(string)
    })), [])

    role_policies_exclusive = optional(object({
      role_name           = optional(string)
      policy_names        = set(string)
      policy_custom_names = optional(set(string), [])
    }))

    instance_profile = optional(object({
      name        = optional(string)
      name_prefix = optional(string)
      path        = optional(string)
      role        = optional(string)
      tags        = optional(map(string))
    }))

    policy_attachments_exclusive = optional(object({
      policy_arns         = set(string)
      policy_custom_names = optional(set(string), [])
      role_name           = optional(string)
    }))

    policies = optional(map(object({
      policy                            = optional(string)
      policy_custom_name                = optional(string)
      delay_after_policy_creation_in_ms = optional(number)
      description                       = optional(string)
      name                              = optional(string)
      name_prefix                       = optional(string)
      path                              = optional(string)
      tags                              = optional(map(string))
    })), {})

    users = optional(map(object({
      name                             = string
      path                             = optional(string)
      permissions_boundary             = optional(string)
      permissions_boundary_custom_name = optional(string)
      force_destroy                    = optional(bool)
      tags                             = optional(map(string))
    })), {})

    user_login_profiles = optional(map(object({
      user                    = optional(string)
      user_custom_name        = optional(string)
      pgp_key                 = optional(string)
      password_length         = optional(number)
      password_reset_required = optional(bool)
    })), {})

    access_keys = optional(map(object({
      user             = optional(string)
      user_custom_name = optional(string)
      pgp_key          = optional(string)
      status           = optional(string)
    })), {})

    user_ssh_keys = optional(map(object({
      username         = optional(string)
      user_custom_name = optional(string)
      encoding         = string
      public_key       = string
      status           = optional(string)
    })), {})

    groups = optional(map(object({
      name = string
      path = optional(string)
    })), {})

    user_policies = optional(map(object({
      name                        = optional(string)
      name_prefix                 = optional(string)
      policy                      = optional(string)
      policy_document_custom_name = optional(string)
      user                        = optional(string)
      user_custom_name            = optional(string)
    })), {})

    user_policy_attachments = optional(map(object({
      user               = optional(string)
      user_custom_name   = optional(string)
      policy_arn         = optional(string)
      policy_custom_name = optional(string)
    })), {})

    user_policies_exclusive = optional(map(object({
      user_name           = optional(string)
      user_custom_name    = optional(string)
      policy_names        = set(string)
      policy_custom_names = optional(set(string), [])
    })), {})

    user_policy_attachments_exclusive = optional(map(object({
      user_name           = optional(string)
      user_custom_name    = optional(string)
      policy_arns         = set(string)
      policy_custom_names = optional(set(string), [])
    })), {})

    group_policies = optional(map(object({
      name                        = optional(string)
      name_prefix                 = optional(string)
      policy                      = optional(string)
      policy_document_custom_name = optional(string)
      group                       = optional(string)
      group_custom_name           = optional(string)
    })), {})

    group_policy_attachments = optional(map(object({
      group              = optional(string)
      group_custom_name  = optional(string)
      policy_arn         = optional(string)
      policy_custom_name = optional(string)
    })), {})

    group_policies_exclusive = optional(map(object({
      group_name          = optional(string)
      group_custom_name   = optional(string)
      policy_names        = set(string)
      policy_custom_names = optional(set(string), [])
    })), {})

    group_policy_attachments_exclusive = optional(map(object({
      group_name          = optional(string)
      group_custom_name   = optional(string)
      policy_arns         = set(string)
      policy_custom_names = optional(set(string), [])
    })), {})

    group_memberships = optional(map(object({
      name              = string
      users             = set(string)
      user_custom_names = optional(set(string), [])
      group             = optional(string)
      group_custom_name = optional(string)
    })), {})

    user_group_memberships = optional(map(object({
      user   = optional(string)
      groups = optional(set(string), [])
    })), {})

    openid_connect_providers = optional(map(object({
      url             = string
      client_id_list  = set(string)
      thumbprint_list = optional(list(string))
      tags            = optional(map(string))
    })), {})

    saml_providers = optional(map(object({
      name                   = string
      saml_metadata_document = string
      tags                   = optional(map(string))
    })), {})

    service_linked_roles = optional(map(object({
      aws_service_name = string
      custom_suffix    = optional(string)
      description      = optional(string)
      tags             = optional(map(string))
    })), {})
  }))

  description = "Keyed collection of iam definitions"
  default     = {}
}

variable "kms_map" {
  type = map(object({
    key = optional(object({
      region                             = optional(string)
      description                        = optional(string)
      key_usage                          = optional(string)
      custom_key_store_id                = optional(string)
      custom_key_store_custom_name       = optional(string)
      customer_master_key_spec           = optional(string)
      policy                             = optional(string)
      iam_custom_name                    = optional(string)
      policy_custom_name                 = optional(string)
      bypass_policy_lockout_safety_check = optional(bool)
      deletion_window_in_days            = optional(number)
      is_enabled                         = optional(bool)
      enable_key_rotation                = optional(bool)
      rotation_period_in_days            = optional(number)
      multi_region                       = optional(bool)
      xks_key_id                         = optional(string)
      tags                               = optional(map(string))
      timeouts = optional(object({
        create = optional(string)
      }))
    }))

    external_key = optional(object({
      region                             = optional(string)
      description                        = optional(string)
      key_spec                           = optional(string)
      key_usage                          = optional(string)
      policy                             = optional(string)
      iam_custom_name                    = optional(string)
      policy_custom_name                 = optional(string)
      bypass_policy_lockout_safety_check = optional(bool)
      deletion_window_in_days            = optional(number)
      enabled                            = optional(bool)
      key_material_base64                = optional(string)
      multi_region                       = optional(bool)
      valid_to                           = optional(string)
      tags                               = optional(map(string))
    }))

    existing_key = optional(object({
      region       = optional(string)
      key_id       = string
      grant_tokens = optional(list(string))
    }))

    aliases = optional(map(object({
      region                  = optional(string)
      name                    = optional(string)
      name_prefix             = optional(string)
      target_key_id           = optional(string)
      replica_key_custom_name = optional(string)
    })), {})

    grants = optional(map(object({
      region                                   = optional(string)
      key_id                                   = optional(string)
      replica_key_custom_name                  = optional(string)
      name                                     = optional(string)
      grantee_principal                        = optional(string)
      grantee_iam_custom_name                  = optional(string)
      grantee_role_custom_name                 = optional(string)
      grantee_user_custom_name                 = optional(string)
      grantee_service_linked_role_custom_name  = optional(string)
      operations                               = set(string)
      retiring_principal                       = optional(string)
      retiring_iam_custom_name                 = optional(string)
      retiring_role_custom_name                = optional(string)
      retiring_user_custom_name                = optional(string)
      retiring_service_linked_role_custom_name = optional(string)
      retire_on_delete                         = optional(bool)
      grant_creation_tokens                    = optional(set(string))
      constraints = optional(set(object({
        encryption_context_equals = optional(map(string))
        encryption_context_subset = optional(map(string))
      })))
    })), {})

    replica_keys = optional(map(object({
      region                             = optional(string)
      primary_key_arn                    = optional(string)
      description                        = optional(string)
      policy                             = optional(string)
      iam_custom_name                    = optional(string)
      policy_custom_name                 = optional(string)
      bypass_policy_lockout_safety_check = optional(bool)
      deletion_window_in_days            = optional(number)
      enabled                            = optional(bool)
      tags                               = optional(map(string))
    })), {})

    replica_external_keys = optional(map(object({
      region                             = optional(string)
      primary_key_arn                    = optional(string)
      description                        = optional(string)
      policy                             = optional(string)
      iam_custom_name                    = optional(string)
      policy_custom_name                 = optional(string)
      bypass_policy_lockout_safety_check = optional(bool)
      deletion_window_in_days            = optional(number)
      enabled                            = optional(bool)
      key_material_base64                = optional(string)
      valid_to                           = optional(string)
      tags                               = optional(map(string))
    })), {})

    key_policy = optional(object({
      region                             = optional(string)
      key_id                             = optional(string)
      policy                             = optional(string)
      iam_custom_name                    = optional(string)
      policy_custom_name                 = optional(string)
      bypass_policy_lockout_safety_check = optional(bool)
    }))

    custom_key_stores = optional(map(object({
      region                   = optional(string)
      custom_key_store_name    = string
      custom_key_store_type    = optional(string)
      cloud_hsm_cluster_id     = optional(string)
      key_store_password       = optional(string)
      trust_anchor_certificate = optional(string)
      xks_proxy_authentication_credential = optional(object({
        access_key_id         = string
        raw_secret_access_key = string
      }))
      xks_proxy_connectivity              = optional(string)
      xks_proxy_uri_endpoint              = optional(string)
      xks_proxy_uri_path                  = optional(string)
      xks_proxy_vpc_endpoint_service_name = optional(string)
      timeouts = optional(object({
        create = optional(string)
        update = optional(string)
        delete = optional(string)
      }))
    })), {})

    public_key = optional(object({
      region                  = optional(string)
      key_id                  = optional(string)
      replica_key_custom_name = optional(string)
      grant_tokens            = optional(list(string))
    }))
  }))

  description = "Keyed collection of kms definitions"
  default     = {}
}
