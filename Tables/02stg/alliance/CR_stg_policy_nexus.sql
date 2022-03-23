drop table if exists `stg_policy_nexus`;

CREATE TABLE `stg_policy_nexus` (
  `policy_id` bigint(20) DEFAULT NULL,
  `id_phase` bigint(20) DEFAULT NULL,
  `nexus_id` bigint(20) DEFAULT NULL,
  `nexus_name` text,
  `pk_id_policy_info` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

