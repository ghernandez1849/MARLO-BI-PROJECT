drop table if exists `dim_regional_programs`;


CREATE TABLE `dim_regional_programs` (
  `pk_id_regional_program` bigint(20) NOT NULL,
  `version` int(11) DEFAULT NULL,
  `date_from` datetime DEFAULT NULL,
  `date_to` datetime DEFAULT NULL,
  `id` bigint(20) DEFAULT NULL,
  `regional_program_acronym` varchar(50) DEFAULT NULL,
  `regional_program_name` text,
  `crp_id` bigint(20) DEFAULT NULL,
  `regional_program_crp_acronym` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`pk_id_regional_program`),
  KEY `idx_dim_regional_programs_lookup` (`id`) USING BTREE,
  KEY `idx_dim_regional_programs_tk` (`pk_id_regional_program`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
