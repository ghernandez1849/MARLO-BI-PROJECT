drop table if exists `stg_oicr_levers`;

CREATE TABLE `stg_oicr_levers` (
  `oicr_id` bigint(20) DEFAULT NULL,
  `id_phase` bigint(20) DEFAULT NULL,
  `lever_id` bigint(20) DEFAULT NULL,
  `lever_name` text,
  `pk_id_oicr_info` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


