output "s3_access_grant_account_ids" {
  value       = module.s3.s3_access_grant_account_ids
  description = "AWS account ID of the S3 Access Grants instance."
}

output "s3_access_grant_arns" {
  value       = module.s3.s3_access_grant_arns
  description = "ARN of the S3 Access Grant."
}

output "s3_access_grant_ids" {
  value       = module.s3.s3_access_grant_ids
  description = "Unique ID of the S3 Access Grant."
}

output "s3_access_grant_scopes" {
  value       = module.s3.s3_access_grant_scopes
  description = "S3 scope covered by the access grant."
}

output "s3_access_grant_resource_ids" {
  value       = module.s3.s3_access_grant_resource_ids
  description = "AWS account ID and access grant ID separated by a comma (,)."
}

output "s3_access_grant_tags_all" {
  value       = module.s3.s3_access_grant_tags_all
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
}

output "s3_access_grants_instance_account_ids" {
  value       = module.s3.s3_access_grants_instance_account_ids
  description = "AWS account ID of the S3 Access Grants instance."
}

output "s3_access_grants_instance_arns" {
  value       = module.s3.s3_access_grants_instance_arns
  description = "ARN of the S3 Access Grants instance."
}

output "s3_access_grants_instance_ids" {
  value       = module.s3.s3_access_grants_instance_ids
  description = "Unique ID of the S3 Access Grants instance."
}

output "s3_access_grants_instance_resource_ids" {
  value       = module.s3.s3_access_grants_instance_resource_ids
  description = "AWS account ID used as the Terraform resource ID of the S3 Access Grants instance."
}

output "s3_access_grants_instance_identity_center_application_arns" {
  value       = module.s3.s3_access_grants_instance_identity_center_application_arns
  description = "ARN of the IAM Identity Center application associated with the S3 Access Grants instance."
}

output "s3_access_grants_instance_regions" {
  value       = module.s3.s3_access_grants_instance_regions
  description = "AWS Region of the S3 Access Grants instance."
}

output "s3_access_grants_instance_tags_all" {
  value       = module.s3.s3_access_grants_instance_tags_all
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
}

output "s3_access_grants_instance_resource_policy_ids" {
  value       = module.s3.s3_access_grants_instance_resource_policy_ids
  description = "AWS account ID used as the Terraform resource ID of the S3 Access Grants instance resource policy."
}

output "s3_access_grants_location_account_ids" {
  value       = module.s3.s3_access_grants_location_account_ids
  description = "AWS account ID of the S3 Access Grants instance."
}

output "s3_access_grants_location_arns" {
  value       = module.s3.s3_access_grants_location_arns
  description = "ARN of the S3 Access Grants location."
}

output "s3_access_grants_location_ids" {
  value       = module.s3.s3_access_grants_location_ids
  description = "Unique ID of the registered S3 Access Grants location."
}

output "s3_access_grants_location_resource_ids" {
  value       = module.s3.s3_access_grants_location_resource_ids
  description = "AWS account ID and access grants location ID separated by a comma (,)."
}

output "s3_access_grants_location_regions" {
  value       = module.s3.s3_access_grants_location_regions
  description = "AWS Region of the S3 Access Grants location."
}

output "s3_access_grants_location_tags_all" {
  value       = module.s3.s3_access_grants_location_tags_all
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
}

output "s3_access_point_account_ids" {
  value       = module.s3.s3_access_point_account_ids
  description = "AWS account ID that owns the access point."
}

output "s3_access_point_aliases" {
  value       = module.s3.s3_access_point_aliases
  description = "The alias of the access point."
}

output "s3_access_point_arns" {
  value       = module.s3.s3_access_point_arns
  description = "The ARN of the access point."
}

output "s3_access_point_domain_names" {
  value       = module.s3.s3_access_point_domain_names
  description = "The DNS domain name of the access point."
}

output "s3_access_point_endpoints" {
  value       = module.s3.s3_access_point_endpoints
  description = "The endpoints of the access point."
}

output "s3_access_point_has_public_access_policies" {
  value       = module.s3.s3_access_point_has_public_access_policies
  description = "Whether the access point has a policy that allows public access."
}

output "s3_access_point_ids" {
  value       = module.s3.s3_access_point_ids
  description = "The AWS account ID and access point name separated by a colon (:), or the access point ARN for S3 on Outposts."
}

output "s3_access_point_names" {
  value       = module.s3.s3_access_point_names
  description = "Name of the access point."
}

output "s3_access_point_network_origins" {
  value       = module.s3.s3_access_point_network_origins
  description = "Whether the access point allows access from the Internet or a VPC."
}

output "s3_access_point_regions" {
  value       = module.s3.s3_access_point_regions
  description = "AWS Region of the access point."
}

output "s3_access_point_tags_all" {
  value       = module.s3.s3_access_point_tags_all
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
}

output "s3_access_point_policy_has_public_access_policies" {
  value       = module.s3.s3_access_point_policy_has_public_access_policies
  description = "Whether the access point has a policy that allows public access."
}

output "s3_access_point_policy_ids" {
  value       = module.s3.s3_access_point_policy_ids
  description = "The AWS account ID and access point name separated by a colon (:), or the access point ARN for S3 on Outposts."
}

output "s3_bucket_ids" {
  value       = module.s3.s3_bucket_ids
  description = "The name of the bucket."
}

output "s3_bucket_arns" {
  value       = module.s3.s3_bucket_arns
  description = "The ARN of the bucket. Will be of format arn:aws:s3:::bucketname."
}

output "s3_bucket_domain_names" {
  value       = module.s3.s3_bucket_domain_names
  description = "The bucket domain name. Will be of format bucketname.s3.amazonaws.com."
}

output "s3_bucket_regional_domain_names" {
  value       = module.s3.s3_bucket_regional_domain_names
  description = "The bucket region-specific domain name. The bucket domain name including the region name, please refer here for format. Note: The AWS CloudFront allows specifying S3 region-specific endpoint when creating S3 origin, it will prevent redirect issues from CloudFront to S3 Origin URL."
}

output "s3_bucket_namespaces" {
  value       = module.s3.s3_bucket_namespaces
  description = "The namespace of the bucket."
}

output "s3_bucket_hosted_zone_ids" {
  value       = module.s3.s3_bucket_hosted_zone_ids
  description = "The Route 53 Hosted Zone ID for this bucket's region."
}

output "s3_bucket_regions" {
  value       = module.s3.s3_bucket_regions
  description = "The AWS region this bucket resides in."
}

output "s3_bucket_tags_all" {
  value       = module.s3.s3_bucket_tags_all
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
}

output "s3_accelerate_configuration_ids" {
  value       = module.s3.s3_accelerate_configuration_ids
  description = "The bucket or bucket and expected_bucket_owner separated by a comma (,) if the latter is provided."
}

output "s3_acl_ids" {
  value       = module.s3.s3_acl_ids
  description = "The bucket, expected_bucket_owner (if configured), and acl (if configured) separated by commas (,)."
}

output "s3_cors_configuration_ids" {
  value       = module.s3.s3_cors_configuration_ids
  description = "The bucket or bucket and expected_bucket_owner separated by a comma (,) if the latter is provided."
}

output "s3_intelligent_tiering_configuration_ids" {
  value       = module.s3.s3_intelligent_tiering_configuration_ids
  description = "The bucket and intelligent tiering configuration name separated by a colon (:)."
}

output "s3_lifecycle_configuration_ids" {
  value       = module.s3.s3_lifecycle_configuration_ids
  description = "The bucket or bucket and expected_bucket_owner separated by a comma (,) if the latter is provided."
}

output "s3_lifecycle_configuration_rules" {
  value       = module.s3.s3_lifecycle_configuration_rules
  description = "The lifecycle rules of the bucket, excluding the deprecated top-level prefix attribute."
}

output "s3_logging_ids" {
  value       = module.s3.s3_logging_ids
  description = "The bucket or bucket and expected_bucket_owner separated by a comma (,) if the latter is provided."
}

output "s3_metadata_configuration_table_bucket_arns" {
  value       = module.s3.s3_metadata_configuration_table_bucket_arns
  description = "The ARN of the table bucket storing the metadata tables."
}

output "s3_metadata_configuration_table_bucket_types" {
  value       = module.s3.s3_metadata_configuration_table_bucket_types
  description = "The type of the table bucket storing the metadata tables."
}

output "s3_metadata_configuration_table_namespaces" {
  value       = module.s3.s3_metadata_configuration_table_namespaces
  description = "The namespace storing the metadata tables."
}

output "s3_metadata_configuration_inventory_table_arns" {
  value       = module.s3.s3_metadata_configuration_inventory_table_arns
  description = "The ARN of the inventory table."
}

output "s3_metadata_configuration_inventory_table_names" {
  value       = module.s3.s3_metadata_configuration_inventory_table_names
  description = "The name of the inventory table."
}

output "s3_metadata_configuration_journal_table_arns" {
  value       = module.s3.s3_metadata_configuration_journal_table_arns
  description = "The ARN of the journal table."
}

output "s3_metadata_configuration_journal_table_names" {
  value       = module.s3.s3_metadata_configuration_journal_table_names
  description = "The name of the journal table."
}

output "s3_metric_ids" {
  value       = module.s3.s3_metric_ids
  description = "The bucket and metrics configuration name separated by a colon (:)."
}

output "s3_notification_ids" {
  value       = module.s3.s3_notification_ids
  description = "The name of the bucket."
}

output "s3_object_lock_configuration_ids" {
  value       = module.s3.s3_object_lock_configuration_ids
  description = "The bucket or bucket and expected_bucket_owner separated by a comma (,) if the latter is provided."
}

output "s3_ownership_controls_ids" {
  value       = module.s3.s3_ownership_controls_ids
  description = "S3 Bucket name."
}

output "s3_bucket_policies" {
  value       = module.s3.s3_bucket_policies
  description = "The policy of the bucket."
}

output "s3_public_access_block_ids" {
  value       = module.s3.s3_public_access_block_ids
  description = "Name of the S3 bucket the configuration is attached to"
}

output "s3_replication_configuration_ids" {
  value       = module.s3.s3_replication_configuration_ids
  description = "S3 source bucket name"
}

output "s3_request_payment_configuration_ids" {
  value       = module.s3.s3_request_payment_configuration_ids
  description = "The bucket or bucket and expected_bucket_owner separated by a comma (,) if the latter is provided."
}

output "s3_server_side_encryption_configuration_ids" {
  value       = module.s3.s3_server_side_encryption_configuration_ids
  description = "The bucket or bucket and expected_bucket_owner separated by a comma (,) if the latter is provided."
}

output "s3_versioning_ids" {
  value       = module.s3.s3_versioning_ids
  description = "The name of the bucket."
}

output "s3_versioning_statuses" {
  value       = module.s3.s3_versioning_statuses
  description = "The versioning status of the bucket. Valid values: Enabled, Suspended, or Disabled."
}

output "s3_website_configuration_ids" {
  value       = module.s3.s3_website_configuration_ids
  description = "The bucket or bucket and expected_bucket_owner separated by a comma (,) if the latter is provided."
}

output "s3_website_configuration_website_domains" {
  value       = module.s3.s3_website_configuration_website_domains
  description = "Domain of the website endpoint. This is used to create Route 53 alias records."
}

output "s3_website_configuration_website_endpoints" {
  value       = module.s3.s3_website_configuration_website_endpoints
  description = "Website endpoint"
}

output "s3_directory_bucket_ids" {
  value       = module.s3.s3_directory_bucket_ids
  description = "The name of the directory bucket."
}

output "s3_directory_bucket_arns" {
  value       = module.s3.s3_directory_bucket_arns
  description = "The ARN of the directory bucket."
}

output "s3_directory_bucket_regions" {
  value       = module.s3.s3_directory_bucket_regions
  description = "The AWS region this directory bucket resides in."
}

output "s3_directory_bucket_tags_all" {
  value       = module.s3.s3_directory_bucket_tags_all
  description = "A map of tags assigned to the directory bucket, including those inherited from the provider default_tags configuration block."
}

output "s3_multi_region_access_point_account_ids" {
  value       = module.s3.s3_multi_region_access_point_account_ids
  description = "AWS account ID that owns the Multi-Region Access Point."
}

output "s3_multi_region_access_point_aliases" {
  value       = module.s3.s3_multi_region_access_point_aliases
  description = "Alias of the Multi-Region Access Point."
}

output "s3_multi_region_access_point_arns" {
  value       = module.s3.s3_multi_region_access_point_arns
  description = "ARN of the Multi-Region Access Point."
}

output "s3_multi_region_access_point_domain_names" {
  value       = module.s3.s3_multi_region_access_point_domain_names
  description = "DNS domain name of the Multi-Region Access Point."
}

output "s3_multi_region_access_point_ids" {
  value       = module.s3.s3_multi_region_access_point_ids
  description = "AWS account ID and Multi-Region Access Point name separated by a colon (:)."
}

output "s3_multi_region_access_point_names" {
  value       = module.s3.s3_multi_region_access_point_names
  description = "Name of the Multi-Region Access Point."
}

output "s3_multi_region_access_point_regions" {
  value       = module.s3.s3_multi_region_access_point_regions
  description = "Bucket names, bucket account IDs, and Regions associated with the Multi-Region Access Point."
}

output "s3_multi_region_access_point_statuses" {
  value       = module.s3.s3_multi_region_access_point_statuses
  description = "Current status of the Multi-Region Access Point."
}

output "s3_multi_region_access_point_policy_established_policies" {
  value       = module.s3.s3_multi_region_access_point_policy_established_policies
  description = "Last established policy for the Multi-Region Access Point."
}

output "s3_multi_region_access_point_policy_ids" {
  value       = module.s3.s3_multi_region_access_point_policy_ids
  description = "AWS account ID and Multi-Region Access Point name separated by a colon (:)."
}

output "s3_multi_region_access_point_policy_proposed_policies" {
  value       = module.s3.s3_multi_region_access_point_policy_proposed_policies
  description = "Proposed policy for the Multi-Region Access Point."
}

output "s3_object_ids" {
  value       = module.s3.s3_object_ids
  description = "The bucket name and object key separated by a slash (/)."
}

output "s3_object_keys" {
  value       = module.s3.s3_object_keys
  description = "The key of the object within the bucket."
}

output "s3_object_arns" {
  value       = module.s3.s3_object_arns
  description = "ARN of the object."
}

output "s3_object_checksums_crc32" {
  value       = module.s3.s3_object_checksums_crc32
  description = "The base64-encoded, 32-bit CRC32 checksum of the object."
}

output "s3_object_checksums_crc32c" {
  value       = module.s3.s3_object_checksums_crc32c
  description = "The base64-encoded, 32-bit CRC32C checksum of the object."
}

output "s3_object_checksums_crc64nvme" {
  value       = module.s3.s3_object_checksums_crc64nvme
  description = "The base64-encoded, 64-bit CRC64NVME checksum of the object."
}

output "s3_object_checksums_sha1" {
  value       = module.s3.s3_object_checksums_sha1
  description = "The base64-encoded, 160-bit SHA-1 digest of the object."
}

output "s3_object_checksums_sha256" {
  value       = module.s3.s3_object_checksums_sha256
  description = "The base64-encoded, 256-bit SHA-256 digest of the object."
}

output "s3_object_etags" {
  value       = module.s3.s3_object_etags
  description = "ETag generated for the object (an MD5 sum of the object content). For plaintext objects or objects encrypted with an AWS-managed key, the hash is an MD5 digest of the object data. For objects encrypted with a KMS key or objects created by either the Multipart Upload or Part Copy operation, the hash is not an MD5 digest, regardless of the method of encryption. More information on possible values can be found on Common Response Headers."
}

output "s3_object_tags_all" {
  value       = module.s3.s3_object_tags_all
  description = "Map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
}

output "s3_object_version_ids" {
  value       = module.s3.s3_object_version_ids
  description = "Unique version ID value for the object, if bucket versioning is enabled."
}

output "s3_storage_lens_configuration_arns" {
  value       = module.s3.s3_storage_lens_configuration_arns
  description = "ARN of the S3 Storage Lens configuration."
}

output "s3_storage_lens_configuration_ids" {
  value       = module.s3.s3_storage_lens_configuration_ids
  description = "AWS account ID and Storage Lens configuration ID separated by a colon."
}

output "s3_storage_lens_configuration_tags_all" {
  value       = module.s3.s3_storage_lens_configuration_tags_all
  description = "Map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
}

output "iam_account_password_policy_expire_passwords" {
  value       = module.iam.iam_account_password_policy_expire_passwords
  description = "Indicates whether passwords in the account expire."
}

output "iam_role_arns" {
  value       = module.iam.iam_role_arns
  description = "Amazon Resource Name (ARN) specifying the role."
}

output "iam_role_create_dates" {
  value       = module.iam.iam_role_create_dates
  description = "Creation date of the IAM role."
}

output "iam_role_ids" {
  value       = module.iam.iam_role_ids
  description = "ID of the role."
}

output "iam_role_names" {
  value       = module.iam.iam_role_names
  description = "Name of the role."
}

output "iam_role_tags_all" {
  value       = module.iam.iam_role_tags_all
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
}

output "iam_role_unique_ids" {
  value       = module.iam.iam_role_unique_ids
  description = "Stable and unique string identifying the role."
}

output "iam_policy_document_ids" {
  value       = module.iam.iam_policy_document_ids
  description = "The iam policy document id."
}

output "iam_policy_document_jsons" {
  value       = module.iam.iam_policy_document_jsons
  description = "Standard JSON policy document rendered based on the arguments above."
}

output "iam_role_policy_ids" {
  value       = module.iam.iam_role_policy_ids
  description = "The role policy ID, in the form of role_name:role_policy_name."
}

output "iam_role_policy_names" {
  value       = module.iam.iam_role_policy_names
  description = "The name of the policy."
}

output "iam_role_policy_policies" {
  value       = module.iam.iam_role_policy_policies
  description = "The policy document attached to the role."
}

output "iam_role_policy_roles" {
  value       = module.iam.iam_role_policy_roles
  description = "The name of the role associated with the policy."
}

output "iam_instance_profile_arns" {
  value       = module.iam.iam_instance_profile_arns
  description = "ARN assigned by AWS to the instance profile."
}

output "iam_instance_profile_create_dates" {
  value       = module.iam.iam_instance_profile_create_dates
  description = "Creation timestamp of the instance profile."
}

output "iam_instance_profile_ids" {
  value       = module.iam.iam_instance_profile_ids
  description = "Instance profile's ID."
}

output "iam_instance_profile_tags_all" {
  value       = module.iam.iam_instance_profile_tags_all
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
}

output "iam_instance_profile_unique_ids" {
  value       = module.iam.iam_instance_profile_unique_ids
  description = "Unique ID assigned by AWS."
}

output "iam_policy_arns" {
  value       = module.iam.iam_policy_arns
  description = "ARN assigned by AWS to this policy."
}

output "iam_policy_names" {
  value       = module.iam.iam_policy_names
  description = "ARN assigned by AWS to this policy."
}

output "iam_policy_attachment_counts" {
  value       = module.iam.iam_policy_attachment_counts
  description = "Number of entities (users, groups, and roles) that the policy is attached to."
}

output "iam_policy_ids" {
  value       = module.iam.iam_policy_ids
  description = "ARN assigned by AWS to this policy."
}

output "iam_policy_policy_ids" {
  value       = module.iam.iam_policy_policy_ids
  description = "Policy's ID."
}

output "iam_policy_tags_all" {
  value       = module.iam.iam_policy_tags_all
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
}

output "iam_user_arns" {
  value       = module.iam.iam_user_arns
  description = "The ARN assigned by AWS for this user."
}

output "iam_user_ids" {
  value       = module.iam.iam_user_ids
  description = "The user's name."
}

output "iam_user_names" {
  value       = module.iam.iam_user_names
  description = "The user's name."
}

output "iam_user_tags_all" {
  value       = module.iam.iam_user_tags_all
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
}

output "iam_user_unique_ids" {
  value       = module.iam.iam_user_unique_ids
  description = "The unique ID assigned by AWS."
}

output "iam_user_policy_ids" {
  value       = module.iam.iam_user_policy_ids
  description = "The user policy ID, in the form of user_name:user_policy_name."
}

output "iam_user_policy_names" {
  value       = module.iam.iam_user_policy_names
  description = "The name of the policy."
}

output "iam_user_policy_policies" {
  value       = module.iam.iam_user_policy_policies
  description = "The policy document attached to the user."
}

output "iam_user_policy_users" {
  value       = module.iam.iam_user_policy_users
  description = "The name of the user associated with the policy."
}

output "iam_group_policy_ids" {
  value       = module.iam.iam_group_policy_ids
  description = "The group policy ID, in the form of group_name:group_policy_name."
}

output "iam_group_policy_names" {
  value       = module.iam.iam_group_policy_names
  description = "The name of the policy."
}

output "iam_group_policy_policies" {
  value       = module.iam.iam_group_policy_policies
  description = "The policy document attached to the group."
}

output "iam_group_policy_groups" {
  value       = module.iam.iam_group_policy_groups
  description = "The name of the group associated with the policy."
}

output "iam_user_login_profile_ids" {
  value       = module.iam.iam_user_login_profile_ids
  description = "The IAM user's name."
}

output "iam_user_login_profile_passwords" {
  value       = module.iam.iam_user_login_profile_passwords
  description = "The generated password, available when pgp_key is not provided."
  sensitive   = true
}

output "iam_user_login_profile_key_fingerprints" {
  value       = module.iam.iam_user_login_profile_key_fingerprints
  description = "The fingerprint of the PGP key used to encrypt the password."
}

output "iam_user_login_profile_encrypted_passwords" {
  value       = module.iam.iam_user_login_profile_encrypted_passwords
  description = "The encrypted password, base64 encoded."
}

output "iam_access_key_ids" {
  value       = module.iam.iam_access_key_ids
  description = "The access key ID."
}

output "iam_access_key_create_dates" {
  value       = module.iam.iam_access_key_create_dates
  description = "Date and time in RFC3339 format that the access key was created."
}

output "iam_access_key_encrypted_secrets" {
  value       = module.iam.iam_access_key_encrypted_secrets
  description = "The encrypted secret access key, base64 encoded."
}

output "iam_access_key_encrypted_ses_smtp_passwords_v4" {
  value       = module.iam.iam_access_key_encrypted_ses_smtp_passwords_v4
  description = "The encrypted SES SMTP password, base64 encoded."
}

output "iam_access_key_key_fingerprints" {
  value       = module.iam.iam_access_key_key_fingerprints
  description = "The fingerprint of the PGP key used to encrypt the secret."
}

output "iam_access_key_secrets" {
  value       = module.iam.iam_access_key_secrets
  description = "The secret access key, available when pgp_key is not provided."
  sensitive   = true
}

output "iam_access_key_ses_smtp_passwords_v4" {
  value       = module.iam.iam_access_key_ses_smtp_passwords_v4
  description = "The secret access key converted into an SES SMTP password for the provider region."
  sensitive   = true
}

output "iam_access_key_statuses" {
  value       = module.iam.iam_access_key_statuses
  description = "The status of the access key."
}

output "iam_user_ssh_key_ids" {
  value       = module.iam.iam_user_ssh_key_ids
  description = "The unique identifier for the SSH public key."
}

output "iam_user_ssh_key_ssh_public_key_ids" {
  value       = module.iam.iam_user_ssh_key_ssh_public_key_ids
  description = "The unique identifier for the SSH public key."
}

output "iam_user_ssh_key_fingerprints" {
  value       = module.iam.iam_user_ssh_key_fingerprints
  description = "The MD5 message digest of the SSH public key."
}

output "iam_user_ssh_key_statuses" {
  value       = module.iam.iam_user_ssh_key_statuses
  description = "The status of the SSH public key."
}

output "iam_group_membership_names" {
  value       = module.iam.iam_group_membership_names
  description = "The name identifying the group membership."
}

output "iam_group_membership_users" {
  value       = module.iam.iam_group_membership_users
  description = "The IAM user names associated with the group."
}

output "iam_group_membership_groups" {
  value       = module.iam.iam_group_membership_groups
  description = "The IAM group name associated with the membership."
}

output "iam_group_arns" {
  value       = module.iam.iam_group_arns
  description = "The ARN assigned by AWS for this group."
}

output "iam_group_ids" {
  value       = module.iam.iam_group_ids
  description = "The group's name."
}

output "iam_group_names" {
  value       = module.iam.iam_group_names
  description = "The group's name."
}

output "iam_group_paths" {
  value       = module.iam.iam_group_paths
  description = "The path of the group in IAM."
}

output "iam_group_unique_ids" {
  value       = module.iam.iam_group_unique_ids
  description = "The unique ID assigned by AWS."
}

output "iam_openid_connect_provider_arns" {
  value       = module.iam.iam_openid_connect_provider_arns
  description = "The ARN assigned by AWS for this provider."
}

output "iam_openid_connect_provider_tags_all" {
  value       = module.iam.iam_openid_connect_provider_tags_all
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
}

output "kms_key_arns" {
  value       = module.kms.kms_key_arns
  description = "The Amazon Resource Name (ARN) of the key."
}

output "kms_key_ids" {
  value       = module.kms.kms_key_ids
  description = "The globally unique identifier for the key."
}

output "kms_key_tags_all" {
  value       = module.kms.kms_key_tags_all
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
}

output "kms_alias_arns" {
  value       = module.kms.kms_alias_arns
  description = "The Amazon Resource Name (ARN) of the key alias."
}

output "kms_alias_target_key_arns" {
  value       = module.kms.kms_alias_target_key_arns
  description = "The Amazon Resource Name (ARN) of the target key identifier."
}

output "kms_key_regions" {
  value       = module.kms.kms_key_regions
  description = "Regions where the keys are managed."
}

output "kms_key_policies" {
  value       = module.kms.kms_key_policies
  description = "Map of key policy JSON documents."
}

output "kms_key_specs" {
  value       = module.kms.kms_key_specs
  description = "Types of key material."
}

output "kms_key_usages" {
  value       = module.kms.kms_key_usages
  description = "Permitted cryptographic uses of the keys."
}

output "kms_key_states" {
  value       = module.kms.kms_key_states
  description = "States of imported and existing keys."
}

output "kms_key_expiration_models" {
  value       = module.kms.kms_key_expiration_models
  description = "Whether imported key material expires."
}

output "kms_key_valid_to" {
  value       = module.kms.kms_key_valid_to
  description = "Expiration times of imported key material."
}

output "kms_alias_names" {
  value       = module.kms.kms_alias_names
  description = "Names of the key aliases."
}

output "kms_alias_name_prefixes" {
  value       = module.kms.kms_alias_name_prefixes
  description = "Prefixes used to generate the alias names."
}

output "kms_alias_target_key_ids" {
  value       = module.kms.kms_alias_target_key_ids
  description = "Identifiers of the keys associated with the aliases."
}

output "kms_alias_regions" {
  value       = module.kms.kms_alias_regions
  description = "Regions where the aliases are managed."
}

output "kms_grant_ids" {
  value       = module.kms.kms_grant_ids
  description = "Maps of grant identifiers."
}

output "kms_grant_tokens" {
  value       = module.kms.kms_grant_tokens
  description = "Maps of grant tokens."
  sensitive   = true
}

output "kms_grant_regions" {
  value       = module.kms.kms_grant_regions
  description = "Maps of grant regions."
}

output "kms_grant_key_ids" {
  value       = module.kms.kms_grant_key_ids
  description = "Maps of key IDs or ARNs to which the grants apply."
}

output "kms_grant_names" {
  value       = module.kms.kms_grant_names
  description = "Maps of grant names."
}

output "kms_grant_grantee_principals" {
  value       = module.kms.kms_grant_grantee_principals
  description = "Maps of grantee principals."
}

output "kms_grant_operations" {
  value       = module.kms.kms_grant_operations
  description = "Maps of operations permitted by the grants."
}

output "kms_grant_retiring_principals" {
  value       = module.kms.kms_grant_retiring_principals
  description = "Maps of retiring principals."
}

output "kms_grant_constraints" {
  value       = module.kms.kms_grant_constraints
  description = "Maps of encryption context constraints for the grants."
}

output "kms_replica_key_arns" {
  value       = module.kms.kms_replica_key_arns
  description = "The Amazon Resource Name (ARN) of the key."
}

output "kms_replica_key_ids" {
  value       = module.kms.kms_replica_key_ids
  description = "The globally unique identifier for the key."
}

output "kms_replica_key_regions" {
  value       = module.kms.kms_replica_key_regions
  description = "Region where the resource is managed."
}

output "kms_replica_key_policies" {
  value       = module.kms.kms_replica_key_policies
  description = "The key policy JSON document."
}

output "kms_replica_key_rotation_enabled" {
  value       = module.kms.kms_replica_key_rotation_enabled
  description = "Whether rotation is enabled for the related multi-Region keys."
}

output "kms_replica_key_specs" {
  value       = module.kms.kms_replica_key_specs
  description = "Type of key material."
}

output "kms_replica_key_usages" {
  value       = module.kms.kms_replica_key_usages
  description = "Permitted cryptographic use of the key."
}

output "kms_replica_key_enabled" {
  value       = module.kms.kms_replica_key_enabled
  description = "Whether the key is enabled."
}

output "kms_replica_key_tags_all" {
  value       = module.kms.kms_replica_key_tags_all
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
}

output "kms_replica_external_key_arns" {
  value       = module.kms.kms_replica_external_key_arns
  description = "The Amazon Resource Name (ARN) of the key."
}

output "kms_replica_external_key_ids" {
  value       = module.kms.kms_replica_external_key_ids
  description = "The globally unique identifier for the key."
}

output "kms_replica_external_key_regions" {
  value       = module.kms.kms_replica_external_key_regions
  description = "Region where the resource is managed."
}

output "kms_replica_external_key_policies" {
  value       = module.kms.kms_replica_external_key_policies
  description = "The key policy JSON document."
}

output "kms_replica_external_key_usages" {
  value       = module.kms.kms_replica_external_key_usages
  description = "Permitted cryptographic use of the key."
}

output "kms_replica_external_key_states" {
  value       = module.kms.kms_replica_external_key_states
  description = "The current state of the key."
}

output "kms_replica_external_key_expiration_models" {
  value       = module.kms.kms_replica_external_key_expiration_models
  description = "Whether the imported key material expires."
}

output "kms_replica_external_key_valid_to" {
  value       = module.kms.kms_replica_external_key_valid_to
  description = "Expiration time of the imported key material."
}

output "kms_replica_external_key_enabled" {
  value       = module.kms.kms_replica_external_key_enabled
  description = "Whether the key is enabled."
}

output "kms_replica_external_key_tags_all" {
  value       = module.kms.kms_replica_external_key_tags_all
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
}

output "kms_custom_key_store_ids" {
  value       = module.kms.kms_custom_key_store_ids
  description = "Maps of custom key store identifiers."
}

output "kms_existing_key_ids" {
  value       = module.kms.kms_existing_key_ids
  description = "The unique identifier of the resource."
}

output "kms_existing_key_arns" {
  value       = module.kms.kms_existing_key_arns
  description = "The Amazon Resource Name (ARN) of the key."
}

output "kms_existing_key_regions" {
  value       = module.kms.kms_existing_key_regions
  description = "Region where the resource is managed."
}

output "kms_existing_key_aws_account_ids" {
  value       = module.kms.kms_existing_key_aws_account_ids
  description = "AWS account that owns the key."
}

output "kms_existing_key_cloud_hsm_cluster_ids" {
  value       = module.kms.kms_existing_key_cloud_hsm_cluster_ids
  description = "CloudHSM cluster containing the key material."
}

output "kms_existing_key_creation_dates" {
  value       = module.kms.kms_existing_key_creation_dates
  description = "Creation date of the key."
}

output "kms_existing_key_custom_key_store_ids" {
  value       = module.kms.kms_existing_key_custom_key_store_ids
  description = "ID of the custom key store containing the key."
}

output "kms_existing_key_customer_master_key_specs" {
  value       = module.kms.kms_existing_key_customer_master_key_specs
  description = "Type of key material."
}

output "kms_existing_key_deletion_dates" {
  value       = module.kms.kms_existing_key_deletion_dates
  description = "Scheduled deletion date of the key."
}

output "kms_existing_key_descriptions" {
  value       = module.kms.kms_existing_key_descriptions
  description = "Description of the key."
}

output "kms_existing_key_enabled" {
  value       = module.kms.kms_existing_key_enabled
  description = "Whether the key is enabled."
}

output "kms_existing_key_expiration_models" {
  value       = module.kms.kms_existing_key_expiration_models
  description = "Whether the imported key material expires."
}

output "kms_existing_key_managers" {
  value       = module.kms.kms_existing_key_managers
  description = "Manager of the key."
}

output "kms_existing_key_specs" {
  value       = module.kms.kms_existing_key_specs
  description = "Type of key material."
}

output "kms_existing_key_states" {
  value       = module.kms.kms_existing_key_states
  description = "The current state of the key."
}

output "kms_existing_key_usages" {
  value       = module.kms.kms_existing_key_usages
  description = "Permitted cryptographic use of the key."
}

output "kms_existing_key_multi_region" {
  value       = module.kms.kms_existing_key_multi_region
  description = "Whether the key is a multi-Region key."
}

output "kms_existing_key_multi_region_configurations" {
  value       = module.kms.kms_existing_key_multi_region_configurations
  description = "Primary and replica configuration of the multi-Region key."
}

output "kms_existing_key_origins" {
  value       = module.kms.kms_existing_key_origins
  description = "Origin of the key material."
}

output "kms_existing_key_pending_deletion_window_in_days" {
  value       = module.kms.kms_existing_key_pending_deletion_window_in_days
  description = "Waiting period before deleting a multi-Region primary key."
}

output "kms_existing_key_valid_to" {
  value       = module.kms.kms_existing_key_valid_to
  description = "Expiration time of the imported key material."
}

output "kms_existing_key_xks_key_configurations" {
  value       = module.kms.kms_existing_key_xks_key_configurations
  description = "Configuration of the external key store key."
}

output "kms_public_keys" {
  value       = module.kms.kms_public_keys
  description = "Base64-encoded DER public keys."
}

output "kms_public_key_pems" {
  value       = module.kms.kms_public_key_pems
  description = "PEM-encoded public keys."
}

output "kms_public_key_arns" {
  value       = module.kms.kms_public_key_arns
  description = "ARNs of keys whose public keys were retrieved."
}

output "kms_public_key_encryption_algorithms" {
  value       = module.kms.kms_public_key_encryption_algorithms
  description = "Encryption algorithms supported by the keys."
}

output "kms_public_key_signing_algorithms" {
  value       = module.kms.kms_public_key_signing_algorithms
  description = "Signing algorithms supported by the keys."
}

output "iam_saml_provider_arns" {
  value       = module.iam.iam_saml_provider_arns
  description = "The ARN assigned by AWS for this provider."
}

output "iam_saml_provider_uuids" {
  value       = module.iam.iam_saml_provider_uuids
  description = "Unique identifier assigned to the SAML provider."
}

output "iam_saml_provider_tags_all" {
  value       = module.iam.iam_saml_provider_tags_all
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
}

output "iam_saml_provider_valid_untils" {
  value       = module.iam.iam_saml_provider_valid_untils
  description = "The expiration date and time for the SAML provider in RFC3339 format."
}

output "iam_service_linked_role_arns" {
  value       = module.iam.iam_service_linked_role_arns
  description = "Amazon Resource Name (ARN) specifying the role."
}

output "iam_service_linked_role_create_dates" {
  value       = module.iam.iam_service_linked_role_create_dates
  description = "Creation date of the IAM role."
}

output "iam_service_linked_role_ids" {
  value       = module.iam.iam_service_linked_role_ids
  description = "The Amazon Resource Name (ARN) of the role."
}

output "iam_service_linked_role_names" {
  value       = module.iam.iam_service_linked_role_names
  description = "Name of the role."
}

output "iam_service_linked_role_paths" {
  value       = module.iam.iam_service_linked_role_paths
  description = "Path of the role."
}

output "iam_service_linked_role_tags_all" {
  value       = module.iam.iam_service_linked_role_tags_all
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
}

output "iam_service_linked_role_unique_ids" {
  value       = module.iam.iam_service_linked_role_unique_ids
  description = "Stable and unique string identifying the role."
}
