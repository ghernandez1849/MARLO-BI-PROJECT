drop table if exists `stg_innovation_levers`;

CREATE TABLE `stg_innovation_levers` (
  `innovation_id` bigint(20) DEFAULT NULL,
  `id_phase` bigint(20) DEFAULT NULL,
  `lever_id` bigint(20) DEFAULT NULL,
  `lever_name` text,
  `pk_id_innovation_info` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;