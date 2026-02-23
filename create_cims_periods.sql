-- ============================================================
-- Create cims_periods table with seed data
-- ============================================================

CREATE TABLE IF NOT EXISTS `cims_periods` (
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `period_name` VARCHAR(50) NOT NULL COMMENT 'Display name e.g. January 2025',
    `period_month` TINYINT UNSIGNED NOT NULL COMMENT 'Month number 1-12',
    `period_year` SMALLINT UNSIGNED NOT NULL COMMENT 'Year e.g. 2025',
    `sort_order` INT UNSIGNED NOT NULL DEFAULT 0,
    `is_active` TINYINT(1) NOT NULL DEFAULT 1,
    `is_deleted` TINYINT(1) NOT NULL DEFAULT 0,
    `created_at` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
    `updated_at` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`),
    INDEX `idx_period_year_month` (`period_year`, `period_month`),
    INDEX `idx_is_active` (`is_active`),
    INDEX `idx_sort_order` (`sort_order`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ============================================================
-- Seed data: January 2024 to December 2027
-- ============================================================

INSERT INTO `cims_periods` (`period_name`, `period_month`, `period_year`, `sort_order`, `is_active`, `is_deleted`) VALUES
-- 2024
('January 2024', 1, 2024, 1, 1, 0),
('February 2024', 2, 2024, 2, 1, 0),
('March 2024', 3, 2024, 3, 1, 0),
('April 2024', 4, 2024, 4, 1, 0),
('May 2024', 5, 2024, 5, 1, 0),
('June 2024', 6, 2024, 6, 1, 0),
('July 2024', 7, 2024, 7, 1, 0),
('August 2024', 8, 2024, 8, 1, 0),
('September 2024', 9, 2024, 9, 1, 0),
('October 2024', 10, 2024, 10, 1, 0),
('November 2024', 11, 2024, 11, 1, 0),
('December 2024', 12, 2024, 12, 1, 0),
-- 2025
('January 2025', 1, 2025, 13, 1, 0),
('February 2025', 2, 2025, 14, 1, 0),
('March 2025', 3, 2025, 15, 1, 0),
('April 2025', 4, 2025, 16, 1, 0),
('May 2025', 5, 2025, 17, 1, 0),
('June 2025', 6, 2025, 18, 1, 0),
('July 2025', 7, 2025, 19, 1, 0),
('August 2025', 8, 2025, 20, 1, 0),
('September 2025', 9, 2025, 21, 1, 0),
('October 2025', 10, 2025, 22, 1, 0),
('November 2025', 11, 2025, 23, 1, 0),
('December 2025', 12, 2025, 24, 1, 0),
-- 2026
('January 2026', 1, 2026, 25, 1, 0),
('February 2026', 2, 2026, 26, 1, 0),
('March 2026', 3, 2026, 27, 1, 0),
('April 2026', 4, 2026, 28, 1, 0),
('May 2026', 5, 2026, 29, 1, 0),
('June 2026', 6, 2026, 30, 1, 0),
('July 2026', 7, 2026, 31, 1, 0),
('August 2026', 8, 2026, 32, 1, 0),
('September 2026', 9, 2026, 33, 1, 0),
('October 2026', 10, 2026, 34, 1, 0),
('November 2026', 11, 2026, 35, 1, 0),
('December 2026', 12, 2026, 36, 1, 0),
-- 2027
('January 2027', 1, 2027, 37, 1, 0),
('February 2027', 2, 2027, 38, 1, 0),
('March 2027', 3, 2027, 39, 1, 0),
('April 2027', 4, 2027, 40, 1, 0),
('May 2027', 5, 2027, 41, 1, 0),
('June 2027', 6, 2027, 42, 1, 0),
('July 2027', 7, 2027, 43, 1, 0),
('August 2027', 8, 2027, 44, 1, 0),
('September 2027', 9, 2027, 45, 1, 0),
('October 2027', 10, 2027, 46, 1, 0),
('November 2027', 11, 2027, 47, 1, 0),
('December 2027', 12, 2027, 48, 1, 0);
