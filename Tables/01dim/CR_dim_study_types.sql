drop table if exists `dim_study_types`;

CREATE TABLE `dim_study_types` (
  `pk_id_study_type` bigint(20) NOT NULL,
  `version` int(11) DEFAULT NULL,
  `date_from` datetime DEFAULT NULL,
  `date_to` datetime DEFAULT NULL,
  `id` bigint(20) DEFAULT NULL,
  `name` text,
  `description` text,
  `key_identifier` text,
  `narrative_text` text,
  `example` text,
  PRIMARY KEY (`pk_id_study_type`),
  KEY `idx_dim_study_types_lookup` (`id`) USING BTREE,
  KEY `idx_dim_study_types_tk` (`pk_id_study_type`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
