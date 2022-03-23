Drop table if exists  `dim_policy_investment_types`;

CREATE TABLE `dim_policy_investment_types` (
  `pk_id_pol_inv_type` bigint(20) NOT NULL,
  `version` int(11) DEFAULT NULL,
  `date_from` datetime DEFAULT NULL,
  `date_to` datetime DEFAULT NULL,
  `id` bigint(20) DEFAULT NULL,
  `name` text,
  `definition` text,
  PRIMARY KEY (`pk_id_pol_inv_type`),
  KEY `idx_dim_policy_investment_types_lookup` (`id`) USING BTREE,
  KEY `idx_dim_policy_investment_types_tk` (`pk_id_pol_inv_type`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
