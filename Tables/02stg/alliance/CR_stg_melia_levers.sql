drop table if exists `stg_melia_levers`;

CREATE TABLE `stg_melia_levers` (
  `melia_id` bigint(20) DEFAULT NULL,
  `id_phase` bigint(20) DEFAULT NULL,
  `lever_id` bigint(20) DEFAULT NULL,
  `lever_name` text,
  `pk_id_melia_info` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;