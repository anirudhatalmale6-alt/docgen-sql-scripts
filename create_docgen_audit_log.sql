-- Create docgen_audit_log table
CREATE TABLE IF NOT EXISTS `docgen_audit_log` (
    `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
    `document_id` bigint(20) unsigned NOT NULL,
    `action` varchar(50) NOT NULL,
    `action_by` varchar(255) DEFAULT NULL,
    `action_by_id` bigint(20) unsigned DEFAULT NULL,
    `details` text DEFAULT NULL,
    `ip_address` varchar(45) DEFAULT NULL,
    `created_at` timestamp NULL DEFAULT NULL,
    `updated_at` timestamp NULL DEFAULT NULL,
    PRIMARY KEY (`id`),
    KEY `docgen_audit_log_document_id_index` (`document_id`),
    KEY `docgen_audit_log_action_index` (`action`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
