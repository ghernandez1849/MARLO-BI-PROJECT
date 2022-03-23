drop table if exists  `dim_policies_info`;

CREATE TABLE `dim_policies_info`
(
  `pk_id_policy_info` BIGINT NOT NULL 
, `version` INT
, `date_from` DATETIME
, `date_to` DATETIME
, `id_phase` BIGINT
, `policy_id` BIGINT
, `id` BIGINT
, `policy_title` TEXT
, `policy_description` TEXT
, `pdf_url` varchar(200)
,  PRIMARY KEY (`pk_id_policy_info`),
  KEY `idx_dim_policies_info_lookup` (`policy_id`, `id_phase`) USING BTREE,
  KEY `idx_dim_policies_info_lookup2` (`id`) USING BTREE,
  KEY `idx_dim_policies_tk` (`pk_id_policy_info`) USING BTREE
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8
;
