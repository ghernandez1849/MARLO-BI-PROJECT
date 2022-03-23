drop table if exists `dim_milestones_info`;

CREATE TABLE `dim_milestones_info` (
  `pk_id_milestone_info` bigint(20) NOT NULL,
  `version` int(11) DEFAULT NULL,
  `date_from` datetime DEFAULT NULL,
  `date_to` datetime DEFAULT NULL,
  `id_phase` bigint(20) DEFAULT NULL,
  `milestone_composed_id` varchar(20) DEFAULT NULL,
  `milestone_id` varchar(50) DEFAULT NULL,
  `milestone_title` text ,
  `milestone_year` int(11) DEFAULT NULL,
  `outcome_id` bigint(20) DEFAULT NULL,
  `outcome_composed_id` varchar(20) DEFAULT NULL,
  `outcome_description` text ,
  `outcome_target_year` int(11) DEFAULT NULL,
  PRIMARY KEY (`pk_id_milestone_info`),
  KEY `idx_dim_milestone_info_lookup` (`id_phase`, `milestone_composed_id`, `outcome_composed_id`) USING BTREE,
  KEY `idx_dim_milestone_info_tk` (`pk_id_milestone_info`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
