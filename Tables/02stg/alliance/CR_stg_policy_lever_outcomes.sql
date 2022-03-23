drop table if exists `stg_policy_lever_outcomes`;

CREATE TABLE `stg_policy_lever_outcomes` (
  `policy_id` bigint(20) DEFAULT NULL,
  `id_phase` bigint(20) DEFAULT NULL,
  `lever_outcome_id` bigint(20) DEFAULT NULL,
  `lever_outcome_name` text,
  `lever_id` bigint(20) DEFAULT NULL,
  `lever_name` text,
  `pk_id_policy_info` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

