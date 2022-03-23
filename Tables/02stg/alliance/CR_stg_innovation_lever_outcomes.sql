drop table if exists `stg_innovation_lever_outcomes`;

CREATE TABLE `stg_innovation_lever_outcomes` (
  `innovation_id` bigint(20) DEFAULT NULL,
  `id_phase` bigint(20) DEFAULT NULL,
  `lever_outcome_id` bigint(20) DEFAULT NULL,
  `lever_outcome_name` text,
  `lever_id` bigint(20) DEFAULT NULL,
  `lever_name` text,
  `pk_id_innovation_info` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

