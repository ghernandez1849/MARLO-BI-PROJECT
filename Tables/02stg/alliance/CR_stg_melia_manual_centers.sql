drop table if exists `stg_melia_manual_centers`;

CREATE TABLE `stg_melia_manual_centers` (
  `melia_id` bigint(20) DEFAULT NULL,
  `id_phase` bigint(20) DEFAULT NULL,
  `global_unit_id` bigint(20) DEFAULT NULL,
  `institution_id` bigint(20) DEFAULT NULL,
  `institution_name` text,
  `pk_id_melia_info` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
