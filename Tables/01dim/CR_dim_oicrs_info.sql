drop table if exists  `dim_oicrs_info`;

CREATE TABLE `dim_oicrs_info`
(
  `pk_id_oicr_info` BIGINT NOT NULL 
, `version` INT
, `date_from` DATETIME
, `date_to` DATETIME
, `id_phase` BIGINT
, `oicr_id` BIGINT
, `id` BIGINT
, `oicr_title` TEXT
, `oicr_scope_comments` TEXT
, `oicr_outcome_impact_statement` TEXT
, `pdf` MEDIUMTEXT
,  PRIMARY KEY (`pk_id_oicr_info`),
  KEY `idx_dim_oicrs_info_lookup` (`oicr_id`, `id_phase`) USING BTREE,
  KEY `idx_dim_oicrs_info_lookup2` (`id`) USING BTREE,
  KEY `idx_dim_oicrs_tk` (`pk_id_oicr_info`) USING BTREE
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8
;
