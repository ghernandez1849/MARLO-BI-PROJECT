drop table if exists  `dim_melias_info`;

CREATE TABLE `dim_melias_info`
(
  `pk_id_melia_info` BIGINT NOT NULL 
, `version` INT
, `date_from` DATETIME
, `date_to` DATETIME
, `id_phase` BIGINT
, `melia_id` BIGINT
, `id` BIGINT
, `melia_title` TEXT
, `melia_scope_comments` TEXT
, `melia_outcome_impact_statement` TEXT
, `melia_description` TEXT
, `commissioning_study` TEXT
, `marlo_link` TINYTEXT
, pdf_url TINYTEXT
,  PRIMARY KEY (`pk_id_melia_info`),
  KEY `idx_dim_melias_info_lookup` (`melia_id`) USING BTREE,
  KEY `idx_dim_melias_info_lookup2` (`id`) USING BTREE,
  KEY `idx_dim_melias_tk` (`pk_id_melia_info`) USING BTREE
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4
;
