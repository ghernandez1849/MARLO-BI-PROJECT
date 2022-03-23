drop table if EXISTS marlobi.global_units

CREATE TABLE `marlobi.global_units` (
   `id` bigint(20) NOT NULL DEFAULT '0',
   `global_unit_type_id` bigint(20) NOT NULL,
   `smo_code` text,
   `name` text NOT NULL,
   `acronym` varchar(50) NOT NULL,
   `institution_id` bigint(20) DEFAULT NULL,
   `is_active` tinyint(1) NOT NULL,
   `created_by` bigint(20) DEFAULT NULL,
   `modified_by` bigint(20) DEFAULT NULL,
   `active_since` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
   `modification_justification` text,
   `is_marlo` tinyint(1) NOT NULL,
   `login` tinyint(1) NOT NULL
 ) ENGINE=InnoDB DEFAULT CHARSET=utf8