drop table if exists `stg_oicr_nexus`;

CREATE TABLE `stg_oicr_nexus` (
  `oicr_id` bigint(20) DEFAULT NULL,
  `id_phase` bigint(20) DEFAULT NULL,
  `nexus_id` bigint(20) DEFAULT NULL,
  `nexus_name` text,
  `pk_id_oicr_info` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

