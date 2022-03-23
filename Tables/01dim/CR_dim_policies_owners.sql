drop table if exists `dim_policies_owners`;


CREATE TABLE `dim_policies_owners` (
  `pk_id_policy_owner` bigint(20) NOT NULL,
  `version` int(11) DEFAULT NULL,
  `date_from` datetime DEFAULT NULL,
  `date_to` datetime DEFAULT NULL,
  `id` bigint(20) DEFAULT NULL,
  `name` text,
  PRIMARY KEY (`pk_id_policy_owner`),
  KEY `idx_dim_policies_owners_lookup` (`id`) USING BTREE,
  KEY `idx_dim_policies_owners_tk` (`pk_id_policy_owner`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
