drop table if exists `dim_stage_processes`;

CREATE TABLE `dim_stage_processes` (
  `pk_id_stage_processes` bigint(20) NOT NULL,
  `version` int(11) DEFAULT NULL,
  `date_from` datetime DEFAULT NULL,
  `date_to` datetime DEFAULT NULL,
  `id` bigint(20) DEFAULT NULL,
  `name` text ,
  `description` text ,
  PRIMARY KEY (`pk_id_stage_processes`),
  KEY `idx_dim_stage_processes_lookup` (`id`) USING BTREE,
  KEY `idx_dim_stage_processes_tk` (`pk_id_stage_processes`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
